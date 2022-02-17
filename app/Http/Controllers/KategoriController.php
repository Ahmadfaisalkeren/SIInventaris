<?php

namespace App\Http\Controllers;

use App\Models\Databarang;
use Illuminate\Http\Request;
use App\Models\Kategori;

class KategoriController extends Controller
{
    
    public function index()
    {
        return view('kategori.index');
    }

    
    public function data()
    {
    if (auth()->user()->level == 1 ){
            $kategori = Kategori::orderBy('id_kategori','asc')->withCount('databarang')
            ->get();
        }  
    elseif (auth()->user()->level == 2 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','1');
        }])
        ->get();
    }  
    elseif (auth()->user()->level == 3 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','2');
        }])
        ->get();
    } 
    elseif (auth()->user()->level == 4 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','3');
        }])
        ->get();
    } 
    elseif (auth()->user()->level == 5 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','1');
        }])
        ->get();
    } 
    elseif (auth()->user()->level == 6 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','2');
        }])
        ->get();
    }   
    elseif (auth()->user()->level == 7 ){
        $kategori = Kategori::orderBy('id_kategori','asc')->withCount(['databarang'=>function ($query){
            $query->where('id_laboratorium','=','3');
        }])
        ->get();
    }  
        return datatables()
            ->of($kategori)
            ->addIndexColumn()
            ->addColumn('nama_kategori', function ($kategori){
                return  $kategori->nama_kategori;
            })
            ->addColumn('jumlah', function ($kategori){
                return $kategori->databarang_count;
            })
            ->addColumn('aksi', function ($kategori) {
                if (auth()->user()->level >= 5 ){
                return '
                <div class="btn-group">
                    <button onclick="editForm(`'. route('kategori.update', $kategori->id_kategori) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button onclick="deleteData(`'. route('kategori.destroy', $kategori->id_kategori) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            }})
            ->rawColumns(['aksi','jumlah'])
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
        $kategori = new Kategori();
        $kategori->nama_kategori = $request->nama_kategori;
        $kategori->save();

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
        $kategori = Kategori::find($id);

        return response()->json($kategori);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $kategori = Kategori::find($id);
        $kategori->nama_kategori = $request->nama_kategori;
        $kategori->update();

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kategori = Kategori::find($id);
        $kategori->delete();

        return response(null, 204);
    }
}
