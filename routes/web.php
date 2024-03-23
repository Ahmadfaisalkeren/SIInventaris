<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LaboratoriumController;
use App\Http\Controllers\DatabarangController;
use App\Http\Controllers\Databarang2Controller;
use App\Http\Controllers\Databarang3Controller;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\PeminjamanController;
use App\Http\Controllers\PeminjamanDetailController;
use App\Http\Controllers\PengembalianController;
use App\Http\Controllers\PengembalianDetailController;
use App\Http\Controllers\Peminjaman2Controller;
use App\Http\Controllers\PeminjamanDetail2Controller;
use App\Http\Controllers\Pengembalian2Controller;
use App\Http\Controllers\PengembalianDetail2Controller;
use App\Http\Controllers\Peminjaman3Controller;
use App\Http\Controllers\PeminjamanDetail3Controller;
use App\Http\Controllers\Pengembalian3Controller;
use App\Http\Controllers\PengembalianDetail3Controller;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\Laporan2Controller;
use App\Http\Controllers\Laporan3Controller;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserlaboranController;
use App\Http\Controllers\SettingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',fn() => redirect()->route('login'));

Route::group(['middleware' => 'auth'],function(){
    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');

    Route::group(['middleware' => 'level:1'], function(){

    Route::get('/laboratorium/data',[LaboratoriumController::class,'data'])->name('laboratorium.data');
    Route::resource('/laboratorium',LaboratoriumController::class);

    });

    Route::group(['middleware' => 'level:1,2,3,4,5,6,7'], function(){

    Route::get('/kategori/data',[KategoriController::class,'data'])->name('kategori.data');
    Route::resource('/kategori',KategoriController::class);
    });

    Route::group(['middleware' => 'level:1,2,5'], function(){

    Route::get('/databarang/data',[DatabarangController::class,'data'])->name('databarang.data');
    Route::post('/databarang/delete-selected',[DatabarangController::class,'deleteSelected'])->name('databarang.delete_selected');
    Route::post('/databarang/cetak-barcode',[DatabarangController::class,'cetakBarcode'])->name('databarang.cetak_barcode');
    Route::post('/databarang/cetak-laporan',[DatabarangController::class,'cetakLaporan'])->name('databarang.cetak_laporan');
    Route::resource('/databarang',DatabarangController::class);

    Route::get('/peminjaman/data',[PeminjamanController::class, 'data'])->name('peminjaman.data');
    Route::get('/peminjaman/{id}/create',[PeminjamanController::class, 'create'])->name('peminjaman.create');
    Route::get('/peminjaman/laporan',[PeminjamanController::class, 'laporan'])->name('peminjaman.laporan');
    Route::post('/peminjaman/konfirmasi/{id}',[PeminjamanController::class, 'konfirmasi'])->name('peminjaman.konfirmasi');
    Route::post('/peminjaman/ditolak/{id}',[PeminjamanController::class, 'ditolak'])->name('peminjaman.ditolak');
    Route::resource('/peminjaman', PeminjamanController::class)
        ->except('create');

    Route::get('/peminjaman_detail/{id}/data',[PeminjamanDetailController::class,'data'])->name('peminjaman_detail.data');
    Route::resource('/peminjaman_detail', PeminjamanDetailController::class)
        ->except('create','show','edit');

    Route::get('/pengembalian/data',[PengembalianController::class, 'data'])->name('pengembalian.data');
    Route::get('/pengembalian/{id}/create',[PengembalianController::class, 'create'])->name('pengembalian.create');
    Route::post('/pengembalian/konfirmasi/{id}',[PengembalianController::class, 'konfirmasi'])->name('pengembalian.konfirmasi');
    Route::resource('/pengembalian', PengembalianController::class)
            ->except('create');

    Route::get('/pengembalian_detail/{id}/data',[PengembalianDetailController::class,'data'])->name('pengembalian_detail.data');
    Route::resource('/pengembalian_detail', PengembalianDetailController::class)
            ->except('create','show','edit');

    Route::get('/laporan', [LaporanController::class, 'index'])->name('laporan.index');
    Route::get('/laporan/data/{awal}/{akhir}', [LaporanController::class, 'data'])->name('laporan.data');
    Route::get('/laporan/show/{tanggal}', [LaporanController::class, 'show'])->name('laporan.show');
    Route::get('/laporan/pdf/{awal}/{akhir}', [LaporanController::class, 'exportPDF'])->name('laporan.export_pdf');

    });

    Route::group(['middleware' => 'level:1,3,6'], function(){

    Route::get('/databarang2/data',[Databarang2Controller::class,'data'])->name('databarang2.data');
    Route::post('/databarang2/delete-selected',[Databarang2Controller::class,'deleteSelected'])->name('databarang2.delete_selected');
    Route::post('/databarang2/cetak-barcode',[Databarang2Controller::class,'cetakBarcode'])->name('databarang2.cetak_barcode');
    Route::post('/databarang2/cetak-laporan',[Databarang2Controller::class,'cetakLaporan'])->name('databarang2.cetak_laporan');
    Route::resource('/databarang2',Databarang2Controller::class);

    Route::get('/peminjaman2/data',[Peminjaman2Controller::class, 'data'])->name('peminjaman2.data');
    Route::get('/peminjaman2/{id}/create',[Peminjaman2Controller::class, 'create'])->name('peminjaman2.create');
    Route::post('/peminjaman2/konfirmasi/{id}',[Peminjaman2Controller::class, 'konfirmasi'])->name('peminjaman2.konfirmasi');
    Route::resource('/peminjaman2', Peminjaman2Controller::class)
        ->except('create');

    Route::get('/peminjaman_detail2/{id}/data',[PeminjamanDetail2Controller::class,'data'])->name('peminjaman_detail2.data');
    Route::resource('/peminjaman_detail2', PeminjamanDetail2Controller::class)
        ->except('create','show','edit');

    Route::get('/pengembalian2/data',[Pengembalian2Controller::class, 'data'])->name('pengembalian2.data');
    Route::get('/pengembalian2/{id}/create',[Pengembalian2Controller::class, 'create'])->name('pengembalian2.create');
    Route::post('/pengembalian2/konfirmasi/{id}',[Pengembalian2Controller::class, 'konfirmasi'])->name('pengembalian2.konfirmasi');
    Route::resource('/pengembalian2', Pengembalian2Controller::class)
            ->except('create');

    Route::get('/pengembalian_detail2/{id}/data',[PengembalianDetail2Controller::class,'data'])->name('pengembalian_detail2.data');
    Route::resource('/pengembalian_detail2', PengembalianDetail2Controller::class)
            ->except('create','show','edit');

    Route::get('/laporan2', [Laporan2Controller::class, 'index'])->name('laporan2.index');
    Route::get('/laporan2/data/{awal}/{akhir}', [Laporan2Controller::class, 'data'])->name('laporan2.data');
    Route::get('/laporan2/show/{tanggal}', [Laporan2Controller::class, 'show'])->name('laporan2.show');
    Route::get('/laporan2/pdf/{awal}/{akhir}', [Laporan2Controller::class, 'exportPDF'])->name('laporan2.export_pdf');

    });
    Route::group(['middleware' => 'level:1,4,7'], function(){

    Route::get('/databarang3/data',[Databarang3Controller::class,'data'])->name('databarang3.data');
    Route::post('/databarang3/delete-selected',[Databarang3Controller::class,'deleteSelected'])->name('databarang3.delete_selected');
    Route::post('/databarang3/cetak-barcode',[Databarang3Controller::class,'cetakBarcode'])->name('databarang3.cetak_barcode');
    Route::post('/databarang3/cetak-laporan',[Databarang3Controller::class,'cetakLaporan'])->name('databarang3.cetak_laporan');
    Route::post('/databarang3/cetak-jumlah',[Databarang3Controller::class,'cetakJumlah'])->name('databarang3.cetak_jumlah');
    Route::resource('/databarang3',Databarang3Controller::class);

    Route::get('/peminjaman3/data',[Peminjaman3Controller::class, 'data'])->name('peminjaman3.data');
    Route::get('/peminjaman3/{id}/create',[Peminjaman3Controller::class, 'create'])->name('peminjaman3.create');
    Route::post('/peminjaman3/konfirmasi/{id}',[Peminjaman3Controller::class, 'konfirmasi'])->name('peminjaman3.konfirmasi');
    Route::resource('/peminjaman3', Peminjaman3Controller::class)
        ->except('create');

    Route::get('/peminjaman_detail3/{id}/data',[PeminjamanDetail3Controller::class,'data'])->name('peminjaman_detail3.data');
    Route::resource('/peminjaman_detail3', PeminjamanDetail3Controller::class)
         ->except('create','show','edit');

    Route::get('/pengembalian3/data',[Pengembalian3Controller::class, 'data'])->name('pengembalian3.data');
    Route::get('/pengembalian3/{id}/create',[Pengembalian3Controller::class, 'create'])->name('pengembalian3.create');
    Route::post('/pengembalian3/konfirmasi/{id}',[Pengembalian3Controller::class, 'konfirmasi'])->name('pengembalian3.konfirmasi');
    Route::resource('/pengembalian3', Pengembalian3Controller::class)
            ->except('create');

    Route::get('/pengembalian_detail3/{id}/data',[PengembalianDetail3Controller::class,'data'])->name('pengembalian_detail3.data');
    Route::post('/pengembalian_detail3/konfirmasi/{id}',[PengembalianDetail3Controller::class, 'konfirmasi'])->name('pengembalian_detail3.konfirmasi');
    Route::resource('/pengembalian_detail3', PengembalianDetail3Controller::class)
            ->except('create','show','edit');

    Route::get('/laporan3', [Laporan3Controller::class, 'index'])->name('laporan3.index');
    Route::get('/laporan3/data/{awal}/{akhir}', [Laporan3Controller::class, 'data'])->name('laporan3.data');
    Route::get('/laporan3/show/{tanggal}', [Laporan3Controller::class, 'show'])->name('laporan3.show');
    Route::get('/laporan3/pdf/{awal}/{akhir}', [Laporan3Controller::class, 'exportPDF'])->name('laporan3.export_pdf');
    });

    Route::group(['middleware' => 'level:1,2,3,4,5,6,7'], function(){

    Route::get('/member/data',[MemberController::class,'data'])->name('member.data');
    Route::resource('/member',MemberController::class);
    Route::post('/member/cetak-member',[MemberController::class,'cetakMember'])->name('member.cetak_member');

    Route::get('/profil', [UserController::class, 'profil'])->name('user.profil');
    Route::post('/profil', [UserController::class, 'updateProfil'])->name('user.update_profil');

    });
    Route::group(['middleware' => 'level:2,3,4'], function(){

    Route::get('/userlaboran/data',[UserlaboranController::class,'data'])->name('userlaboran.data');
    Route::resource('/userlaboran', UserlaboranController::class);

    });
    Route::group(['middleware' => 'level:1'], function(){

    Route::get('/user/data',[UserController::class,'data'])->name('user.data');
    Route::resource('/user', UserController::class);

    Route::get('/setting', [SettingController::class, 'index'])->name('setting.index');
    Route::get('/setting/first', [SettingController::class, 'show'])->name('setting.show');
    Route::post('/setting', [SettingController::class, 'update'])->name('setting.update');

    });
});
