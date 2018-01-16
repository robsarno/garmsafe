<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTab3Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tab3', function (Blueprint $table) {
            $table->increments('id');
            $table->string("titolo", 50);
            $table->string("sottotitolo", 255);
            $table->integer("id_pagina")->unsigned();
            $table->foreign("id_pagina")->references("id")->on("pagine")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tab3');
    }
}
