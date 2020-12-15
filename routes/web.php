<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('general.loginn');
})->name('home');

Route::namespace('Auth')->group(function () {
    Route::post('login', 'LoginController@authenticate')->name('login');
    Route::get('logout', 'LoginController@logout')->name('logout');
});
// Route::put('/update/{id}', 'ProfilController@update');

Route::group(['middleware' => 'App\Http\Middleware\Authenticate'], function () {
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::resource('/kelolaUser', 'KelolaUserController');
    Route::resource('/profil', 'ProfilController');
    // Route::get('/kelola_document', 'KelolaDocumentController@index')->name('kelola_document');
    Route::resource('/document', 'KelolaDocumentController');
    Route::resource('/like', 'MyLikeController');
    Route::resource('/reference', 'MyReferenceController');
    // Route::get('/reference/index/{slug}', 'MyReferenceController@index')
    // ->name('index');

    Route::get('/kategori', function () {
        return view('general2.kategori');
    })->name('kategori');
});
