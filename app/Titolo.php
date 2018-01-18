<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Titolo extends Model
{
    protected $table="titolo";
    public function articoli(){
        return $this->hasMany(Art_statuto::class,"id_titolo");
    }
}
