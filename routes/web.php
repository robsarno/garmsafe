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
    return view('layouts.page', [
        "titolo" => "Home Page"
    ]);
});
Route::get('/territorio', function () {
    return view('pages.territorio', [
        "titolo" => "Territorio",
        "titolo_pagina" => "Territorio"
    ]);
});
