@extends("masters.master")
@section('body')
    @yield('copertina')
    @yield('sez-contenuto')
@endsection

@section("titolo")
    {{$titolo_pagina}}
@endsection