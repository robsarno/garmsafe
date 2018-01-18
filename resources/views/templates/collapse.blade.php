<div class="container">
  <hr class="featurette-divider">
  @php
      $i=0;
  @endphp
  @foreach ($titoli as $titolo)
    <h2 class="featurette-heading">{{ $titolo->titolo }}</h2>
    <h4 class="featurette-heading text-muted">{{ $titolo->sottotitolo }}</h4>
    @php
      $articoli=$titolo->articoli;
    @endphp
    <div id="accordion" role="tablist">
      @foreach ($articoli as $articolo)
        <div class="card">
          <div class="card-header" role="tab" id="heading{{ $i }}">
            <h5 class="mb-0">
              <a class="collapsed" data-toggle="collapse" href="#collapse{{ $i }}" role="button" aria-expanded="false" aria-controls="collapse{{ $i }}">
                {{ $articolo->titolo }}
              </a>
            </h5>
          </div>
          <div id="collapse{{ $i }}" class="collapse" role="tabpanel" aria-labelledby="heading{{ $i }}" data-parent="#accordion">
            <div class="card-body">
              {{ $articolo->descrizione }}
            </div>
          </div>
        </div>
        @php
            $i++;
        @endphp
      @endforeach
    </div>
    <hr class="featurette-divider">
  @endforeach
</div>