@extends('layouts.master')

@section('title')
    Transaksi Pengembalian
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Transaksi Pengembalian</li>
@endsection



@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
            @if (auth()->user()->level >= 5)
                <button onclick="addForm()" class="btn btn-success btn-xs btn-flat"><i class="fa fa-plus-circle"></i> Transaksi Pengembalian</button>
            @endif
            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered table-pengembalian">
                    <thead>
                    <th width="5%">No</th>
                        <th>Tanggal Peminjaman</th>
                        <th>Tanggal Pengembalian</th>
                        <th>Nama Member</th>
                        <th>NIM / NIDN / NPP</th>
                        <th>Nama Barang</th>
                        <th>Merk</th>
                        <th>Status</th>
                        @if (auth()->user()->level == 3)
                        <th>Konfirmasi</th>
                        @endif
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

@includeIf('pengembalian2.peminjaman')
@includeIf('pengembalian2.detail')
@endsection

@push('scripts')

<script>
    let table, table1;
    $(function () {
        table = $('.table-pengembalian').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('pengembalian2.data') }}',
            },
            columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'tanggal_peminjaman'},
                {data: 'tanggal_pengembalian'},
                {data: 'member'},
                {data: 'nim'},
                {data: 'nama_barang'},
                {data: 'merk'},
                {data: 'status_transaksi'},
                {data: 'aksi', searchable: false, sortable: false},
                
            ]
            
    });

    

    });
    function addForm() {
        $('#modal-peminjaman').modal('show');
        
    }
    function showDetail(url){
        $('#modal-detail').modal('show');

        table1.ajax.url(url);
        table1.ajax.reload();
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
    function konfirmasi(url){
        if(confirm('Konfirmasi Pengembalian ?')) {
            $.post(url, {
                    '_token': $('[name=csrf-token]').attr('content'),
                    '_method': 'post'
                })
                .done((response) => {
                    table.ajax.reload();
                })
                .fail((errors) => {
                    alert('Tidak dapat konfirmasi pengembalian');
                    return;
                });
        }
    }
</script>
@endpush