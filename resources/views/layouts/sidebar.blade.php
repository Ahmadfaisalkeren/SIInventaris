<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{url(auth()->user()->foto ?? '')}}" class="img-circle img-profil" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{auth()->user()->name}}</p>
          <a href="#"><i class="fa fa-circle text-success"></i></a>
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        
        <li class="active treeview">
        <li>
          <a href="{{route('dashboard')}}">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>

        @if (auth()->user()->level == 1)
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Data Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{route('databarang.index')}}"><i class="fa fa-tv"></i> Laboratorium Hardware</a></li>
            <li><a href="{{route('databarang2.index')}}"><i class="fa fa-object-group"></i> Laboratorium Multimedia</a></li>
            <li><a href="{{route('databarang3.index')}}"><i class="fa fa-archive"></i> Laboratorium Software</a></li>
            <li><a href="{{route('laboratorium.index')}}"><i class="fa fa-desktop"></i> Laboratorium</a></li>
            <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> Kategori</a></li>
            <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i> Member</a></li>
          </ul>
        </li>
        <li class="header">Transaksi</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span> Laboratorium Hardware</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{route('peminjaman.index')}}"><i class="fa fa-arrow-right"></i>Peminjaman</a></li>
            <li><a href="{{route('pengembalian.index')}}"><i class="fa fa-arrow-left"></i>Pengembalian</a></li>
            <li><a href="{{route('laporan.index')}}"><i class="fa fa-arrow-left"></i>Laporan Transaksi</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span> Laboratorium Multimedia</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{route('peminjaman2.index')}}"><i class="fa fa-arrow-right"></i>Peminjaman</a></li>
            <li><a href="{{route('pengembalian2.index')}}"><i class="fa fa-arrow-left"></i>Pengembalian</a></li>
            <li><a href="{{route('laporan2.index')}}"><i class="fa fa-arrow-left"></i>Laporan Transaksi</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span> Laboratorium Software</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{route('peminjaman3.index')}}"><i class="fa fa-arrow-right"></i>Peminjaman</a></li>
            <li><a href="{{route('pengembalian3.index')}}"><i class="fa fa-arrow-left"></i>Pengembalian</a></li>
            <li><a href="{{route('laporan3.index')}}"><i class="fa fa-arrow-left"></i>Laporan Transaksi</a></li>
          </ul>
        </li>
        <li class="header">Sistem</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span> Sistem</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{route('user.index')}}"><i class="fa fa-server"></i> Akun Kalab</a></li>
            <li><a href="{{route('setting.index')}}"><i class="fa fa-cog"></i> Pengaturan</a></li>
          </ul>
        </li>

        @elseif (auth()->user()->level == 2)
        <li class="header">Data Master</li>
        <li><a href="{{route('databarang.index')}}"><i class="fa fa-tv"></i> 
        <span>Laboratorium Hardware<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> 
        <span>Kategori<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i> 
        <span>Member<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li class="header">Transaksi</li>
            <li><a href="{{route('peminjaman.index')}}"><i class="fa fa-arrow-right"></i>
            <span>Peminjaman</span>
            <span class="pull-right-container"></span>
            </a></li>
            <li><a href="{{route('pengembalian.index')}}"><i class="fa fa-arrow-left"></i>
            <span>Pengembalian<span>
            <span class="pull-right-container"></span>
            </a></li>
            <li><a href="{{route('laporan.index')}}"><i class="fa fa-file"></i>
            <span>Laporan Transaksi<span>
            <span class="pull-right-container"></span>
            </a></li>
        <li class="header">Sistem</li>
            <li><a href="{{route('userlaboran.index')}}"><i class="fa fa-user"></i> 
            <span>Akun Laboran<span>
            <span class="pull-right-container"></span> 
            </a></li>
        
        @elseif (auth()->user()->level == 3)
        <li class="header">Data Master</li>
        <li><a href="{{route('databarang2.index')}}"><i class="fa fa-tv"></i> 
        <span> Multimedia<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> 
        <span>Kategori<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i> 
        <span> Member <span>
        <span class="pull-right-container"></span>
        </a></li>
        <li class="header">Transaksi</li>
            <li><a href="{{route('peminjaman2.index')}}"><i class="fa fa-arrow-right"></i>
            <span>Peminjaman<span>
            <span class="pull-right-container"></span>
            </a></li>
            <li><a href="{{route('pengembalian2.index')}}"><i class="fa fa-arrow-left"></i>
            <span> Pengembalian<span>
            <span class="pull-right-container"></span>
            </a></li>
            <li><a href="{{route('laporan2.index')}}"><i class="fa fa-file"></i>
            <span>Laporan Transaksi<span>
            <span class="pull-right-container"></span>
            </a></li>
        <li class="header">Sistem</li>
            <li><a href="{{route('userlaboran.index')}}"><i class="fa fa-user"></i>
            <span> Akun Laboran<span>
            <span class="pull-right-container"></span>
            </a></li>

        @elseif (auth()->user()->level == 4)
        <li class="header">Data Master</li>
        <li><a href="{{route('databarang3.index')}}"><i class="fa fa-tv"></i> 
        <span> Laboratorium Software<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i>
        <span>Kategori<span>
        <span class="pull-right-container"></span>
        </a></li>
        <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i>
        <span>Member</span><span class="pull-right-container"></span>
      </a></li>
        <li class="header">Transaksi</li>
            <li><a href="{{route('peminjaman3.index')}}"><i class="fa fa-arrow-right"></i>
            <span>Peminjaman</span><span class="pull-right-container"></span></a></li>
            <li><a href="{{route('pengembalian3.index')}}"><i class="fa fa-arrow-left"></i>
            <span>Pengembalian</span><span class="pull-right-container"></span></a></li>
            <li><a href="{{route('laporan3.index')}}"><i class="fa fa-file"></i>
            <span>Laporan Transaksi</span><span class="pull-right-container"></span></a></li>
        <li class="header">Sistem</li>
            <li><a href="{{route('userlaboran.index')}}"><i class="fa fa-user"></i>
            <span>Akun Laboran</span><span class="pull-right-container"></span></a></li>

          @elseif (auth()->user()->level == 5)
          <li class="header">Data Master</li>
          <li><a href="{{route('databarang.index')}}"><i class="fa fa-tv"></i> 
          <span>Laboratorium Hardware</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> 
          <span>Kategori</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i> 
          <span>Member</span><span class="pull-right-container"></span></a></li>
          <li class="header">Transaksi</li>
          <li><a href="{{route('peminjaman.index')}}"><i class="fa fa-arrow-right"></i>
          <span>Peminjaman</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('pengembalian.index')}}"><i class="fa fa-arrow-left"></i>
          <span>Pengembalian</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('laporan.index')}}"><i class="fa fa-file"></i>
          <span>Laporan Transaksi</span><span class="pull-right-container"></span></a></li>

          @elseif (auth()->user()->level == 6)
          <li class="header">Data Master</li>
          <li><a href="{{route('databarang2.index')}}"><i class="fa fa-tv"></i>
          <span>Laboratorium Multimedia</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> 
          <span>Kategori</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i> 
          <span>Member</span><span class="pull-right-container"></span></a></li>
          <li class="header">Transaksi</li>
          <li><a href="{{route('peminjaman2.index')}}"><i class="fa fa-arrow-right"></i>
          <span>Peminjaman</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('pengembalian2.index')}}"><i class="fa fa-arrow-left"></i>
          <span>Pengembalian</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('laporan2.index')}}"><i class="fa fa-file"></i>
          <span>Laporan Transaksi</span><span class="pull-right-container"></span></a></li>

          @elseif (auth()->user()->level == 7)
          <li class="header">Data Master</li>
          <li><a href="{{route('databarang3.index')}}"><i class="fa fa-tv"></i> 
          <span>Laboratorium Software</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('kategori.index')}}"><i class="fa fa-list-alt"></i> 
          <span>Kategori</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('member.index')}}"><i class="fa fa-child"></i>
          <span>Member</span><span class="pull-right-container"></span></a></li>
          <li class="header">Transaksi</li>
          <li><a href="{{route('peminjaman3.index')}}"><i class="fa fa-arrow-right"></i>
          <span>Peminjaman</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('pengembalian3.index')}}"><i class="fa fa-arrow-left"></i>
          <span>Pengembalian</span><span class="pull-right-container"></span></a></li>
          <li><a href="{{route('laporan3.index')}}"><i class="fa fa-file"></i>
          <span>Laporan Transaksi</span><span class="pull-right-container"></span></a></li>
        @endif
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>