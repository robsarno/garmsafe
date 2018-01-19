<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Contatti;
use Mail;

class ContattiController extends Controller
{
    public function contattiPost(Request $request){
        $this->validate($request, [
            'nome' => 'required',
            'email' => 'required|email',
            'messaggio' => 'required'
        ]);
        Contatti::create(['nome'=>$request->nome, 'email'=>$request->email, 'messaggio'=>$request->messaggio, 'inviato' => '0']);

        return back()->with('success', 'Grazie per averci contattato! Ti risponderemo al più presto.');
    }
}
