<?php

namespace App\Http\Controllers;

use App\Models\Laboratorium;
use Illuminate\Http\Request;
use App\Models\Databarang;
use App\Models\Kategori;
use App\Models\User;
use PDF;

class DatabarangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $laboratorium = Laboratorium::all()->pluck('nama_laboratorium', 'id_laboratorium');
        $kategori = Kategori::all()->pluck('nama_kategori', 'id_kategori');
        $user = User::all()->pluck('name', 'id');

        return view('databarang.index', compact('laboratorium','kategori','user'));
    }

    public function data()
    {
        
        $databarang = Databarang::orderBy('id_barang','asc')
            ->where('id_laboratorium','=','1');


        return datatables()
            ->of($databarang)
            ->addIndexColumn()
            ->addColumn('select_all', function ($databarang) {
                return '
                    <input type="checkbox" name="id_barang[]" value="'. $databarang->id_barang .'">
                ';
            })
            ->addColumn('kode_barang', function ($databarang) {
                return '<span class="label label-success">'. $databarang->kode_barang .'</span>';
            })
            ->addColumn('kategori', function ($databarang) {
                return $databarang->kategori->nama_kategori ?? '';
            })
            ->addColumn('petugas', function ($databarang) {
                return $databarang->user->name ?? '';
            })
            ->addColumn('tanggal', function ($databarang) {
                return $databarang->created_at;
            })
            ->addColumn('aksi', function ($databarang) {
                if (auth()->user()->level >= 5 ){
                return '
                <div class="btn-group">
                    <button type="button" onclick="editForm(`'. route('databarang.update', $databarang->id_barang) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" onclick="deleteData(`'. route('databarang.destroy', $databarang->id_barang) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                    <button type="button" onclick="formEdit(`'. route('databarang.edit', $databarang->id_barang) .'`)" class="btn btn-xs btn-warning btn-flat"><i class="fa fa-arrows"></i>Mutasi</button>
                </div>
                ';
            }})
            ->rawColumns(['aksi', 'kode_barang', 'select_all','harga','kategori','laboratorium','tanggal'])
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $databarang = Databarang::latest()->first() ?? new Databarang();
        $request['kode_barang'] = 'HRW'. tambah_nol_didepan((int)$databarang->id_barang +1, 6);
        $request['id']=auth()->id();
        $databarang = Databarang::create($request->all());

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $databarang = Databarang::find($id);

        return response()->json($databarang);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $databarang = Databarang::find($id);
        $databarang->id_laboratorium = $request['id_laboratorium'];
        $databarang->update();

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $databarang = Databarang::find($id);
        $databarang->update($request->all());
        

        return response()->json('Data berhasil disimpan', 200);
    }

    //mutasi data barang
    //public function mutasi(Request $request, $id)
    //{
        
        //$databarang = Databarang::find('id_laboratorium',$id);
        //$databarang->update($request->id_laboratorium);
        

        //return response()->json('Data berhasil disimpan', 200);
    //}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $databarang = Databarang::find($id);
        $databarang->delete();

        return response(null, 204);
    }

    public function deleteSelected(Request $request)
    {
        foreach ($request->id_barang as $id) {
            $databarang = Databarang::find($id);
            $databarang->delete();
        }

        return response(null, 204);
    }

    public function cetakBarcode(Request $request)
    {
        $datadatabarang = array();
        foreach ($request->id_barang as $id) {
            $databarang = Databarang::find($id);
            $datadatabarang[] = $databarang;
        }

        $no  = 1;
        $pdf = PDF::loadView('databarang.barcode', compact('datadatabarang', 'no'));
        $pdf->setPaper('a4', 'potrait');
        return $pdf->stream('databarang.pdf');
    }
    public function cetakLaporan(Request $request)
    {
        $databarang = Databarang::leftJoin('laboratorium', 'laboratorium.id_laboratorium', 'databarang.id_laboratorium')
        ->select('databarang.*', 'nama_laboratorium')
        ->where('nama_laboratorium','=','Laboratorium Hardware')
        ->orderBy('kode_barang', 'asc')
        ->get();

        $no  = 1;
        $pdf = PDF::loadView('databarang.laporan', compact('databarang','no'));
        $pdf->setPaper('a4', 'landscape');
        return $pdf->stream('laporanbarang.pdf');
    }
}
