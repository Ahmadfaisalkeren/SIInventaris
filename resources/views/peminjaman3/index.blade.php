@extends('layouts.master')

@section('title')
    Transaksi Peminjaman
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Transaksi Peminjaman</li>
@endsection



@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
            @if (auth()->user()->level >= 5)
                <button onclick="addForm()" class="btn btn-success btn-xs btn-flat"><i class="fa fa-plus-circle"></i> Transaksi Baru</button>
            @endif
            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered table-peminjaman">
                    <thead>
                        <th width="5%">No</th>
                        <th>Tanggal Peminjaman</th>
                        <th>Nama Member</th>
                        <th>NIM / NIDN</th>
                        <th>Nama Barang</th>
                        <th>Status</th>
                        @if (auth()->user()->level == 7)
                        <th>Aksi</th>
                        @endif
                        @if (auth()->user()->level == 4)
                        <th width="15%"><i class="fa fa-cog"></i> Konfirmasi</th>
                        @endif
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

@includeIf('peminjaman3.member')
@includeIf('peminjaman3.detail')
@endsection

@push('scripts')

<script>
    let table, table1;
    $(function () {
        table = $('.table-peminjaman').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('peminjaman3.data') }}',
            },
            columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'tanggal_peminjaman'},
                {data: 'member'},
                {data: 'nim'},
                {data: 'nama_barang'},
                {data: 'status_transaksi'},
                {data: 'aksi', searchable: false, sortable: false},
                
            ]
            
    });

    $('.table-member').DataTable();
    table1 = $('.table-detail').DataTable({
        processing: true,
        bSort: false,
        dom: 'Brt',
        columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'kode_barang'},
                {data: 'nama_barang'},
                {data: 'merk'},
                {data: 'kondisi'},
            ]
        })

    });
    function addForm() {
        $('#modal-member').modal('show');
        
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
        if(confirm('Konfirmasi Peminjaman ?')) {
            $.post(url, {
                    '_token': $('[name=csrf-token]').attr('content'),
                    '_method': 'post'
                })
                .done((response) => {
                    table.ajax.reload();
                })
                .fail((errors) => {
                    alert('Tidak dapat konfirmasi peminjaman');
                    return;
                });
        }
    }
</script>
@endpush