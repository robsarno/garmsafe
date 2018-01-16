<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTab3ArticoliTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tab3_articoli', function (Blueprint $table) {

            $table->integer("id_tab3")->unsigned();
            $table->integer("id_articolo")->unsigned();
            $table->string("link_img_hover", 255);
            $table->primary(["id_tab3", "id_articolo"]);
            $table->foreign("id_tab3")->references("id")->on("tab3")->onDelete("cascade");
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
        Schema::dropIfExists('tab3_articoli');
    }
}
