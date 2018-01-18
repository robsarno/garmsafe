<div class="container-fluid sfondo-grigio">
	<div class="container marketing ">
		<div class="row link-tab3">
			@foreach ($articoli as $articolo)
				<div class="col-lg-4">
					<a href="{{$articolo->pivot->link}}" class="imgPadre" id="{{$loop->iteration}}">
						@if ($articolo->img)
							<img class="imgChange" src="{{ asset('img/tab3/'.$articolo->img) }}" alt="Generic placeholder image" width="200" height="200">
						@else
							<img class="" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="200" height="200">
						@endif
						<h2 class="titolo">{{ $articolo->titolo }}</h2>
						<p>{{ $articolo->descrizione }}</p>
					</a>
				</div>
			@endforeach
		</div>
	</div>
</div>