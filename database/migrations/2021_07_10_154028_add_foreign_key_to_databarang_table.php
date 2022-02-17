<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeyToDatabarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('databarang', function (Blueprint $table) {
            $table->unsignedInteger('id_laboratorium')->change();
            $table->foreign('id_laboratorium')
                ->references('id_laboratorium')
                ->on('laboratorium')
                ->onUpdate('restrict')
                ->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('databarang', function (Blueprint $table) {
            $table->integer('id_laboratorium')->change();
            $table->dropForeign('databarang_id_laboratorium_foreign');
        });
    }
}
