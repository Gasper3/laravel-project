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

Route::get('/', 'PagesController@homepage');
// Route::get('/login', 'PagesController@login');

Route::resource('articles', 'ArticlesController');
Route::post('/articles/{article}/comments', 'ArticleCommentsController@store');

Route::get('/users/{user}/reset', 'PasswordController@passwordReset');
Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
