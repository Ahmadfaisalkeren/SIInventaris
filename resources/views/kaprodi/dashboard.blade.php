@extends('layouts.master')

@section('breadcrumb')
    @parent 
    <li class="active">Dashboard</li>
@endsection

@section('content')
     <!-- Small boxes (Stat box) -->
     <div class="row">
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>{{ $databarang }}</h3>
              <p>Total Barang Laboratorium Hardware</p>
            </div>
            <div class="icon">
              <i class="fa fa-tv"></i>
            </div>
            <a href="{{ route('databarang.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>{{ $databarang2 }}</h3>
              <p>Total Barang Laboratorium Multimedia</p>
            </div>
            <div class="icon">
              <i class="fa fa-object-group"></i>
            </div>
            <a href="{{ route('databarang2.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>{{ $databarang3 }}</h3>
              <p>Total Barang Laboratorium Software</p>
            </div>
            <div class="icon">
              <i class="fa fa-archive"></i>
            </div>
            <a href="{{ route('databarang3.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>{{ $laboratorium }}</h3>
              <p>Total Laboratorium</p>
            </div>
            <div class="icon">
              <i class="fa fa-desktop"></i>
            </div>
            <a href="{{ route('laboratorium.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>{{ $kategori }}</h3>
              <p>Total Kategori</p>
            </div>
            <div class="icon">
              <i class="fa fa-list-alt"></i>
            </div>
            <a href="{{ route('kategori.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>{{ $member }}</h3>
              <p>Total Member</p>
            </div>
            <div class="icon">
              <i class="fa fa-child"></i>
            </div>
            <a href="{{ route('member.index') }}" class="small-box-footer">Lihat <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      
@endsection