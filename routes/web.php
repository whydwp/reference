<?php

use Illuminate\Support\Facades\Route;

Route::middleware('example-saml-auth')->group(function () {
    Route::name('logout')->post('logout', '\Aacotroneo\Saml2\Http\Controllers\Saml2Controller@logout');


    // Route::namespace('Auth')->group(function () {
    //     Route::post('login', 'LoginController@authenticate')->name('login');
    //     Route::get('logout', 'LoginController@logout')->name('logout');
    //     // Route::name('logout')->post('logout', '\Aacotroneo\Saml2\Http\Controllers\Saml2Controller@logout');
    // });

    Route::group(['middleware' => 'App\Http\Middleware\Authenticate'], function () {
        Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
        Route::get('/dashboardUser', 'DashboardUserController@index')->name('dashboardUser');
        Route::get('/dashboardShow-{id}', 'DashboardUserController@show')->name('dashboardShow');

        //Route::get('/dashboardUser-{id}', 'dashboardUserController@show')->name('dashboard');
        Route::get('file/download/{file}', 'kumpulanEbookController@download')->name('download');
        Route::resource('/user', 'UserController');
        Route::get('/profil', 'ProfilController@index')->name('profil.index');
        Route::post('/update-profil/{id}', 'ProfilController@update')->name('update.profil');
        Route::match(['get', 'post'], '/edit/{id}', 'KategoriController@edit');
        // Route::match(['get', 'post'], '/edit/{id}', 'GambarController@edit');
        Route::resource('/document', 'KelolaDocumentController');
        Route::resource('/doc', 'DocumentController');
        Route::resource('/kategori', 'KategoriController');
        Route::resource('/like', 'MyLikeController');
        Route::resource('/reference', 'MyReferenceController');
        Route::resource('/forum', 'ForumController');
        Route::resource('/ebook', 'EbookController');
        Route::resource('/adminEbook', 'AdminEbookController');
        Route::resource('/kumpulanEbook', 'kumpulanEbookController');
        Route::post('/documen/{id}', 'MyReferenceController@komentar');
        Route::get('report', 'KelolaDocumentController@report')->name('report');
        Route::get('reportAdmin', 'DocumentController@report')->name('reportAdmin');
        Route::get('reportcomen', 'ForumController@reportc')->name('reportcomen');
        Route::get('export', 'UserController@export')->name('export');
        Route::get('kategoriexport', 'KategoriController@reportkategori')->name('kategoriexport');
        Route::post('import', 'UserController@importexel')->name('import');
        Route::post('importdokumen', 'UserController@importexel')->name('importdokumen');
        Route::post('importkategori', 'KategoriController@import')->name('importkategori');
        Route::post('/likedislike', 'KategoriController@likedislike')->name('likedislike');
        Route::post('/viewadd', 'MyReferenceController@addview')->name('viewadd');
        Route::post('/viewaddd', 'MyLikeController@adddview')->name('viewaddd');
        Route::post('/filter', 'KategoriController@filter')->name('filter');
        Route::get('/preview-{id}', 'PreviewController@index')->name('preview');
        Route::get('/previewdoc-{id}', 'PreviewdocController@index')->name('previewdoc');
        Route::post('/getjudul', 'MyReferenceController@getjudul');
        Route::post('/reference/{id}', 'MyReferenceController@insertData')->name('reference.insertData');
        Route::resource('/gambar', 'GambarController');
        Route::get('locale/{locale}', function ($locale) {
            \Session::put('locale', $locale);
            return redirect()->back();
        });
    });
    Route::view('loginn', 'general.loginn');
    // Route::get('/', function () {
    //     return redirect('login');
    // });
});

// Route::get('/', function () {
//     return view('general.login');
// })->name('home');


Route::get('/', function () {
    return redirect('ReferenceLearning');
})->name('home');

Route::view('ReferenceLearning', 'general.login');

Route::get('/ReferenceLearning', 'LoginController@index')->name('general.login');
