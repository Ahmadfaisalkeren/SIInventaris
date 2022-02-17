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

class Pengembalian2Controller extends Controller
{
    public function index()
    {
        $peminjaman = PeminjamanDetail::orderBy('id_peminjaman')
        ->where('id_status','=','2')
        ->where('id_laboratorium','=','2')
        ->get();
        return view('pengembalian2.index', compact('peminjaman'));
    }
    public function data()
    {
        $pengembalian2 = PeminjamanDetail::orderBy('id_peminjaman', 'desc')
        ->where('id_laboratorium','=','2')->where('id_status','>','2')
        ->get();

        return datatables()
            ->of($pengembalian2)
            ->addIndexColumn()
            ->addColumn('tanggal_peminjaman',function($pengembalian2){
                return tanggal_indonesia($pengembalian2->peminjaman->created_at, false);
            })
            ->addColumn('tanggal_pengembalian',function($pengembalian2){
                return tanggal_indonesia($pengembalian2->updated_at, false);
            })
            ->addColumn('member',function($pengembalian2){
                return $pengembalian2->peminjaman->member->nama;
            })
            ->addColumn('nim',function($pengembalian2){
                return $pengembalian2->peminjaman->member->nim;
            })
            ->addColumn('nama_barang',function($pengembalian2){
                return $pengembalian2->databarang->nama_barang;
            })
            ->addColumn('merk',function($pengembalian2){
                return $pengembalian2->databarang->merk;
            })
            ->addColumn('status_transaksi',function($pengembalian2)
            {
                if($pengembalian2->peminjaman->id_status==3)
                {
                    return '<span class="label label-warning">'.$pengembalian2->peminjaman->status->status_transaksi.'</span>';
                }
                elseif($pengembalian2->peminjaman->id_status==4)
                {
                    return '<span class="label label-success">'.$pengembalian2->peminjaman->status->status_transaksi.'</span>';
                }
            })
            ->addColumn('aksi', function ($pengembalian2) {
                if (auth()->user()->level == 3 ){
                    if($pengembalian2->id_status == 3){
                        return '<button onclick="konfirmasi(`'.route('pengembalian.konfirmasi',$pengembalian2->peminjaman->id_peminjaman).'`)" class="btn btn-xs btn-success btn-flat">Konfirmasi</button>';;
                    }
                    elseif($pengembalian2->id_status > 3){
                        return '<button class="btn btn-xs btn-secondary btn-flat" disabled>Konfirmasi</button>';;
                    }}
            })
            ->rawColumns(['tanggal_peminjaman','member','nim','status_transaksi','aksi','nama_barang','merk'])
            ->make(true);
    }
    public function create($id)
    {
        $pengembalian2 = new Pengembalian();
        $pengembalian2->id_peminjaman_detail=$id;
        $pengembalian2->id_laboratorium=2;
        $pengembalian2->save();

        
        session(['id_pengembalian'=> $pengembalian2->id_pengembalian]);
        session(['id_peminjaman_detail'=> $pengembalian2->id_peminjaman_detail]);

        return redirect()->route('pengembalian_detail2.index');
    }
    public function store(Request $request)
    {
        $pengembalian2= Peminjaman::find($request['id_peminjaman']);
        $detail = PeminjamanDetail::where('id_peminjaman',$request['id_peminjaman'])->first();
        $pengembalian2->update(['id_status'=> 3]);
        $detail->update(['id_status'=> 3]);
            
        return redirect()->route('pengembalian2.index');
    }
    
    public function konfirmasi($id)
    { 
        $pengembalian2= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$pengembalian2->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 4]);
        }
        $pengembalian2->update(['id_status'=> 4]);
    }
    public function destroy($id)
    {
        $pengembalian2 = Pengembalian::find($id);
        $pengembalian2->delete();

        return response(null, 204);
    }
    
}

