@extends('layouts.master')

@section('title')
   Transaksi Peminjaman
@endsection

@push('css')
<style>
    .table-peminjaman tbody tr:last-child{
        display: none;
    }
</style>
@endpush


@section('breadcrumb')
    @parent
    <li class="active">Transaksi Peminjaman</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
                <table>
                    <tr>
                        <td>Nama</td>
                        <td>: {{$member->nama}}</td>
                    </tr>
                    <tr>
                        <td>NIM / NIDN / NPP</td>
                        <td>: {{$member->nim}}</td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>: {{$member->status}}</td>
                    </tr>
                    <tr>
                        <td>Telepon</td>
                        <td>: {{$member->telepon}}</td>
                    </tr>
                </table>
            </div>
            <div class="box-body">
                <form class="form-barang">
                    @csrf
                    <div class="form-group row">
                        <label for="kode_barang" class="col-lg-2">Kode Barang</label>
                        <div class="col-lg-5">
                            <div class="input-group">
                                <input type="hidden" name="id_peminjaman" id="id_peminjaman" value="{{ $id_peminjaman }}">
                                <input type="hidden" name="id_barang" id="id_barang">
                                <input type="text" class="form-control" name="kode_barang" id="kode_barang">
                                <span class="input-group-btn">
                                    <button onclick="tampilBarang()" class="btn btn-info btn flat" type="button"><i class="fa fa-arrow-right"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </form>

                <table class="table table-striped table-bordered table-peminjaman">
                    <thead>
                        <th width="5%">No</th>
                        <th>Kode Barang</th>
                        <th>Nama Barang</th>
                        <th>Merk</th>
                        <th>Kondisi</th>
                        <th width="15%"><i class="fa fa-cog"></i> Aksi</th>
                    </thead>
                </table>

                <div class="row">
                    <div class="col-lg-10">
                        <form action="{{ route('peminjaman2.store') }}" class="form-peminjaman" method="post">
                            @csrf
                            <input type="hidden" name="id_peminjaman" value="{{ $id_peminjaman }}">
                            <input type="hidden" name="id_status" id="id_status">
                            <input type="hidden" name="id_laboratorium" id="id_laboratorium" value=3>
                            
                            <div class="form-group row">
                                <label for="id_status" class="col-lg-2 control-label"></label>
                                <div class="col-lg-4">
                                    <input type="hidden" id="id_status" name="id_status" class="form-control" value="1">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary btn-sm btn-flat pull-right btn-simpan"><i class="fa fa-floppy-o">
                    Simpan Transaksi
                </i></button>
            </div>
        </div>
    </div>
</div>

@includeIf('peminjaman_detail2.databarang')
@endsection

@push('scripts')
<script>
    let table, table2;
    $(function () {
        table = $('.table-peminjaman').DataTable({
            processing: true,
            autoWidth: false,
            ajax: {
                url: '{{ route('peminjaman_detail2.data',$id_peminjaman) }}',
            },
            columns: [
                {data: 'DT_RowIndex', searchable: false, sortable: false},
                {data: 'kode_barang'},
                {data: 'nama_barang'},
                {data: 'merk'},
                {data: 'kondisi'},
                {data: 'aksi', searchable: false, sortable: false},
            ],
            dom: 'Brt',
            bSort: false,
        });
        table2 = $('.table-barang').DataTable();


        $('.btn-simpan').on('click', function(){
            $('.form-peminjaman').submit();
        });
    });

    $('.btn-simpan').on('click',function(){
        $('.form-peminjaman').submit();
    })

    function tampilBarang() {
        $('#modal-databarang').modal('show');
        
    }
    
    function hideBarang(){
        $('#modal-databarang').modal('hide');
    }

    function pilihBarang(id,kode){
        $('#id_barang').val(id);
        $('#kode_barang').val(kode);
        hideBarang();
        tambahBarang();
    }
    function tambahBarang(){
        $.post('{{route('peminjaman_detail2.store')}}',$('.form-barang').serialize())
        .done(response=>{
            $('#kode_barang').focus();
            table.ajax.reload();
        })
        .fail(errors=>{
            alert('Tidak dapat menyimpan data');
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
</script>
@endpush