<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peminjaman;
use App\Models\PeminjamanDetail;
use App\Models\Databarang;
use App\Models\Member;
use App\Models\Status;
use Doctrine\DBAL\Schema\View;

class PeminjamanController extends Controller
{
    public function index(Request $request)
    {
        $member = Member::orderBy('nama')->get();
        $status_transaksi = Status::all()->pluck('status_transaksi', 'id_status');

        return view('peminjaman.index', compact('member','status_transaksi'));
    }
    public function data()
    {
        $peminjaman = PeminjamanDetail::orderBy('id_peminjaman', 'desc')
        ->where('id_laboratorium','=','1')
        ->get();


        return datatables()
            ->of($peminjaman)
            ->addIndexColumn()
            ->addColumn('tanggal_peminjaman',function($peminjaman){
                return tanggal_indonesia($peminjaman->peminjaman->created_at, false);
            })
            ->addColumn('tanggal_kembali',function($peminjaman){
                return tanggal_indonesia($peminjaman->tanggal_kembali, false);
            })
            ->addColumn('member',function($peminjaman){
                return $peminjaman->peminjaman->member->nama;
            })
            ->addColumn('nim',function($peminjaman){
                return $peminjaman->peminjaman->member->nim;
            })
            ->addColumn('nama_barang',function($peminjaman){
                return $peminjaman->databarang->nama_barang;
            })
            ->addColumn('status_transaksi',function($peminjaman)
            {
                if($peminjaman->id_status==1)
                {
                    return '<span class="label label-warning">'.$peminjaman->status->status_transaksi.'</span>';
                }
                elseif($peminjaman->id_status==2)
                {
                    return '<span class="label label-success">'.$peminjaman->status->status_transaksi.'</span>';
                }
                elseif($peminjaman->id_status==3)
                {
                    return '<span class="label label-success">'.$peminjaman->status->status_transaksi.'</span>';
                }
                elseif($peminjaman->id_status==4)
                {
                    return '<span class="label label-success">'.$peminjaman->status->status_transaksi.'</span>';
                }
                elseif($peminjaman->id_status==5)
                {
                    return '<span class="label label-danger">'.$peminjaman->status->status_transaksi.'</span>';
                }
            })
            ->addColumn('aksi', function ($peminjaman) {
                if (auth()->user()->level == 5 ){
                    return '
                    <div class="btn-group">
                        <button onclick="showDetail(`'. route('peminjaman.show', $peminjaman->id_peminjaman) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-eye"></i></button>
                        <button onclick="deleteData(`'. route('peminjaman.destroy', $peminjaman->id_peminjaman) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                    </div>
                    ';
                }
                if (auth()->user()->level == 2 ){
                    if($peminjaman->id_status == 1){
                    return '
                    <div class="btn-group">
                        <button onclick="konfirmasi(`'.route('peminjaman.konfirmasi',$peminjaman->id_peminjaman).'`)" class="btn btn-xs btn-success btn-flat">Setujui</button>
                        <button onclick="ditolak(`'.route('peminjaman.ditolak',$peminjaman->id_peminjaman).'`)" class="btn btn-xs btn-danger btn-flat">Tolak</button>
                    </div>
                    ';
                }
                    elseif($peminjaman->id_status >= 2){
                        return '
                        <div class="btn-group">
                            <button class="btn btn-xs btn-secondary btn-flat" disabled>Setujui</button>
                            <button class="btn btn-xs btn-secondary btn-flat" disabled>Tolak</button>
                        </div>
                        ';
                }}
            })
            ->rawColumns(['aksi','member','nim','status_transaksi','nama_barang','tanggal_kembali'])
            ->make(true);
    }
    public function create($id)
    {
        $peminjaman = new Peminjaman();
        $peminjaman->id_member=$id;
        $peminjaman->id_status=$id;
        $peminjaman->id_laboratorium=1;
        $peminjaman->save();

        session(['id_peminjaman'=> $peminjaman->id_peminjaman]);
        session(['id_member'=> $peminjaman->id_member]);

        return redirect()->route('peminjaman_detail.index');
    }
    public function store(Request $request)
    {
        
        $peminjaman=Peminjaman::findOrFail($request->id_peminjaman);
        $peminjaman->id_status = $request->id_status;
        $peminjaman->update();
    
        
        return redirect()->route('peminjaman.index');
    }
    public function konfirmasi($id)
    { 
        $peminjaman= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$peminjaman->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 2]);
        }
        $peminjaman->update(['id_status'=> 2]);
    }
    public function ditolak($id)
    { 
        $peminjaman= Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$peminjaman->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->update(['id_status'=> 5]);
        }
        $peminjaman->update(['id_status'=> 5]);
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
        $peminjaman = Peminjaman::find($id);
        $detail = PeminjamanDetail::where('id_peminjaman',$peminjaman->id_peminjaman)->get();
        foreach ($detail as $item){
            $item->delete();
        }

        $peminjaman->delete();

        return response(null, 204);
    }
    public function laporan(Request $request)
    {
        $tanggalAwal = date('Y-m-d', mktime(0, 0, 0, date('m'), 1, date('Y')));
        $tanggalAkhir = date('Y-m-d');

        if ($request->has('tanggal_awal') && $request->tanggal_awal != "" && $request->has('tanggal_akhir') && $request->tanggal_akhir) {
            $tanggalAwal = $request->tanggal_awal;
            $tanggalAkhir = $request->tanggal_akhir;
        }

        return view('peminjaman.index', compact('tanggalAwal', 'tanggalAkhir'));
    }
    
}
