<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Transaksi</title>

    <link rel="stylesheet" href="{{ asset('/AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
</head>
<body>
    <h3 class="text-center">Laporan Transaksi</h3>
    <h4 class="text-center">
        Tanggal {{ tanggal_indonesia($awal, false) }}
        s/d
        Tanggal {{ tanggal_indonesia($akhir, false) }}
    </h4>

    <table class="table table-striped" width="100%" style="border: 1 solid;">
        <thead>
            <tr>
                <th width="5px" style="border: 1 solid;">No</th>
                <th style="border: 1 solid;">Tanggal Peminjaman</th>
                <th style="border: 1 solid;">Tanggal Pengembalian</th>
                <th style="border: 1 solid;">Kode Member</th>
                <th style="border: 1 solid;">Nama Member</th>
                <th style="border: 1 solid;">NIM / NIDN</th>
                <th style="border: 1 solid;">Nama Barang</th>
                <th style="border: 1 solid;">Merk</th>
                <th style="border: 1 solid;">Status Transaksi</th>                
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $row)  
           
            <tr>
                @foreach($row as $col)
                <td style="border: 1 solid;">{{$col}}</td>
                @endforeach   
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>