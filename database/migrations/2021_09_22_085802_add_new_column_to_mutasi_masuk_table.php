<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewColumnToMutasiMasukTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('mutasi_masuk', function (Blueprint $table) {
            $table->string('merk')->after('nama_barang_mutasi');
            $table->string('kondisi')->after('merk');
            $table->string('satuan')->after('kondisi');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('mutasi_masuk', function (Blueprint $table) {
            //
        });
    }
}
