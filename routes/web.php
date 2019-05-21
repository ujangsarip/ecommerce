<?php

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
    return view('welcome');
});

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home')->middleware('verified');

Route::get('/images/{filename}');

Route::name('admin.')->group(function() {
	Route::group(['prefix' => 'admin'], function() {
		Route::resource('products', 'Admin\ProductController');
	});
});

Route::get('public', 'PublicController@index');
Route::get('show/{id}', 'PublicController@show');


