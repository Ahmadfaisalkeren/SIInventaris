<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddKodeBarangToDatabarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('databarang', function (Blueprint $table) {
            $table->string('kode_barang')
                    ->unique()
                    ->after('id_laboratorium');
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
            $table->dropColumn('kode_barang');
        });
    }
}
