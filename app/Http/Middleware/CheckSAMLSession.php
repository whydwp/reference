<?php


namespace App\Http\Middleware;


use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;

class CheckSAMLSession
{
    protected $auth;

    public function __construct(\OneLogin\Saml2\Auth $auth)
    {
        $this->auth = $auth;
        
    }

    public function handle($request, \Closure $next, $guard = null)
    {
        // dd($this->auth);
        if (Auth::guard($guard)->guest()) {
            if ($request->ajax()) {
                
                return response('Unauthorized.', 401); // Or, return a response that causes client side js to redirect to '/routesPrefix/myIdp1/login'
            } else {
                //dd($this->auth);
                return $this->auth->login(URL::full());
            }
        }

        return $next($request);
    }
}