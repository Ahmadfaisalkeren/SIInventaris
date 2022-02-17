<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Data Barang Laboratorium Hardware</title>
    <link rel="stylesheet" href="{{asset('AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
</head>

<body>
    <h3 class="text-center">Laporan Data Barang Laboratorium Hardware</h3>
    <br>
    <table class="table table-striped" width="100%" style="border: 1px solid;">
        <thead>
        <tr>
           <th width="5%" style="border: 1px solid;">No</th>
           <th style="border: 1px solid;">Kode Barang</th>
           <th style="border: 1px solid;">Nama Barang</th>
           <th style="border: 1px solid;">Asal Barang</th>
           <th style="border: 1px solid;">Kategori</th>
           <th style="border: 1px solid;">Merk</th>
           <th style="border: 1px solid;">Tahun Penerimaan</th>
           <th style="border: 1px solid;">Kondisi</th>
           <th style="border: 1px solid;">Satuan</th>
           <th style="border: 1px solid;">Tanggal Input</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($databarang as $key => $item)
                <tr>
                    <td style="border: 1px solid;">{{ $key+1 }}</td>
                    <td style="border: 1px solid;">{{ $item->kode_barang }}</td>
                    <td style="border: 1px solid;">{{ $item->nama_barang }}</td>
                    <td style="border: 1px solid;">{{ $item->asal_barang }}</td>
                    <td style="border: 1px solid;">{{ $item->kategori->nama_kategori }}</td>
                    <td style="border: 1px solid;">{{ $item->merk }}</td>
                    <td style="border: 1px solid;">{{ $item->tahun }}</td>
                    <td style="border: 1px solid;">{{ $item->kondisi }}</td>
                    <td style="border: 1px solid;">{{ $item->satuan }}</td>
                    <td style="border: 1px solid;">{{ tanggal_indonesia($item->created_at, false)}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>