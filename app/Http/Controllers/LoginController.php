<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index() {
        return view('login.index', [
            'title' => 'Login',
            'active' => 'Login'
        ]);
    }

    public function authenticate(Request $request) {
        $credentials = $request->validate([
            'email' => 'required|email',
            // Gapake dns emailnya, biar selain .com bisa
            'password' => 'required'
        ]);

        if(Auth::attempt($credentials)) {
            $request->session()->regenerate();
            // Menghindari kejahatan session fixation (Masuk pake session dengan session yang sama), makanya harus regenerate

            return redirect()->intended('/dashboard');
            // Intended agar setelah lolos dari atas, akan diarahkan ke middleware
        }
        
        // Jangan beritahu kesalahannya dimana, misal, email tidak terdaftar, biar penjahat ga tau apa yang salah
        return back()->with('loginError', 'Login failed!');
        // Jangan withError, nanti masuk error yang di index

        // ! Jangan lupa ditaro di indexnya
    }
    

    public function logout() {

        Auth::logout();
        request()->session()->invalidate();        
        request()->session()->regenerateToken();
        return redirect('/');        

    }
}
