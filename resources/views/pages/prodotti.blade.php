@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-generica')
@endsection
@section('sez-contenuto')
<div class="container-fluid sfondo-bianco">
        @php
        $tab3=$_tab3[0];
        $articoliTab3=$_articoli[0];
    @endphp
    @include("templates.tab3")
</div>
@include('templates.sez-img')
    <div class="container marketing">
        <hr class="featurette-divider">
        @include('templates.articolo-foto')
        <h2 class="pb-4">Info tecniche</h2>
        <a href="http://garmsafe.altervista.org/Documenti/" target="_blank"><button class="btn btn-info">Documentazione</button></a>
        <a href="https://github.com/GarmSafe/BlindStrip" target="_blank"><button class="btn btn-info">Codice hardware</button></a>
        <a href="https://github.com/GarmSafe/sito_web" target="_blank"><button class="btn btn-info">Codice software</button></a>
        <hr class="featurette-divider">
    </div>
@endsection