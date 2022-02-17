@extends('layouts.master')

@section('title')
    Laporan Pendapatan {{ tanggal_indonesia($tanggalAwal, false) }} s/d {{ tanggal_indonesia($tanggalAkhir, false) }}
@endsection

@push('css')
<link rel="stylesheet" href="{{ asset('/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
@endpush

@section('breadcrumb')
    @parent
    <li class="active">Laporan</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
                <button onclick="updatePeriode()" class="btn btn-info btn-xs btn-flat"><i class="fa fa-plus-circle"></i> Ubah Periode</button>
                <a href="{{ route('laporan.export_pdf', [$tanggalAwal, $tanggalAkhir]) }}" target="_blank" class="btn btn-success btn-xs btn-flat"><i class="fa fa-file-excel-o"></i> Export PDF</a>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered table-laporan">
                    <thead>
                        <th width="5%">No</th>
                        <th>Tanggal Peminjaman</th>
                        <th>Tanggal Pengembalian</th>
                        <th>Kode Member</th>
                        <th>Nama Member</th>
                        <th>NIM / NIDN</th>
                        <th>Nama Barang</th>
                        <th>Merk</th>
                        <th>Status Transaksi</th>   
                                                                
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

@includeIf('laporan.form')
@includeIf('laporan.detail')
@endsection

@push('scripts')
<script src="{{ asset('/AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script>
    let table;
    $(function () {
        table = $('.table-laporan').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('laporan.data', [$tanggalAwal, $tanggalAkhir]) }}',
            },
            columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'tanggal'},
                {data: 'tanggal_pengembalian'},
                {data: 'kode_member'},
                {data: 'nama'},
                {data: 'nim'},
                {data: 'nama_barang'},
                {data: 'merk'},
                {data: 'status_transaksi'},   
                
                 

            ],
            dom: 'Brt',
            bSort: false,
            bPaginate: false,
        });
        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true
        });
    
    $('.table-member').DataTable();
    table1 = $('.table-detail').DataTable({
        processing: true,
        bSort: false,
        dom: 'Brt',
        columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'kode_member'},
                {data: 'nama'},
                {data: 'nim'},
                {data: 'status_transaksi'},
                
            ]
        })

    });
    function showDetail(url){
        $('#modal-detail').modal('show');

        table1.ajax.url(url);
        table1.ajax.reload();
    }
    function updatePeriode() {
        $('#modal-form').modal('show');
    }
</script>
@endpush