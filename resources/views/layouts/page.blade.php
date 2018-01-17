@extends("masters.master")
@section('body')
    @yield('copertina')
    @yield('sez-contenuto')
@endsection

@section("titolo")
    {{$pagina->titolo}}
@endsection