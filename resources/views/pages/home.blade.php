@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-home')
@endsection
@section('sez-contenuto')
    <div class="container-fluid sfondo-grigio">
        @php
            $tab3=$_tab3[0];
            $articoli=$_articoli[0];
        @endphp
        @include("templates.tab3")
    </div>
    @include('templates.sez-img')
    <div class="container-fluid sfondo-arancione">
        @php
            $tab3=$_tab3[1];
            $articoli=$_articoli[1];
        @endphp
        @include("templates.tab3")
    </div>
@endsection
