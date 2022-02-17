@extends('layouts.master')

@section('breadcrumb')
    @parent 
    <li class="active">Dashboard</li>
@endsection

@section('content')      
    @if (auth()->user()->level == 2)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Kepala Laboratorium Hardware</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @elseif (auth()->user()->level == 3)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Kepala Laboratorium Multimedia</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @elseif (auth()->user()->level == 4)
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body text-center">
                    <h1>Selamat Datang</h1>
                    <h2>Anda Login Sebagai Kepala Laboratorium Software</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection