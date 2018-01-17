<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pagina extends Model
{
    protected $table="pagine";
    public function tab3(){
        return $this->hasMany(Tab3::class, "id_pagina");
    }
}
