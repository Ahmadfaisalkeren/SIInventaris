<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengembalian extends Model
{
    use HasFactory;

    protected $table = 'datapengembalian';
    protected $primaryKey = 'id_pengembalian';
    protected $guarded = [];


    public function peminjaman()
    {
        return $this->belongsTo(Peminjaman::class,'id_peminjaman','id_peminjaman');
    }
    public function peminjaman_detail()
    {
        return $this->belongsTo(Peminjaman::class,'id_peminjaman_detail','id_peminjaman_detail');
    }
    public function member()
    {
        return $this->belongsTo(Member::class,'id_member','id_member');
    }
    public function status()
    {
        return $this->belongsTo(Status::class,'id_status','id_status');
    }
    public function laboratorium()
    {
        return $this->belongsTo(Status::class,'id_laboratorium','id_laboratorium');
    }
}
