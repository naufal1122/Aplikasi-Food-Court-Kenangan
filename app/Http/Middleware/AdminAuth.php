<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class AdminAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // 
        if (Auth::user() &&  !Auth::user()->hasRole('user') && Auth::user()->type=="1") {
            return $next($request);
        }
        if (Auth::user()->type=="4") {
            return $next($request);
        }
        Auth::logout();
        return redirect('admin');
    }
}
