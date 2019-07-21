<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*====== API =======*/
Route::get('/itcategories', 'CommonAPIController@itcategories');
Route::get('/itesubcategories/{category}', 'CommonAPIController@itesubcategories');
Route::get('/itnews', 'MobileController@itnews');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
