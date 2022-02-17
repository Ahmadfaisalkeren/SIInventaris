<div class="modal fade" id="modal-form-mutasi" tabindex="-1" role="dialog" aria-labelledby="modal-mutasi">
    <div class="modal-dialog modal-lg" role="document">
        <form action="" method="post" class="form-horizontal">
            @csrf
            @method('post')
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">                
                    <div class="form-group row">
                        <label for="id_laboratorium" class="col-lg-2 col-lg-offset-1 control-label">Pilih Laboratorium</label>
                        <div class="col-lg-6">
                            <select name="id_laboratorium" class="form-control" id="id_laboratorium" required>
                                <option value="1">Laboratorium Hardware</option>
                                <option value="2">Laboratorium Multimedia</option>
                                <option value="3">Laboratorium Software</option>
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-sm btn-flat btn-primary"><i class="fa fa-save"></i> Simpan</button>
                    <button type="button" class="btn btn-sm btn-flat btn-warning" data-dismiss="modal"><i class="fa fa-arrow-circle-left"></i> Batal</button>
                </div>
            </div>
        </form>
    </div>
</div>