<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peminjaman;
use App\Models\PeminjamanDetail;
use App\Models\Databarang;
use App\Models\Member;
use App\Models\Status;
use Doctrine\DBAL\Schema\View;

class Peminjaman2Controller extends Controller
{
    public function index()
    {
        $member = Member::orderBy('nama')->get();
        $status_transaksi = Status::all()->pluck('status_transaksi', 'id_status');

        return view('peminjaman2.index', compact('member','status_transaksi'));
    }
    public function data()
    {
        $peminjaman2 = PeminjamanDetail::orderBy('id_peminjaman', 'desc')
        ->where('id_laboratorium','=','2')
        ->get();

        return datatables()
            ->of($peminjaman2)
            ->addIndexColumn()
            ->addColumn('tanggal_peminjaman',function($peminjaman2){
                return tanggal_indonesia($peminjaman2->peminjaman->created_at, false);
            })
            ->addColumn('member',function($peminjaman2){
                return $peminjaman2->peminjaman->member->nama;
            })
            ->addColumn('nim',function($peminjaman2){
                return $peminjaman2->peminjaman->member->nim;
            })
            ->addColumn('nama_barang',function($peminjaman2){
                return $peminjaman2->databarang->nama_barang;
            })
            ->addColumn('status_transaksi',function($peminjaman2)
            {
                if($peminjaman2->id_status==1)
                {
                    return '<span class="label label-warning">'.$peminjaman2->status->status_transaksi.'</span>';
                }
                elseif($peminjaman2->id_status==2)
                {
                    return '<span class="label label-success">'.$peminjaman2->status->status_transaksi.'</span>';
                }
                elseif($peminjaman2->id_status==3)
                {
                    return '<span class="label label-success">'.$peminjaman2->status->status_transaksi.'</span>';
                }
                elseif($peminjaman2->id_status==4)
                {
                    return '<span class="label label-success">'.$peminjaman2->status->status_transaksi.'</span>';
                }
            })
            ->addColumn('aksi', function ($peminjaman2) {
                if (auth()->user()->level == 6 ){
                    return '
                    <div class="btn-group">
                        <button onclick="showDetail(`'. route('peminjaman2.show', $peminjaman2->id_peminjaman) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-eye"></i></button>
                        <button onclick="deleteData(`'. route('peminjaman2.destroy', $peminjaman2->id_peminjaman) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                    </div>
                    ';
                }
                if (auth()->user()->level == 3 ){
                    if($peminjaman2->id_status == 1){
                    return '<button onclick="konfirmasi(`'.route('peminjaman2.konfirmasi',$peminjaman2->id_peminjaman).'`)" class="btn btn-xs btn-success btn-flat">Konfirmasi</button>';;
                }
                    elseif($peminjaman2->id_status >= 2){
                        return '<button class="btn btn-xs btn-secondary btn-flat" disabled>Konfirmasi</button>';;
                }}
            })
            
            ->rawColumns(['aksi','member','nim','status_transaksi','nama_barang'])
            ->make(true);
    }
    public function create($id)
    {
        $peminjaman2 = new Peminjaman();
        $peminjaman2->id_member=$id;
        $peminjaman2->id_status=$id;
        $peminjaman2->id_laboratorium=2;
        $peminjaman2->save();

        session(['id_peminjaman'=> $peminjaman2->id_peminjaman]);
        session(['id_member'=> $peminjaman2->id_member]);

        return redirect()->route('peminjaman_detail2.index');
    }
    public function store(Request $request)
    {
        
        $peminjaman2=Peminjaman::findOrFail($request->id_peminjaman);
        $peminjaman2->id_status = $request->id_status;
        $peminjaman2->id_laboratorium = $request->id_laboratorium;
        $peminjaman2->update();
    
        
        return redirect()->route('peminjaman2.index');
    }
    public function konfirmasi($id)
    { 
        $peminjaman2= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$peminjaman2->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 2]);
        }
        $peminjaman2->update(['id_status'=> 2]);
    }
    public function show($id)
    {
        $detail = PeminjamanDetail::with('databarang')->where('id_peminjaman',$id)->get();

        return datatables()
            ->of($detail)
            ->addIndexColumn()
            ->addColumn('kode_barang',function($detail){
                return '<span class="label label-success">'.$detail->databarang->kode_barang.'</span>';
            })
            ->addColumn('nama_barang',function($detail){
                return $detail->databarang->nama_barang;
            })
            ->addColumn('merk',function($detail){
                return $detail->databarang->merk;
            })
            ->addColumn('kondisi',function($detail){
                return $detail->databarang->kondisi;
            })
            ->rawColumns(['kode_barang'])
            ->make(true);
    }
    public function destroy($id)
    {
        $peminjaman2 = Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$peminjaman2->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->delete();
        }

        $peminjaman2->delete();

        return response(null, 204);
    }
    
}
