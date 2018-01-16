<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticoliPagineTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articoli_pagine', function (Blueprint $table) {
            $table->integer("id_pagina")->unsigned();
            $table->integer("id_articolo")->unsigned();
            $table->primary(["id_pagina", "id_articolo"]);
            $table->foreign("id_pagina")->references("id")->on("pagine")->onDelete("cascade");
            $table->foreign("id_articolo")->references("id")->on("articoli")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articoli_pagine');
    }
}
