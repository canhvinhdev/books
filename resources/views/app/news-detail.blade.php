@extends('layout.app')
@section('title')
    Trang chi tiết - {{$news_detail->name}}
@stop
<?php
use Illuminate\Support\Facades\Storage;
?>
@section('content')
<div class="container">
    <ol class="breadcrumb" style="margin-top: 20px">
        <li>
            <a href="/">Trang chủ</a>
        </li>
       
        <li class="active">{{$news_detail->name}}</li>
    </ol>

</div>
<?php  $user = Auth::user();?>
<div class="container">

    <div class="row">

      
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="product-title">
                <h4>{{$news_detail->name}}</h4>

           

            </div>
         <hr>
Ngày đăng: {{$news_detail->created_at}}



<hr>
<div class="short_new" >
 {{strip_tags ($news_detail->description)}}
</div>

<hr>
<strong>Nội dung đầy đủ</strong>
<br>
 {{ strip_tags ($news_detail->content)}}


        </div>
        
    </div>

<div class="">

<br>
<br>
<br>
</div>



</div>
</div>
@endsection