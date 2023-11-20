<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{

    use HasFactory, Sluggable;
    // Lihat di notes, Sluggable digunakan untuk file create
    protected $guarded = ['id'];
    protected $with = ['author', 'category'];
    // With diatas buat menghindari N+, biar ga lazy loading, tapi jadi eager loading, buat 200 Query jadi hanya 2 query
    // Ambil author dan categoory karna di dalam Models post, yang ada hanya mereka berdua

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function ($query, $search) {
            return $query->where('title', 'like', '%' . $search . '%')->orWhere('body', 'like', '%' . $search . '%');
        });

        $query->when($filters['category'] ?? false, function ($query, $category) {
            return $query->whereHas('category', function ($query) use ($category) {
                $query->where('slug', $category);
            });
        });

        $query->when($filters['author'] ?? false, fn ($query, $author) =>
        $query->whereHas('author',fn ($query) =>
        $query->where('username', $author)
        ));
    }

    public function category()
    {
        // Category itu singular(1 postingan hanya memiliki 1 (category))
        // Kalo belongsto, berarti nama functionnya harus single/singular
        return $this->belongsTo(Category::class);
    }


    public function author()
    { //Author diubah dari user, tapi ngirimin yang dibutuhin dibawah
        return $this->belongsTo(User::class, 'user_id');
    }


    // ! Dibuat supaya otomatis ngambil slug untuk digunakan di web, tentang dashboard, buat function show
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
