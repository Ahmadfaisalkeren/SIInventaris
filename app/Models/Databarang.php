<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Databarang extends Model
{
    use HasFactory;

    protected $table = 'databarang';
    protected $primaryKey = 'id_barang';
    protected $guarded = [];

    public function kategori()
    {
        return $this->belongsTo(Kategori::class,'id_kategori','id_kategori');
    }
    public function laboratorium()
    {
        return $this->belongsTo(Laboratorium::class,'id_laboratorium','id_laboratorium');
    }
    public function user()
    {
        return $this->hasOne(User::class,'id','id');
    }
}
