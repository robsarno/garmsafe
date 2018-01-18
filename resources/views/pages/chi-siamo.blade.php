@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-generica')
@endsection
@section('sez-contenuto')
<div class="container">
        @include('templates.sez-card')
</div>

@endsection