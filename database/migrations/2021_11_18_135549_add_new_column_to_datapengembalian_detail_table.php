<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNewColumnToDatapengembalianDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('datapengembalian_detail', function (Blueprint $table) {
            $table->integer('id_peminjaman_detail')->after('id_peminjaman');
            $table->integer('id_laboratorium')->after('id_peminjaman_detail');
            $table->integer('id_status')->after('id_laboratorium');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('datapengembalian_detail', function (Blueprint $table) {
            //
        });
    }
}
