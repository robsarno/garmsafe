@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-generica')
@endsection
@section('sez-contenuto')
    <div class="container sfondo-bianco">
        <h1 style="text-align:center">Il nostro team</h2>
        @include('templates.sez-card')
    </div>
@endsection