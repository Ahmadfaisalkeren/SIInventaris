<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Laboratorium;

class LaboratoriumController extends Controller
{
    
    public function index()
    {
        return view('laboratorium.index');
    }

    public function data()
    {
        $laboratorium = Laboratorium::orderBy('id_laboratorium', 'asc')->get();

        return datatables()
            ->of($laboratorium)
            ->addIndexColumn()
            ->addColumn('aksi', function ($laboratorium) {
                return '
                <div class="btn-group">
                    <button onclick="editForm(`'. route('laboratorium.update', $laboratorium->id_laboratorium) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button onclick="deleteData(`'. route('laboratorium.destroy', $laboratorium->id_laboratorium) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            })
            ->rawColumns(['aksi'])
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
        $laboratorium = new Laboratorium();
        $laboratorium->nama_laboratorium = $request->nama_laboratorium;
        $laboratorium->save();

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
        $laboratorium = Laboratorium::find($id);

        return response()->json($laboratorium);
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
        $laboratorium = Laboratorium::find($id);
        $laboratorium->nama_laboratorium = $request->nama_laboratorium;
        $laboratorium->update();

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
        $laboratorium = Laboratorium::find($id);
        $laboratorium->delete();

        return response(null, 204);
    }
}
