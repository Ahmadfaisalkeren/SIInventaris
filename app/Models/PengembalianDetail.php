<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengembalianDetail extends Model
{
    use HasFactory;

    protected $table = 'datapengembalian_detail';
    protected $primaryKey = 'id_pengembalian_detail';
    protected $guarded = [];

    public function databarang()
    {
        return $this->hasOne(Databarang::class, 'id_barang','id_barang');
    }
    public function datapeminjaman()
    {
        return $this->hasOne(Peminjaman::class, 'id_peminjaman','id_peminjaman');
    }
}
