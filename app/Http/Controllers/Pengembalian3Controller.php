<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengembalian;
use App\Models\PengembalianDetail;
use App\Models\Peminjaman;
use App\Models\PeminjamanDetail;
use App\Models\Databarang;
use App\Models\Member;
use App\Models\Status;
use Doctrine\DBAL\Schema\View;

class Pengembalian3Controller extends Controller
{
    public function index()
    {
        $peminjaman = PeminjamanDetail::orderBy('id_peminjaman')
        ->where('id_status','=','2')
        ->where('id_laboratorium','=','3')
        ->get();
        return view('pengembalian3.index', compact('peminjaman'));
    }
    public function data()
    {
        $pengembalian3 = PeminjamanDetail::orderBy('id_peminjaman', 'desc')
        ->where('id_laboratorium','=','3')->where('id_status','>','2')
        ->get();

        return datatables()
            ->of($pengembalian3)
            ->addIndexColumn()
            ->addColumn('tanggal_peminjaman',function($pengembalian3){
                return tanggal_indonesia($pengembalian3->peminjaman->created_at, false);
            })
            ->addColumn('tanggal_pengembalian',function($pengembalian3){
                return tanggal_indonesia($pengembalian3->updated_at, false);
            })
            ->addColumn('member',function($pengembalian3){
                return $pengembalian3->peminjaman->member->nama;
            })
            ->addColumn('nim',function($pengembalian3){
                return $pengembalian3->peminjaman->member->nim;
            })
            ->addColumn('nama_barang',function($pengembalian3){
                return $pengembalian3->databarang->nama_barang;
            })
            ->addColumn('merk',function($pengembalian3){
                return $pengembalian3->databarang->merk;
            })
            ->addColumn('status_transaksi',function($pengembalian3)
            {
                if($pengembalian3->peminjaman->id_status==3)
                {
                    return '<span class="label label-warning">'.$pengembalian3->peminjaman->status->status_transaksi.'</span>';
                }
                elseif($pengembalian3->peminjaman->id_status==4)
                {
                    return '<span class="label label-success">'.$pengembalian3->peminjaman->status->status_transaksi.'</span>';
                }
            })
            ->addColumn('aksi', function ($pengembalian3) {
                if (auth()->user()->level == 4 ){
                    if($pengembalian3->id_status == 3){
                        return '<button onclick="konfirmasi(`'.route('pengembalian.konfirmasi',$pengembalian3->peminjaman->id_peminjaman).'`)" class="btn btn-xs btn-success btn-flat">Konfirmasi</button>';;
                    }
                    elseif($pengembalian3->id_status > 3){
                        return '<button class="btn btn-xs btn-secondary btn-flat" disabled>Konfirmasi</button>';;
                    }}
            })
            ->rawColumns(['tanggal_peminjaman','member','nim','status_transaksi','aksi','nama_barang','merk'])
            ->make(true);
    }
    public function create($id)
    {
        $pengembalian3 = new Pengembalian();
        $pengembalian3->id_peminjaman_detail=$id;
        $pengembalian3->id_laboratorium=3;
        $pengembalian3->save();

        
        session(['id_pengembalian'=> $pengembalian3->id_pengembalian]);
        session(['id_peminjaman_detail'=> $pengembalian3->id_peminjaman_detail]);

        return redirect()->route('pengembalian_detail3.index');
    }
    public function store(Request $request)
    {
        $pengembalian3= Peminjaman::find($request['id_peminjaman']);
        $detail = PeminjamanDetail::where('id_peminjaman',$request['id_peminjaman'])->first();
        $pengembalian3->update(['id_status'=> 3]);
        $detail->update(['id_status'=> 3]);
            
        return redirect()->route('pengembalian3.index');
    }
    
    public function konfirmasi($id)
    { 
        $pengembalian3= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$pengembalian3->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 4]);
        }
        $pengembalian3->update(['id_status'=> 4]);
    }
    public function destroy($id)
    {
        $pengembalian3 = Pengembalian::find($id);
        $pengembalian3->delete();

        return response(null, 204);
    }
    
}

