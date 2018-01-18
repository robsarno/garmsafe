<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStatutoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('statuto', function (Blueprint $table) {
            $table->increments('id');
            $table->string("titolo", 80);
            $table->text("descrizione");
            $table->integer("id_titolo")->unsigned();
            $table->foreign("id_titolo")->references("id")->on("titolo")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('statuto');
    }
}
