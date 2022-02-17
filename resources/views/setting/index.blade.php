@extends('layouts.master')

@section('title')
    Pengaturan
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Pengaturan</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <form action="{{route('setting.update')}}" class="form-setting" method="post" data-toggle="validator" enctype="multipart/form-data">
            @csrf
            <div class="box-body">
                <div class="alert alert-info alert-dismissable" style="display: none;">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="icon fa fa-check"></i>Perubahan Berhasil Disimpan
                </div>
                <div class="form-group row">
                    <label for="nama_laboratorium" class="col-lg-2 col-lg-offset-1 control-label">Label Kartu</label>
                    <div class="col-lg-6">
                        <input type="text" name="nama_laboratorium" class="form-control" id="nama_laboratorium" required autofocus>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="telepon" class="col-lg-2 col-lg-offset-1 control-label">Telepon</label>
                    <div class="col-lg-6">
                        <input type="text" name="telepon" class="form-control" id="telepon" required>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="alamat" class="col-lg-2 col-lg-offset-1 control-label">Alamat</label>
                    <div class="col-lg-6">
                        <input type="text" name="alamat" class="form-control" id="alamat" required>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="path_logo" class="col-lg-2 col-lg-offset-1 control-label">Logo</label>
                    <div class="col-lg-4">
                        <input type="file" name="path_logo" class="form-control" id="path_logo"
                        onchange="preview('.tampil-logo', this.files[0])">                            
                        <span class="help-block with-errors"></span>
                        <br>
                        <div class="tampil-logo"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="path_kartu_member" class="col-lg-2 col-lg-offset-1 control-label">Kartu Member</label>
                    <div class="col-lg-4">
                        <input type="file" name="path_kartu_member" class="form-control" id="path_kartu_member"
                        onchange="preview('.tampil-kartu-member', this.files[0])">  
                        <span class="help-block with-errors"></span>
                        <br>
                        <div class="tampil-kartu-member"></div>
                    </div>
                </div>
            </div>  
            <div class="box-footer text-right">
                <button class="btn btn-sm btn-flat btn-primary"><i class="fa fa-save"></i> Simpan Perubahan</button>
            </div> 
            </form>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    $(function () {
        showData();
        $('.form-setting').validator().on('submit', function (e){
            if(! e.preventDefault()){
                $.ajax({
                    url: $('.form-setting').attr('action'),
                    type: $('.form-setting').attr('method'),
                    data: new FormData($('.form-setting')[0]),
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

    function showData(){
        $.get('{{ route('setting.show') }}')
        .done(response=> {
            $('[name=nama_laboratorium]').val(response.nama_laboratorium);
            $('[name=telepon]').val(response.telepon);
            $('[name=alamat]').val(response.alamat);
            $('title').text(response.nama_laboratorium + ' | Pengaturan');
            $('.logo-lg').text(response.nama_laboratorium);

            $('.tampil-logo').html(`<img src="{{ url('/') }}${response.path_logo}" width="200">`);
            $('.tampil-kartu-member').html(`<img src="{{ url('/') }}${response.path_kartu_member}" width="300">`);
            $('[rel=icon]').attr('href', `{{ url('/') }}/${response.path_logo}`);
        })
        .fail(errors=>{
            alert('Tidak dapat menampilkan data');
            return;
        });
    }
</script>
@endpush