<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak Barcode</title>
    <style>
        .text-center{
            text-align:center;
        }
    </style>
</head>

<body>
    <table width="100%">
        <tr>
            @foreach ($datadatabarang as $databarang)
                <td class="text-center" style="border: 1px solid;">
                    <p>{{ $databarang->nama_barang}} - {{$databarang->merk}}</p>
                    <img src="data:image/png;base64,{{ DNS1D::getBarcodePNG($databarang->kode_barang, 'C39') }}"  
                    alt="{{$databarang->kode_barang}}"
                    width="180"
                    height="60">
                    <br>
                    {{$databarang->kode_barang}}
                </td>
                @if ($no++ % 3 == 0)
                    </tr><tr>
                @endif
            @endforeach
        </tr>
    </table>
</body>
</html>