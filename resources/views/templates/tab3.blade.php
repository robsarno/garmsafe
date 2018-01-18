<div class="container marketing ">
	@if ($tab3->titolo!=null)
	<div class="text-center">
			<h1>{{$tab3->titolo}}</h1>
			<p class="lead">{{$tab3->sottotitolo}}</p>
			
		  </div>
	@endif
		
	<div class="row link-tab3">
		@foreach ($articoliTab3 as $articolo)
			<div class="col-lg-4">

				@if ($articolo->pivot->link!=null)
				<a href="{{$articolo->pivot->link}}" class="imgPadre" id="{{$loop->iteration}}">
						@if ($articolo->img)
							<img class="imgChange" src="{{ asset('img/tab3/'.$articolo->img) }}" alt="Generic placeholder image" width="200" height="200">
						@else
							<img class="" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="200" height="200">
						@endif
						<h2 class="titolo">{{ $articolo->titolo }}</h2>
						<p>{{ $articolo->descrizione }}</p>
					</a>
				@else
				@if ($articolo->img)
				<img class="imgChange" src="{{ asset('img/tab3/'.$articolo->img) }}" alt="Generic placeholder image" width="200" height="200">
			@else
				<img class="" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="200" height="200">
			@endif
			<h2 class="titolo">{{ $articolo->titolo }}</h2>
			<p>{{ $articolo->descrizione }}</p>
				@endif
				
			</div>
		@endforeach
	</div>
</div>