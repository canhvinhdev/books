@extends('layout.app')
@section('title')
    Trang danh mục sản phẩm  ---- {{$data->name}}
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
        <li class="active">
            {{$data->name}}
        </li>
    </ol>

</div>

<div class="container">

    <div class="row">

        @if(isset($product))
            @foreach($product as $item)
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                <div class="item">

                    <div class="card">
                        <a href="/product/{{$item->id}}-{{str_slug($item->name)}}"> <img src="{!! asset($item->image) !!}"  alt="{!! $item->name !!}" style="width:100%"></a>
                        <div class="">
                            <a href="/product/{{$item->id}}-{{str_slug($item->name)}}"> <h4><b>{!! $item->name !!}</b></h4> </a>
                            <p>{!! number_format($item->price,0,",",".") !!} VNĐ</p>
                        </div>
                    </div>

                </div>
            </div>
            @endforeach
        @else

 <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
        Hiện tại danh mục này chưa có sản phẩm ! 
    </div>
        @endif

    </div>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
        {!! $product->links() !!}
    </div>
</div>
@endsection