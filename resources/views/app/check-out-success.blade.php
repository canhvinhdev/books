@extends('layout.app')
@section('title')
    Thanh toán
@stop
@section('content')
<div class="container">
    <ol class="breadcrumb" style="margin-top: 20px">
        <li>
            <a href="#">Home</a>
        </li>

        <li class="active">Thanh toán thành công</li>
    </ol>

</div>
<?php  $user = Auth::user();?>
<div class="container">
  <div class="row">
   <div class="col-md-12 text-center">

    <img src="/app/images/success.png">
  </div>
 </div>

</div>
@endsection