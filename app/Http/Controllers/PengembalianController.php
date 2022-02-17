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
use App\Models\Laboratorium;
use Doctrine\DBAL\Schema\View;

class PengembalianController extends Controller
{
    public function index()
    {
        $peminjaman = PeminjamanDetail::orderBy('id_peminjaman')
        ->where('id_status','=','2')
        ->where('id_laboratorium','=','1')
        ->get();
        return view('pengembalian.index', compact('peminjaman'));
    }
    public function data()
    {
        $pengembalian = PeminjamanDetail::orderBy('id_peminjaman', 'desc')
        ->where('id_laboratorium','=','1')->where('id_status','>','2')->where('id_status','<','5')
        ->get();

        return datatables()
            ->of($pengembalian)
            ->addIndexColumn()
            ->addColumn('tanggal_peminjaman',function($pengembalian){
                return tanggal_indonesia($pengembalian->peminjaman->created_at, false);
            })
            ->addColumn('tanggal_pengembalian',function($pengembalian){
                return tanggal_indonesia($pengembalian->updated_at, false);
            })
            ->addColumn('member',function($pengembalian){
                return $pengembalian->peminjaman->member->nama;
            })
            ->addColumn('nim',function($pengembalian){
                return $pengembalian->peminjaman->member->nim;
            })
            ->addColumn('nama_barang',function($pengembalian){
                return $pengembalian->databarang->nama_barang;
            })
            ->addColumn('merk',function($pengembalian){
                return $pengembalian->databarang->merk;
            })
            ->addColumn('status_transaksi',function($pengembalian)
            {
                if($pengembalian->peminjaman->id_status==3)
                {
                    return '<span class="label label-warning">'.$pengembalian->peminjaman->status->status_transaksi.'</span>';
                }
                elseif($pengembalian->peminjaman->id_status==4)
                {
                    return '<span class="label label-success">'.$pengembalian->peminjaman->status->status_transaksi.'</span>';
                }
                elseif($pengembalian->peminjaman->id_status==5)
                {
                    return '<span class="label label-danger">'.$pengembalian->peminjaman->status->status_transaksi.'</span>';
                }
            })
            ->addColumn('aksi', function ($pengembalian) {
                if (auth()->user()->level == 2 ){
                    if($pengembalian->id_status == 3){
                        return '<button onclick="konfirmasi(`'.route('pengembalian.konfirmasi',$pengembalian->peminjaman->id_peminjaman).'`)" class="btn btn-xs btn-success btn-flat">Konfirmasi</button>';;
                    }
                    elseif($pengembalian->id_status == 4){
                        return '<button class="btn btn-xs btn-secondary btn-flat" disabled>Konfirmasi</button>';;
                    }}
            })
            ->rawColumns(['tanggal_peminjaman','member','nim','status_transaksi','aksi'])
            ->make(true);
    }
    public function create($id)
    {
        $pengembalian = new Pengembalian();
        $pengembalian->id_peminjaman_detail=$id;
        $pengembalian->id_laboratorium=1;
        $pengembalian->save();

        
        session(['id_pengembalian'=> $pengembalian->id_pengembalian]);
        session(['id_peminjaman_detail'=> $pengembalian->id_peminjaman_detail]);

        return redirect()->route('pengembalian_detail.index');
    }
    public function store(Request $request)
    {
        
        $pengembalian= Peminjaman::find($request['id_peminjaman']);
        $detail = PeminjamanDetail::where('id_peminjaman',$request['id_peminjaman'])->first();
        $pengembalian->update(['id_status'=> 3]);
        $detail->update(['id_status'=> 3]);
            
        return redirect()->route('pengembalian.index');
    }
    
    public function konfirmasi($id)
    { 
        $pengembalian= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$pengembalian->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 4]);
        }
        $pengembalian->update(['id_status'=> 4]);
    }
    public function destroy($id)
    {
        $pengembalian = Pengembalian::find($id);
        $pengembalian->delete();

        return response(null, 204);
    }
    
}

