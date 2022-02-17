<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDatapeminjamanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('datapeminjaman', function (Blueprint $table) {
            $table->increments('id_peminjaman');
            $table->string('kode_peminjaman');
            $table->string('nama_peminjam');
            $table->date('tanggal_peminjaman');
            $table->string('status');
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
        Schema::dropIfExists('datapeminjaman');
    }
}
