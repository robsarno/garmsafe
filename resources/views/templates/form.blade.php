<div class="container">
    <hr class="featurette-divider">
    <h2 class="featurette-heading" style="text-align:center">Il tuo parere conta!</h2>
    <h4 class="featurette-heading text-muted pb-5" style="text-align:center">Lascia un messaggio e ti risponderemo a breve!</h4>
    @if(Session::has('success'))
        <div class="alert alert-success">
            {{ Session::get('success') }}
        </div>
    @endif
    {!! Form::open(['route'=>'contatti.salva']) !!}
    <div class="form-group {{ $errors->has('nome') ? 'has-error' : '' }}">
        {!! Form::label('Nome:') !!}
        {!! Form::text('nome', old('nome'), ['class'=>'form-control', 'placeholder'=>'Inserisci il tuo nome']) !!}
        <span class="text-danger">{{ $errors->first('name') }}</span>
    </div>
             
    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
        {!! Form::label('Email:') !!}
        {!! Form::text('email', old('email'), ['class'=>'form-control', 'placeholder'=>'Inserisci la tua email']) !!}
        <span class="text-danger">{{ $errors->first('email') }}</span>
    </div>
            
    <div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
        {!! Form::label('Messaggio:') !!}
        {!! Form::textarea('messaggio', old('messaggio'), ['class'=>'form-control', 'placeholder'=>'Cosa vuoi chiederci?']) !!}
        <span class="text-danger">{{ $errors->first('messaggio') }}</span>
    </div>
    <button type="submit" class="btn btn-primary">Invia</button>
    {!! Form::close() !!}
    <hr class="featurette-divider">
</div>