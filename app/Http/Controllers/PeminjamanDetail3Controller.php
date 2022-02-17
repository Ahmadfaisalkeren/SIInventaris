<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman3;
use App\Models\PeminjamanDetail;
use App\Models\Databarang;
use App\Models\Member;
use Illuminate\Http\Request;

class PeminjamanDetail3Controller extends Controller
{
    public function index()
    {
        $id_peminjaman = session('id_peminjaman');
        $databarang = Databarang::orderBy('nama_barang')
        ->where('id_laboratorium','=','3')
        ->get();
        $member = Member::find(session('id_member'));
        if (! $member) {
            abort(404);
        }

        return view('peminjaman_detail3.index', compact('id_peminjaman','databarang','member'));
    }
    
    public function data($id)
    {
        $detail = PeminjamanDetail::with('databarang')
        ->where('id_peminjaman', $id)
        ->get();
        $data = array();
        

        foreach($detail as $item){
            $row=array();
            $row['kode_barang'] ='<span class="label label-success">'.$item->databarang['kode_barang'].'</span';
            $row['nama_barang'] =$item->databarang['nama_barang'];
            $row['merk']        =$item->databarang['merk'];
            $row['kondisi']     =$item->databarang['kondisi'];
            $row['aksi']        ='<div class="btn-group">
                                    <button onclick="deleteData(`'. route('peminjaman_detail.destroy', $item->id_peminjaman_detail) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                                    </div>';
            $data[]=$row;
        }

        $data[]=[
            'kode_barang'=>'',
            'nama_barang'=>'',
            'merk'=>'',
            'kondisi'=>'',
            'aksi'=>'',
        ];


        return datatables()
            ->of($data)
            ->addIndexColumn()            
            ->rawColumns(['aksi','kode_barang'])
            ->make(true);
    }
    public function store(Request $request)
    {
        $databarang = Databarang::where('id_barang', $request->id_barang)->first();
        if (! $databarang){
            return response()->json('Data gagal disimpan', 400);
        }

        $detail = new PeminjamanDetail();
        $detail->id_peminjaman = $request->id_peminjaman;
        $detail->id_barang = $databarang->id_barang;
        $detail->id_laboratorium=3;
        $detail->id_status=1;
        $detail->save();
        
        return response()->json('Data Berhasil Disimpan', 200);
    }
    public function destroy($id)
    {
        $detail = PeminjamanDetail::find($id);
        $detail->delete();

        return response(null, 204);
    }
}
