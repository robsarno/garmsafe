<?php

use App\Pagina;

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
    $pagina=Pagina::findOrFail(1);
    $tab3=$pagina->tab3->first();
    $articoli=$tab3->articoli;
    return view('pages.home', [
        "pagina"=>$pagina,
        "tab3"=>$tab3,
        "articoli"=>$articoli
    ]);
});
Route::get('/prodotti', function () {
    $pagina=Pagina::findOrFail(2);
    return view('pages.prodotti', [
        "pagina"=>$pagina
    ]);
});
Route::get('/chi-siamo', function () {
    $pagina=Pagina::findOrFail(2);
    return view('pages.chi-siamo', [
        "pagina"=>$pagina
    ]);
});
Route::get('/territorio', function () {
    $pagina=Pagina::findOrFail(2);
    return view('pages.territorio', [
        "pagina"=>$pagina
    ]);
});
Route::get('/statuto', function () {
    $pagina=Pagina::findOrFail(2);
    return view('pages.statuto', [
        "pagina"=>$pagina
    ]);
});
Route::get('/contatti', function () {
    $pagina=Pagina::findOrFail(2);
    return view('pages.contatti', [
        "pagina"=>$pagina
    ]);
});
