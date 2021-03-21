<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        Event::listen(Saml2LoginEvent::class, function (Saml2LoginEvent $event) {
            dd($event);

            $messageId = $event->getSaml2Auth()->getLastMessageId();
            // Add your own code preventing reuse of a $messageId to stop replay attacks

            $user = $event->getSaml2User();

            $appUser = User::where('user_ref_id', $user->getUserId())->first();

            if (is_null($appUser)) {
                return 'user not found';
            }

            Auth::login($appUser);
        });

        Event::listen(Saml2LogoutEvent::class, function ($event) {
            Auth::logout();
            Session::save();
        });
    }
}
