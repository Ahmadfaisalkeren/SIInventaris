<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Level;
use Illuminate\Support\Facades\Hash;

class UserlaboranController extends Controller
{
    
    public function index()
    {
        $level = Level::all()->pluck('nama_level','level');

        return view('userlaboran.index', compact('level'));
    }

    public function data()
    {
        if (auth()->user()->level == 2){
            $userlaboran = User::isNotAdmin('id', 'desc')
            ->where('level','=','5')
            ->get();
        }elseif (auth()->user()->level == 3){
            $userlaboran = User::isNotAdmin('id', 'desc')
            ->where('level','=','6')
            ->get();
        }
        elseif (auth()->user()->level == 4){
            $userlaboran = User::isNotAdmin('id', 'desc')
            ->where('level','=','7')
            ->get();
        }


        return datatables()
            ->of($userlaboran)
            ->addIndexColumn()
            ->addColumn('level', function ($userlaboran) {
                return $userlaboran->user_level->nama_level ?? '';
            })
            ->addColumn('aksi', function ($userlaboran) {
                return '
                <div class="btn-group">
                    <button onclick="editForm(`'. route('userlaboran.update', $userlaboran->id) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button onclick="deleteData(`'. route('userlaboran.destroy', $userlaboran->id) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            })
            ->rawColumns(['aksi','level'])
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
        $userlaboran = new User();
        $userlaboran->name = $request->name;
        $userlaboran->email= $request->email;
        $userlaboran->password= bcrypt($request->password);
        $userlaboran->foto=0;
        $userlaboran->level= $request->level;
        $userlaboran->save();

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
        $userlaboran = User::find($id);

        return response()->json($userlaboran);
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
        $userlaboran = User::find($id);
        $userlaboran->name = $request->name;
        $userlaboran->email= $request->email;
        if($request->has('password') && $request->password != "")
        $userlaboran->password= bcrypt($request->password);
        $userlaboran->save();

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
        $userlaboran = User::find($id);
        $userlaboran->delete();

        return response(null, 204);
    }
    public function profil()
    {
       $profil = auth()->user();
       return view('userlaboran.profil',compact('profil'));
    }
    public function updateProfil(Request $request)
    {
        $userlaboran = auth()->user();
        
        $userlaboran->name = $request->name;
        if ($request->has('password') && $request->password != "") {
            if (Hash::check($request->old_password, $userlaboran->password)) {
                if ($request->password == $request->password_confirmation) {
                    $userlaboran->password = bcrypt($request->password);
                } else {
                    return response()->json('Konfirmasi password tidak sesuai', 422);
                }
            } else {
                return response()->json('Password lama tidak sesuai', 422);
            }
        }

        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $nama = 'logo-' . date('YmdHis') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('/img'), $nama);

            $userlaboran->foto = "/img/$nama";
        }

        $userlaboran->update();

        return response()->json($userlaboran, 200);
    }
}
