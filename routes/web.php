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
    return view('pages.home', [
        "titolo_pagina" => "Home",
        "descrizione_pagina" => "descrizione home",
    ]);
});
Route::get('/prodotti', function () {
    return view('pages.prodotti', [
        "titolo_pagina" => "Prodotti",
        "descrizione_pagina" => "I nostri prodotti.",
    ]);
});
Route::get('/chi-siamo', function () {
    return view('pages.chi-siamo', [
        "titolo_pagina" => "Chi Siamo",
        "descrizione_pagina" => "Chi siamo noi????",
    ]);
});
Route::get('/territorio', function () {
    $articolo=[["titolo"=>"PROVA", "sottotitolo"=>"saljkdbgkj", "contenuto"=>"belloziao", "immagine"=>null, "sx"=>true],["titolo"=>"PROVA", "sottotitolo"=>"saljkdbgkj", "contenuto"=>"belloziao", "immagine"=>null, "sx"=>false]];
    return view('pages.territorio', [
        "titolo_pagina" => "Territorio",
        "descrizione_pagina" => "descrizione territorio",
        "articoli" => $articolo
    ]);
});
Route::get('/statuto', function () {
    return view('pages.statuto', [
        "titolo_pagina" => "Statuto",
        "descrizione_pagina" => "descr statuto",
    ]);
});
Route::get('/contatti', function () {
    return view('pages.contatti', [
        "titolo_pagina" => "Contatti",
        "descrizione_pagina" => "Contattaci",
    ]);
});
