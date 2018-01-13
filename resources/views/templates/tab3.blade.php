<div class="row featurette">
	<h2 class="featurette-heading">
        {{ $titolo }}
		<span class="text-muted">{{ $sottotitolo }}</span>
    </h2>
    @for ($i = 0; $i< 3; $i++) 
    <div class="col-lg-4">
		<?php $src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==";?>
		<img class="rounded-circle" src="<?php echo($articolo->immagine!=null?$articolo->immagine:$src)?>" alt="Generic placeholder image"
		 width="140" height="140">
		<h2>{{ $articolo->titolo }}</h2>
		<p>{{ $articolo->descrizione }}</p>
    </div>
@endfor
</div>