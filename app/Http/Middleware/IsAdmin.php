<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // Kalo belom login maka gaboleh dan Kalo bukan Winton maka gaboleh
        if (auth()->guest() || !auth()->user()->is_admin) {
            abort(403);
        }
        // Bisa juga !auth()->check(), tapi dia kalo udah login baru true, kalo guest kebalikannya
        
        return $next($request);
    }
}
