<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;

Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
        'active' => 'Home'
    ]);
});

Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        'name' => 'Winton Almundarisna',
        'email' => 'wintonalmundarisna@gmail.com',
        'image' => 'winton.jpg',
        'active' => 'About'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function () {
    return view('categories', [
        'title' => "Post By Categories",
        'categories' => Category::all(),
        'active' => 'Categories'
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
// middleware ada di kernel http/app, dia hanya boleh diakses user yang belum di autentikasi, yang udah gak boleh akses lagi
// Defaultnya ke hal home, cari tau di RouteServiceProvider
// ! name(login) penanda bahwa route ini adalah tempat redirect non auth, lihat (app\Http\Middleware\Authenticate.php)
// ! lihat juga catatan backend

Route::post('/login', [LoginController::class, 'authenticate']);

Route::post('/logout', [LoginController::class, 'logout']);


Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);


Route::get('/dashboard', function() {
    return view('dashboard.index');
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');
// except adalah kecuali, show ga akan dipake
// Middleware buatan sendiri, lihat notes
// Jangan pake middleware kalo ada ketentuan admin bisa sedangkan user engga, middleware ga fleksibel soalnya
// Pake aja gates, lihat notes 