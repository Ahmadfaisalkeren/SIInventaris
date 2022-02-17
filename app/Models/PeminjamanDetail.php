<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PeminjamanDetail extends Model
{
    use HasFactory;

    protected $table = 'datapeminjaman_detail';
    protected $primaryKey = 'id_peminjaman_detail';
    protected $guarded = [];

    public function databarang()
    {
        return $this->hasOne(Databarang::class, 'id_barang','id_barang');
    }
    public function peminjaman()
    {
        return $this->hasOne(Peminjaman::class, 'id_peminjaman','id_peminjaman');
    }
    public function member()
    {
        return $this->hasOne(Member::class, 'id_member','id_member');
    }
    public function status()
    {
        return $this->hasOne(Status::class, 'id_status','id_status');
    }
}
