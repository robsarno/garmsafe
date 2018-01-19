@extends('layouts.page')
@section('copertina')
    @include('templates.copertine.copertina-generica')
@endsection
@section('sez-contenuto')
<div class="container">
    <hr class="featurette-divider">
    <h2 class="featurette-heading" style="text-align:center">Il nostro team</h2>
    @include('templates.sez-card')
</div>

@endsection