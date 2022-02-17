@extends('layouts.master')

@section('title')
   Transaksi Pengembalian
@endsection

@push('css')
<style>
    .table-pengembalian tbody tr:last-child{
        display: none;
    }
</style>
@endpush
@push('css')

@endpush

@section('breadcrumb')
    @parent
    <li class="active">Transaksi Pengembalian</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
                <table class="table table-striped table-bordered table-peminjaman">
                    <thead>
                        <th width="5%">No</th>
                        <th>Tanggal Peminjaman</th>
                        <th>Nama Member</th>
                        <th>NIM / NIDN / NPP</th>
                        <th>Kode Barang</th>
                        <th>Nama Barang</th>
                        <th>Merk</th>
                        <th>Status</th>
                    </thead>
                </table>
                <div class="row">
                    <div class="col-lg-12">
                        
                        <form action="{{ route('pengembalian3.store') }}" class="form-pengembalian" method="post" enctype="multipart/form-data">
                            @csrf                            
                            <input type="hidden" name="id_peminjaman" value="{{$peminjaman->id_peminjaman}}">                           
                            <div class="form-group row">
                                <label for="id_status" class="col-lg-2 control-label"></label>
                                <div class="col-lg-4">
                                    <input type="hidden" id="id_status" name="id_status" class="form-control" value="3">
                                </div>
                            </div>
                            <div class="box-footer text-right">
                                <button class="btn btn-sm btn-flat btn-success btn-simpan"><i class="fa fa-save"></i> Konfirmasi Pengembalian</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

@push('scripts')
<script>
    $(function () {
        table = $('.table-peminjaman').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('pengembalian_detail3.data',$peminjaman) }}',
            },
            columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'tanggal_peminjaman'},
                {data: 'nama_member'},
                {data: 'nim'},
                {data: 'kode_barang'},
                {data: 'nama_barang'},
                {data: 'merk'},
                {data: 'status'},
                
            ],
            dom: 'Brt',
            bSort: false,
        });

        $('.btn-simpan').on('click',function(){
        $('.form-pengembalian').submit();
        })

        showData();
        $('.form-pengembalian').validator().on('submit', function (e){
            if(! e.preventDefault()){
                $.ajax({
                    url: $('.form-pengembalian').attr('action'),
                    type: $('.form-pengembalian').attr('method'),
                    data: new FormData($('.form-pengembalian')[0]),
                    async: false,
                    processData: false,
                    contentType: false
                })
                .done(response =>{
                    showData();
                    $('.alert').fadeIn();

                    setTimeout(()=>{
                        $('.alert').fadeOut();
                    }, 3000);
                })
                .fail(errors =>{
                    alert('Tidak dapat menyimpan data');
                    return;
                });
            }
        });
    });

</script>
@endpush

    