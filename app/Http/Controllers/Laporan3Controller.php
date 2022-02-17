<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use App\Models\PeminjamanDetail;
use App\Models\Pengembalian;
use App\Models\Member;

use Illuminate\Http\Request;
use PDF;

class Laporan3Controller extends Controller
{
    public function index(Request $request)
    {
        $tanggalAwal = date('Y-m-d', mktime(0, 0, 0, date('m'), 1, date('Y')));
        $tanggalAkhir = date('Y-m-d');

        if ($request->has('tanggal_awal') && $request->tanggal_awal != "" && $request->has('tanggal_akhir') && $request->tanggal_akhir) {
            $tanggalAwal = $request->tanggal_awal;
            $tanggalAkhir = $request->tanggal_akhir;
        }

        return view('laporan3.index', compact('tanggalAwal', 'tanggalAkhir'));
    }

    public function getData($awal, $akhir)
    {
        $no = 1;
        $data = array();
        

        while (strtotime($awal) <= strtotime($akhir)) {
            $tanggal = $awal;
            $awal = date('Y-m-d', strtotime("+1 day", strtotime($awal)));


            $peminjaman = PeminjamanDetail::with('peminjaman')->with('member')->with('status')
                ->orderBy('id_peminjaman','desc')
                ->where('id_laboratorium','=','3')
                ->where('created_at', 'LIKE', "%$tanggal%")
                ->get();
            
                foreach($peminjaman as $item){
                    $row=array();
                    $row['DT_RowIndex'] = $no++;
                    $row['tanggal'] = tanggal_indonesia($tanggal, false);                    
                    $row['tanggal_pengembalian']=tanggal_indonesia($item->updated_at,false);
                    $row['kode_member'] =$item->peminjaman->member['kode_member'];
                    $row['nama'] =$item->peminjaman->member['nama'];
                    $row['nim'] =$item->peminjaman->member['nim'];
                    $row['nama_barang']=$item->databarang['nama_barang'];
                    $row['merk']=$item->databarang['merk'];
                    $row['status_transaksi']      =$item->status['status_transaksi'];
                    $data[]=$row;
                }
            
            // $row = array();
            
            // $row['tanggal_indonesia'] = tanggal_indonesia($tanggal, false);
            // $row['tanggal']=$tanggal;
            // $row['peminjaman']=($peminjaman) .' Transaksi';
            

            // $data[] = $row;
        }

        // $data[] = [
        //     'DT_RowIndex' => '',
        //     'tanggal' => '',
        //     'peminjaman' => '',
            
            
            
        // ];

        return $data;
    }

    public function data($awal, $akhir)
    {
        $data = $this->getData($awal, $akhir);
        
        return datatables()
            ->of($data)
            ->rawColumns(['aksi','kode_member','status_transaksi'])
            ->make(true);
    }
    public function show($tanggal)
    {

        $detail = Peminjaman::with('member')->with('status')
        ->orderBy('id_peminjaman','desc')
        ->where('id_laboratorium','=','3')
        ->where('created_at', 'LIKE', "%$tanggal%")
        ->get();
        $data = array();
        

        foreach($detail as $item){
            $row=array();
            $row['kode_member'] ='<span class="label label-success">'.$item->member['kode_member'].'</span';
            $row['nama'] =$item->member['nama'];
            $row['nim'] =$item->member['nim'];
            $row['status_transaksi']      ='<span class="label label-success">'.$item->status['status_transaksi'].'</span';
    
            $data[]=$row;
        }

        $data[]=[
            'kode_member'=>'',
            'nama'=>'',
            'nim'=>'',
            'status_transaksi'=>'',
            
        ];


        return datatables()
            ->of($data)
            ->addIndexColumn()  
            ->rawColumns(['kode_member','status_transaksi'])          
            ->make(true);
    }
       
    public function exportPDF($awal, $akhir)
    {
        $data = $this->getData($awal, $akhir);
        $pdf  = PDF::loadView('laporan3.pdf', compact('awal', 'akhir', 'data'));
        $pdf->setPaper('a4', 'landscape');
        
        return $pdf->stream('Laporan-transaksi-'. date('Y-m-d-his') .'.pdf');
    }
}