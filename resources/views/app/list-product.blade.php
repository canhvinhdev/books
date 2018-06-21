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
                    @foreach($product as $data)
                            <?php $total = null;?>
                            @if(isset($discount))
                            @foreach($discount as $item)
                            <?php 
                                if($item->product_id == $data->id){
                                    $total = $item;
                                }
                            ?>
                            @endforeach
                            @endif
                                <div class="item">
                                    <div class="card">
                                        <a href="/product/{{$data->id}}-{{str_slug($data->name)}}"><img src="{{$data->image}}" alt="{{$data->name}}" style="width:100%"></a>
                                            @if(isset($total))
                                                <img src="/app/images/sale.png" class="img_sale"   alt="">
                                            @endif
                                        <div class="">
                                            <h4><a href="/product/{{$data->id}}-{{str_slug($data->name)}}">{{$data->name}}</a></h4>
                                            @if(isset($total))
                                                <span class="price-new">{!! number_format($data->price -($data->price * $total->number_discount/100),0,",",".") !!} VNĐ</span>
                                                <span><s>{!! number_format($data->price,0,",",".") !!} VNĐ</s></span>
                                            @else
                                                <span class="price-new">{!! number_format($data->price,0,",",".") !!} VNĐ</span>
                                            @endif
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