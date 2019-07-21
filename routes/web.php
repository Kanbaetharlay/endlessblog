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


/* ================== Homepage + Admin Routes ================== */
Route::get('/', 'FrontController@index');
Route::get('/showAllTutorials/{subcat_id}','FrontController@showAllTutorials');
Route::get('/detailTutorial/{id}','FrontController@detailTutorial');
Route::get('/topic/{id}','FrontController@topic');
require __DIR__.'/admin_routes.php';
