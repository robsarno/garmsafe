<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tab3 extends Model
{
    protected $table="tab3";
    public function articoli(){

        return $this->belongsToMany(Articolo::class,"tab3_articoli","id_tab3","id_articolo")->withPivot("img_hover","link");
    }
}