<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contatti extends Model
{
    protected $table="messaggi";

    protected $fillable = ['nome','email','messaggio','inviato'];
}
