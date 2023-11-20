<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        User::create([
            'name' =>  'Winton',
            'username' =>  'Winton Almundarisna',
            'email' =>  'winton@gmail.com',
            'password' =>  bcrypt('password'),
        ]);
        // User::create([
            //     'name' =>  'Sandi',
            //     'email' =>  'sandi@gmail.com',
            // 'username' =>  'sandi',
        //     'password' =>  bcrypt(12345),
        // ]);
        
        
        User::factory(5)->create();

        Category::create([
            'title' => 'Programming',
            'slug' => 'programming'
        ]);
        Category::create([
            'title' => 'Web Design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'title' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        // 'title' => 'Judul Postingan Pertama',
        // 'category_id' => 1,
        //     'user_id' =>  1,
        //     'slug' => 'judul-postingan-pertama',
        //     'excerpt' => 'Ini adalah excerpt postingan pertama',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium et minima tempora facilis fugiat quo, fuga perferendis quis iure itaque.</p><p>Lorem ipsum dolor sit amet.</p>'
        // ]);
        // Post::create([
        //     'title' => 'Judul Postingan Kedua',
        //     'category_id' => 1,
        //     'user_id' =>  1,
        //     'slug' => 'judul-postingan-kedua',
        //     'excerpt' => 'Ini adalah excerpt postingan kedua',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium et minima tempora facilis fugiat quo, fuga perferendis quis iure itaque.</p><p>Lorem ipsum dolor sit amet.</p>'
        // ]);
        // Post::create([
        //     'title' => 'Judul Postingan Ketiga',
        //     'category_id' => 3,
        //     'user_id' =>  2,
        //     'slug' => 'judul-postingan-ketiga',
        //     'excerpt' => 'Ini adalah excerpt postingan ketiga',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium et minima tempora facilis fugiat quo, fuga perferendis quis iure itaque.</p><p>Lorem ipsum dolor sit amet.</p>'
        // ]);
    }
}