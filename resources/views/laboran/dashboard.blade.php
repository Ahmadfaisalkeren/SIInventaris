@extends('layouts.master')

@section('breadcrumb')
    @parent 
    <li class="active">Dashboard</li>
@endsection

@section('content')      
    @if (auth()->user()->level == 5)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Petugas Laboran Laboratorium Hardware</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @elseif (auth()->user()->level == 6)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Petugas Laboran Laboratorium Multimedia</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @elseif (auth()->user()->level == 7)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Petugas Laboran Laboratorium Software</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection