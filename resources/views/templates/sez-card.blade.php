<div class="row sfondo-bianco">
    @foreach ($utenti as $utente)
    <div class="col-sm-4">
    <div class="card text-center">
        <div style="width:200px;height:200px;overflow:hidden; border-radius: 70%;margin:auto;margin-top:20px">
               

                <img class="card-img-top" src="{{ asset('img/persone/'.$utente->img)}}" alt="Card image cap" style="max-width: 100%;height: auto;">
        </div>

            <div class="card-body">
              <h5 class="card-title">{{$utente->nome}} {{$utente->cognome}}</h5>
              <p class="card-text">{{$utente->ruolo}}</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">Anno nascita: {{$utente->data_nascita}}</small>
            </div>
          </div>
        </div>
       
    @endforeach
    
    {{$utenti->links()}}
      </div>
      