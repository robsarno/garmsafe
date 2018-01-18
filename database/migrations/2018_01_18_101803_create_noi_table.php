<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNoiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('noi', function (Blueprint $table) {
            $table->string("nome", 50);
            $table->string("cognome", 50);
            $table->string("data_nascita", 5);
            $table->string("ruolo", 50);
            $table->string("img", 100);
            $table->primary(["nome", "cognome"]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('noi');
    }
}
