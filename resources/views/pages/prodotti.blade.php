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
    </div>
@endsection