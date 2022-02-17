<div class="modal fade" id="modal-peminjaman" tabindex="-1" role="dialog" aria-labelledby="modal-peminjaman">
    <div class="modal-dialog modal-lg" role="document">
       

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Pilih Peminjaman</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-striped table-bordered table-peminjaman">
                        <thead>
                            <th>No</th>
                            <th>Tanggal Peminjaman</th>
                            <th>Nama Member</th>
                            <th>NIM / NIDN / NPP</th>
                            <th>Nama Barang</th>
                            <th>Merk</th>
                            <th>Status Peminjaman</th>
                            <th><i class="fa fa-cog"></i></th>
                        </thead>
                        <tbody>
                            @foreach ($peminjaman as $key => $item)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ tanggal_indonesia($item->peminjaman->created_at, false)}}</td>
                                    <td>{{ $item->peminjaman->member->nama}}</td>
                                    <td>{{ $item->peminjaman->member->nim }}</td>
                                    <td>{{ $item->databarang->nama_barang }}</td>
                                    <td>{{ $item->databarang->merk }}</td>
                                    <td><span class="label label-success">{{ $item->status->status_transaksi}}</span></td>
                                    <td>
                                        <a href="{{ route('pengembalian2.create', $item->id_peminjaman) }}" class="btn btn-primary btn-xs btn-flat btn-simpan">
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
@push('scripts')
<script>
    $(function () {
        $("#btn-simpan").on("click", function() {
            $(this).prop("disabled", true);
        });
    });

</script>
@endpush