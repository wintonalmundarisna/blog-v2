<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            'title' => 'Judul Post Pertama',
            'slug' => 'judul-post-pertama',
            'author' => 'Winton Almundarisna',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero deleniti voluptatum, molestiae id delectus ex voluptatem! Aspernatur repellendus quod numquam, vitae fuga corrupti eveniet adipisci, veniam labore doloremque quia minima consequatur et vero sint debitis dolorem soluta, in saepe hic corporis enim doloribus itaque! Assumenda excepturi magni dolor doloribus ipsa error numquam repudiandae, aspernatur cum nesciunt eum dolorem unde aperiam totam omnis illo corrupti quaerat et beatae. Ipsum suscipit totam maiores praesentium animi. Obcaecati laudantium, optio voluptatum numquam nisi rem.',
        ],
        [
            'title' => 'Judul Post Kedua',
            'slug' => 'judul-post-kedua',
            'author' => 'Steve Jackson',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias earum sapiente quibusdam iste deleniti aliquid, aut cum veritatis. Laborum, officia suscipit quasi illum quae dolorum hic distinctio voluptas expedita nulla perspiciatis eos molestias sunt rem ipsum, nostrum exercitationem vitae? Impedit reprehenderit ullam harum, autem rem consequuntur odio, optio sint quam possimus maiores voluptas eveniet repellendus eius earum minus blanditiis natus rerum aspernatur tenetur. Sint sed iste officia reprehenderit nemo hic consectetur dolorem ipsum animi adipisci quaerat id quam placeat eaque inventore commodi blanditiis ex, eos fugiat. Aliquid veniam non ratione, eligendi, tenetur cum harum nostrum praesentium iste facilis consequatur vitae.',
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
        // Jadi Collection
    }

    public static function find($slug)
    {

        $posts = static::all();
        // Ambil func collectionnya
        return $posts->firstWhere('slug', $slug);
    }
}
