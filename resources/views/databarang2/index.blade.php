@extends('layouts.master')

@section('title')
    Data Barang
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Data Barang</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
    
        <div class="box">
            <div class="box-header with-border">
                <div class="btn-group">
                @if (auth()->user()->level == 6)
                <button onclick="addForm('{{ route('databarang2.store') }}')" class="btn btn-success btn-xs btn-flat"><i class="fa fa-plus-circle"></i> Tambah</button>
                <button onclick="deleteSelected('{{ route('databarang2.delete_selected') }}')" class="btn btn-danger btn-xs btn-flat"><i class="fa fa-trash"></i> Hapus</button>
                <button onclick="cetakBarcode('{{ route('databarang2.cetak_barcode') }}')" class="btn btn-info btn-xs btn-flat"><i class="fa fa-barcode"></i> Cetak Barcode</button>
                <button onclick="cetakLaporan('{{ route('databarang2.cetak_laporan') }}')" class="btn btn-success btn-xs btn-flat"><i class="fa fa-file-excel-o"></i> Cetak Laporan</button>
                @endif
            </div>
            </div>
            
            <div class="box-body table-responsive">
                <form action="" method="post" class="form-databarang">
                    @csrf
                    <table class="table table-stiped table-bordered">
                        <thead>
                            <th>
                                <input type="checkbox" name="select_all" id="select_all">
                            </th>
                            <th width="5%">No</th>
                            <th>Kode Barang</th>
                            <th>Nama Barang</th>
                            <th>Asal Barang</th>
                            <th>Kategori</th>
                            <th>Merk</th>
                            <th>Tahun Penerimaan</th>
                            <th>Kondisi</th>
                            <th>Satuan</th>
                            <th>Petugas</th>
                            <th>Tanggal Input</th>
                            @if (auth()->user()->level >= 5)
                            <th width="10%"><i class="fa fa-cog"></i> Aksi</th>
                            @endif
                        </thead>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

@includeIf('databarang2.form')
@includeIf('databarang2.mutasi')
@endsection

@push('scripts')
<script>
    let table;
    $(function () {
        table = $('.table').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('databarang2.data') }}',
            },
            columns: [
                {data: 'select_all' , searchable: false, sortable: false},
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'kode_barang'},
                {data: 'nama_barang'},
                {data: 'asal_barang'},
                {data: 'kategori'},
                {data: 'merk'},
                {data: 'tahun'},
                {data: 'kondisi'},
                {data: 'satuan'},
                {data: 'petugas'},
                {data: 'tanggal'},
                {data: 'aksi', searchable: false, sortable: false},
            ]
        });
        $('#modal-form').validator().on('submit', function (e) {
            if (! e.preventDefault()) {
                $.post($('#modal-form form').attr('action'), $('#modal-form form').serialize())
                    .done((response) => {
                        $('#modal-form').modal('hide');
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menyimpan data');
                        return;
                    });
            }
        });

        $('[name=select_all]').on('click', function (){
            $(':checkbox').prop('checked',this.checked);
        });
    });

    $('#modal-form-mutasi').validator().on('submit', function (e) {
            if (! e.preventDefault()) {
                $.get($('#modal-form-mutasi form').attr('action'), $('#modal-form-mutasi form').serialize())
                    .done((response) => {
                        $('#modal-form-mutasi').modal('hide');
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menyimpan data');
                        return;
                    });
            }
        });
    function addForm(url) {
        $('#modal-form').modal('show');
        $('#modal-form .modal-title').text('Tambah Data Barang');
        $('#modal-form form')[0].reset();
        $('#modal-form form').attr('action', url);
        $('#modal-form [name=_method]').val('post');
        $('#modal-form [name=nama_barang]').focus();
    }
    function editForm(url) {
        $('#modal-form').modal('show');
        $('#modal-form .modal-title').text('Edit Data Barang');
        $('#modal-form form')[0].reset();
        $('#modal-form form').attr('action', url);
        $('#modal-form [name=_method]').val('put');
        $('#modal-form [name=nama_barang]').focus();
        $.get(url)
            .done((response) => {
                $('#modal-form [name=nama_barang]').val(response.nama_barang);
                $('#modal-form [name=asal_barang]').val(response.asal_barang);
                $('#modal-form [name=kategori]').val(response.kategori);
                $('#modal-form [name=merk]').val(response.merk);
                $('#modal-form [name=tahun]').val(response.tahun);
                $('#modal-form [name=kondisi]').val(response.kondisi);
                $('#modal-form [name=satuan]').val(response.satuan);
                $('#modal-form [name=harga]').val(response.harga);

            })
            .fail((errors) => {
                alert('Tidak dapat menampilkan data');
                return;
            });
    }
    function formEdit(url) {
        $('#modal-form-mutasi').modal('show');
        $('#modal-form-mutasi .modal-title').text('Pilih Tempat Mutasi');
        $('#modal-form-mutasi form')[0].reset();
        $('#modal-form-mutasi form').attr('action', url);
        $('#modal-form-mutasi [name=_method]').val('post');
        $('#modal-form-mutasi [name=id_laboratorium]').focus();      
    }
    
    function edit(url) {
        $.get(url)
            .done((response) => {
                $('#modal-mutasi [name=id_laboratorium]').val(response.id_laboratorium);
            })
            .fail((errors) => {
                alert('Tidak dapat menampilkan data');
                return;
               
            });
    }
    function deleteData(url) {
        if (confirm('Yakin ingin menghapus data terpilih?')) {
            $.post(url, {
                    '_token': $('[name=csrf-token]').attr('content'),
                    '_method': 'delete'
                })
                .done((response) => {
                    table.ajax.reload();
                })
                .fail((errors) => {
                    alert('Tidak dapat menghapus data');
                    return;
                });
        }
    }

    function deleteSelected(url) {
        if ($('input:checked').length > 1) {
            if (confirm('Yakin ingin menghapus data terpilih?')) {
                $.post(url, $('.form-databarang').serialize())
                    .done((response) => {
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menghapus data');
                        return;
                    });
            }
        } else {
            alert('Pilih data yang akan dihapus');
            return;
        }
    }


    function cetakBarcode(url) {
        if($('input:checked').length<1){
            alert('Pilih data yang akan dicetak');
            return;
        }else if ($('input:checked').length<3){
            alert('Pilih minimal 3 data untuk dicetak');
            return;
        }else{
            $('.form-databarang')
                .attr('target','_blank')
                .attr('action',url)
                .submit();
        }
    }
    function cetakLaporan(url) {
        
        $('.form-databarang')
            .attr('target','_blank')
            .attr('action',url)
            .submit();
    }

</script>
@endpush