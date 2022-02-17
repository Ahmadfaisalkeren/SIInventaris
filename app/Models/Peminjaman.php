<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    use HasFactory;

    protected $table = 'datapeminjaman';
    protected $primaryKey = 'id_peminjaman';
    protected $guarded = [];

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
        return $this->belongsTo(Laboratorium::class,'id_laboratorium','id_laboratorium');
    }
}

