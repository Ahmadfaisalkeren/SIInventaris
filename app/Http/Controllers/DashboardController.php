<?php

namespace App\Http\Controllers;

use App\Models\Laboratorium;
use App\Models\Databarang;
use App\Models\Member;
use App\Models\Kategori;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $laboratorium   = Laboratorium::count();
        $databarang     = Databarang::where('id_laboratorium','=','1')->count();
        $databarang2    = Databarang::where('id_laboratorium','=','2')->count();
        $databarang3    = Databarang::where('id_laboratorium','=','3')->count();
        $member         = Member::count();
        $kategori       = Kategori::count();
        
        if (auth()->user()->level == 1){
            return view('kaprodi.dashboard', compact('laboratorium','databarang','databarang2','databarang3','member','kategori'));
        } elseif (auth()->user()->level == 2) {
            return view('kalab.dashboard');
        } elseif (auth()->user()->level == 3) {
            return view('kalab.dashboard');
        } elseif (auth()->user()->level == 4) {
            return view('kalab.dashboard');
        } elseif (auth()->user()->level == 5) {
            return view('laboran.dashboard');
        } elseif (auth()->user()->level == 6) {
            return view('laboran.dashboard');
        } elseif (auth()->user()->level == 7) {
            return view('laboran.dashboard');
        }
    }
}
