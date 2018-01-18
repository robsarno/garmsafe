@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-generica')
@endsection
@section('sez-contenuto')
    <div class="container marketing">
        <hr class="featurette-divider">
        @include('templates.articolo-foto')
    </div>
@endsection