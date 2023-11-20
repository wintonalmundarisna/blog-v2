<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function posts() {
        //Posts, karna 1 category punya banyak (postingan)
        //Kalo hasMany, maka nama functionny harus jamak
        return $this->hasMany(Post::class);
    }
}
