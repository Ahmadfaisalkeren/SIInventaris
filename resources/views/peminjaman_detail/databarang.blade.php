<div class="modal fade" id="modal-databarang" tabindex="-1" role="dialog" aria-labelledby="modal-databarang">
    <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Pilih Barang</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-striped table-bordered table-barang">
                        <thead>
                            <th width="5%">No</th>
                            <th>Kode Barang</th>
                            <th>Nama Barang</th>
                            <th>Merk</th>
                            <th>Kondisi</th>
                            <th><i class="fa fa-cog"></i></th>
                        </thead>
                        <tbody>
                            @foreach ($databarang as $key => $item)
                                <tr>
                                    <td width="5%">{{ $key+1 }}</td>
                                    <td><span class="label label-success">{{ $item->kode_barang}}</span></td>
                                    <td>{{ $item->nama_barang}}</td>
                                    <td>{{ $item->merk}}</td>
                                    <td>{{ $item->kondisi}}</td>
                                    <td>
                                        <a href="#" class="btn btn-primary btn-xs btn-flat"
                                        onclick="pilihBarang('{{$item->id_barang}}','{{$item->kode_barang}}')">
                                        <i class="fa fa-check-circle"></i>
                                        Pilih
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
               
            </div>
        
    </div>
</div>