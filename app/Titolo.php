<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Titolo extends Model
{
    protected $table="titolo";
    public function articoli(){
        return $this->belongsToMany(Art_statuto::class,"titolo_statuto","id_titolo","id_statuto");
    }
}
