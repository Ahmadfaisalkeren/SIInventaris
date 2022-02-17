<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use App\Models\Pengembalian;
use App\Models\PengembalianDetail2;
use App\Models\PeminjamanDetail;
use App\Models\Databarang;
use App\Models\Member;
use Illuminate\Http\Request;

class PengembalianDetail3Controller extends Controller
{
    public function index()
    {
        $id_pengembalian = session('id_pengembalian');
        $peminjaman = PeminjamanDetail::find(session('id_peminjaman_detail'));
        if (! $peminjaman) {
            abort(404);
        }

        return view('pengembalian_detail3.index', compact('id_pengembalian','peminjaman'));
    }
    public function data($id)
    {
        $detail = PeminjamanDetail::where('id_peminjaman', $id)
        ->get();
        $data = array();
        

        foreach($detail as $item){
            $row=array();
            $row['tanggal_peminjaman']  =tanggal_indonesia($item->peminjaman['created_at'],false);
            $row['nama_member']         =$item->peminjaman->member['nama'];
            $row['nim']                 =$item->peminjaman->member['nim'];
            $row['kode_barang']         ='<span class="label label-success">'.$item->databarang['kode_barang'].'</span';
            $row['nama_barang']         =$item->databarang['nama_barang'];
            $row['merk']                =$item->databarang['merk'];
            $row['status']              =$item->status['status_transaksi'];

            $data[]=$row;
        }

        


        return datatables()
            ->of($data)
            ->addIndexColumn()
            ->rawColumns(['kode_barang'])            
            ->make(true);
    }
}
