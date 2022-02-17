<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Data Barang Laboratorium Multimedia</title>
    <link rel="stylesheet" href="{{asset('AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
</head>

<body>
    <h3 class="text-center">Laporan Data Barang Laboratorium Multimedia</h3>
    <br>
    <table class="table table-striped" width="100%" style="border: 1 solid;">
        <thead>
        <tr>
           <th width="5%">No</th>
           <th>Kode Barang</th>
           <th>Nama Barang</th>
           <th>Asal Barang</th>
           <th>Kategori</th>
           <th>Merk</th>
           <th>Tahun Penerimaan</th>
           <th>Kondisi</th>
           <th>Satuan</th>
           <th>Harga</th>
           <th>Tanggal Input</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($databarang as $key => $item)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $item->kode_barang }}</td>
                    <td>{{ $item->nama_barang }}</td>
                    <td>{{ $item->asal_barang }}</td>
                    <td>{{ $item->kategori->nama_kategori }}</td>
                    <td>{{ $item->merk }}</td>
                    <td>{{ $item->tahun }}</td>
                    <td>{{ $item->kondisi }}</td>
                    <td>{{ $item->satuan }}</td>
                    <td>Rp. {{ format_uang($item->harga) }}</td>
                    <td>{{ tanggal_indonesia($item->created_at, false)}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>