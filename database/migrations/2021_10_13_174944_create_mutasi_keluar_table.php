<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMutasiKeluarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mutasi_keluar', function (Blueprint $table) {
            $table->increments('id_mutasi_keluar');
            $table->string('kode_mutasi_keluar');
            $table->string('nama_barang_mutasi');
            $table->string('merk');
            $table->string('kondisi');
            $table->string('satuan');
            $table->string('asal_barang');
            $table->string('tujuan');
            $table->integer('harga');
            $table->integer('jumlah');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mutasi_keluar');
    }
}
