<?php

use App\Pagina;
use App\Titolo;

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
    $tab3=$pagina->tab3;
    foreach ($tab3 as $key => $value) {
        $articoli[$key]=$value->articoli;
    }
    return view('pages.home', [
        "pagina"=>$pagina,
        "_tab3"=>$tab3,
        "_articoli"=>$articoli,
        "nomeImg"=>"/image/hall.jpg"
    ]);
});
Route::get('/prodotti', function () {
    $pagina=Pagina::findOrFail(2);
    $tab3=$pagina->tab3;
    foreach ($tab3 as $key => $value) {
        $articoliTab3[$key]=$value->articoli;
    }
    $articoli=$pagina->articoli;
    return view('pages.prodotti', [
        "pagina"=>$pagina,
        "articoli"=>$articoli,
        "_articoli"=>$articoliTab3,
        "_tab3"=>$tab3,
        "nomeImg"=>"/image/hall.jpg"
    ]);
});
Route::get('/chi-siamo', function () {
    $pagina=Pagina::findOrFail(3);
    return view('pages.chi-siamo', [
        "pagina"=>$pagina
    ]);
});
Route::get('/territorio', function () {
    $pagina=Pagina::findOrFail(4);
    $articoli=$pagina->articoli;
    return view('pages.territorio', [
        "pagina"=>$pagina,
        "articoli"=>$articoli
    ]);
});
Route::get('/statuto', function () {
    $pagina=Pagina::findOrFail(5);
    $titoli=Titolo::all();
    return view('pages.statuto', [
        "pagina"=>$pagina,
        "titoli"=>$titoli
    ]);
});
Route::get('/contatti', function () {
    $pagina=Pagina::findOrFail(6);
    return view('pages.contatti', [
        "pagina"=>$pagina
    ]);
});
