<?php

namespace App\Providers;

use Aacotroneo\Saml2\Saml2Auth;
use Illuminate\Support\ServiceProvider;
use OneLogin\Saml2\Auth;
use Illuminate\Pagination\Paginator;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->registerOneLoginAuth();
    }

    protected function registerOneLoginAuth()
    {
        $this->app->singleton(Auth::class, function ($app) {
           
            return Saml2Auth::loadOneLoginAuthFromIpdConfig(config('saml2_settings.settings'));
            
        });

        $this->app->singleton(Saml2Auth::class, function ($app) {
            $auth = Saml2Auth::loadOneLoginAuthFromIpdConfig(config('saml2_settings.settings'));
            return new Saml2Auth($auth);
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();
    }
}
