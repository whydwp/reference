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

Route::group(['middleware' => 'App\Http\Middleware\Authenticate'], function () {
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    //Route::get('/kelola-user', 'KelolaUserController@index')->name('kelola-user');
    Route::resource('/user', 'UserController');
    Route::get('/profil', 'ProfilController@index')->name('profil.index');
    Route::post('/update-profil/{id}', 'ProfilController@update')->name('update.profil');
    Route::match(['get','post'],'/edit/{id}', 'KategoriController@edit');
    
    // Route::get('/kelola_document', 'KelolaDocumentController@index')->name('kelola_document');
    Route::resource('/document', 'KelolaDocumentController');
    Route::resource('/kategori', 'KategoriController');
    Route::resource('/like', 'MyLikeController');
    Route::resource('/reference', 'MyReferenceController');
    Route::resource('/forum', 'ForumController');
    // Route::get('/reference/index/{slug}', 'MyReferenceController@index')
    // ->name('index');

   
    Route::get('report', 'KelolaDocumentController@report')->name('report');
    Route::get('export', 'UserController@export')->name('export');
    Route::get('kategoriexport', 'KategoriController@reportkategori')->name('kategoriexport');
    Route::post('import', 'UserController@importexel')->name('import');
    Route::post('importdokumen', 'UserController@importexel')->name('importdokumen');
    Route::post('importkategori', 'KategoriController@import')->name('importkategori');
  

    // Route::get('/kategori-{id}', 'KategoriController@index')->name('kategori');

    Route::post('/likedislike', 'KategoriController@likedislike')->name('likedislike');
    Route::post('/viewadd', 'MyReferenceController@addview')->name('viewadd');

    Route::post('/filter', 'KategoriController@filter')->name('filter');

    Route::get('/preview-{id}', 'PreviewController@index')->name('preview');

   

});
