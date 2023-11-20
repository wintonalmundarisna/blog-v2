<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    // public function index(Category $category) {
    //     return view('posts', [
    //         'title' => "Post By Category : $category->title",
    //         'posts' => $category->posts->load('category', 'author'),
    //         //Ini, posts dapet dari sini, isinya semua data
    //         'active' => 'Categories'
    //     ]);
    // }
}
