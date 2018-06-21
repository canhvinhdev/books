@extends('layout.app')
@section('title')
    Trang chi tiết - {{$product->name}}
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
        <li>
            <a href="/danh-sach-san-pham/{{$data->id}}-{{str_slug($data->name)}}">{!! $data->name !!}</a>
        </li>
        <li class="active">{{$product->name}}</li>
    </ol>

</div>
<?php  $user = Auth::user();?>
<div class="container">

    <div class="row">

        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            <div id="carousel-id" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-id" data-slide-to="0" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide" src="{{ $product->image }}" width="100%">

                    </div>

                     <div class="item ">
                        <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide" src="{{ $product->image }}" width="100%">

                    </div>


                     <div class="item ">
                        <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide" src="{{ $product->image }}" width="100%">

                    </div>
                    
                </div>
                <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <div class="product-title">
                <h2>{{$product->name}}</h2>

               {{-- <span id="pro_sku">Mã sp: SF021-1</span>--}}

            </div>
            @if(isset($product_promtion))
            <h4 class="price">Giá hiện tại:
            <div class="product-price label-da price" id="price-preview" style="color: red; font-weight: 600; font-size: 30px"><s><span>{!! number_format($product->price,0,",",".") !!} VNĐ</span></s></div>
            </h4>

            <h4 class="price">Giá áp dụng khuyến mãi:
            <div class="product-price label-da price" id="price-preview" style="color: red; font-weight: 600; font-size: 30px"><span>{!! number_format($product->price - ($product->price * $product_promtion->number_discount/100 ),0,",",".")  !!} VNĐ</span></div>
            </h4>
            @else
            <div class="product-price label-da price" id="price-preview" style="color: red; font-weight: 600; font-size: 30px"><span>{!! number_format($product->price,0,",",".") !!} VNĐ</span></div>
            <h4 class="price">Giá hiện tại: <span>{!! number_format($product->price,0,",",".") !!} VNĐ</span></h4>
            @endif

            <form id="add-item-form" action="/mua-hang" method="post" class="variants clearfix">
                {{ csrf_field() }}
                <div class="select-wrapper ">
                    <label>Số lượng</label>
                    <input id="quantity" type="number" name="quantity" value="1"  class="tc item-quantity" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                    <input name="id" value="{{$product->id}}" class="tc item-quantity" type="hidden">
                </div>


                <div class="row">

                    <div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">
                        <button id="add-to-cart" type="submit" class="btn-detail btn-color-add btn-min-width btn-mgt addtocart-modal" >Thêm vào giỏ</button>
                    </div>



                </div>

                <div>
                    <hr>
                 <strong>   Thông tin Giao hàng & Khuyến mãi </strong> <br>
- Nhận hàng tại:  <br>
- Miễn phí giao hàng toàn quốc cho đơn hàng từ 250.000 đ<br>
- Miễn phí giao hàng tại TP.HÀ NỘI cho đơn hàng từ 150.000 đ<br>
<hr>
                </div>
            </form>



            <div class="pt20">
                <!-- Begin social icons -->
                <div class="addthis_toolbox addthis_default_style ">

                    <div class="info-socials-article clearfix">
                        <div class="box-like-socials-article">
                            <div class="fb-send" data-href="">
                            </div>
                        </div>
                        <div class="box-like-socials-article">
                            <div class="fb-like fb_iframe_widget" data-href="/products/ban-tron-farrah" data-layout="button_count" data-action="like" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=0&amp;href=https%3A%2F%2Fdefault-furniture.myharavan.com%2Fproducts%2Fban-tron-farrah&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey"><span style="vertical-align: bottom; width: 68px; height: 20px;"><iframe name="f1e5ca1ea4eea68" width="1000px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/v2.0/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FRQ7NiRXMcYA.js%3Fversion%3D42%23cb%3Df32c5ed43a53104%26domain%3Ddefault-furniture.myharavan.com%26origin%3Dhttps%253A%252F%252Fdefault-furniture.myharavan.com%252Ff351c2e96a6877c%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fdefault-furniture.myharavan.com%2Fproducts%2Fban-tron-farrah&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey" style="border: none; visibility: visible; width: 68px; height: 20px;" class=""></iframe></span></div>
                        </div>
                        <br>
                        <div class="box-like-socials-article">
                            <div class="fb-share-button fb_iframe_widget" data-href="/products/ban-tron-farrah" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;container_width=0&amp;href=https%3A%2F%2Fdefault-furniture.myharavan.com%2Fproducts%2Fban-tron-farrah&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey"><span style="vertical-align: bottom; width: 78px; height: 20px;"><iframe name="f173bf44eed31cc" width="1000px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" title="fb:share_button Facebook Social Plugin" src="https://www.facebook.com/v2.0/plugins/share_button.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FRQ7NiRXMcYA.js%3Fversion%3D42%23cb%3Df1cc7e6a2125e44%26domain%3Ddefault-furniture.myharavan.com%26origin%3Dhttps%253A%252F%252Fdefault-furniture.myharavan.com%252Ff351c2e96a6877c%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fdefault-furniture.myharavan.com%2Fproducts%2Fban-tron-farrah&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey" style="border: none; visibility: visible; width: 78px; height: 20px;" class=""></iframe></span></div>
                        </div>
                    </div>


                </div>
                <!-- End social icons -->
            </div>

        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#home" aria-controls="home" role="tab" data-toggle="tab">Mô tả sản phẩm</a>
                    </li>

                    <li role="presentation">
                        <a href="#tab" aria-controls="tab" role="tab" data-toggle="tab">Bình luận</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                              {!! $product->content !!}


                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab">
                        <div class="panel panel-info ">
                            <form action="{!! route('comment') !!}" method="POST" role="form">
                                {{ csrf_field() }}
                                <div class="panel-body comments">
                                    @if(isset($comment))
                                        @foreach($comment as $item)
                                            @if($item->sub_id == 0)
                                            <span class="label-success padding_10">{!! $item->username !!}</span><br>
                                            <p>
                                                <p>{!! $item->content !!}</p>
                                                @foreach($comment as $data)
                                                    @if($item->id == $data->sub_id)
                                                    <div class="panel-body comments">
                                                        <span class="label-danger padding_10">  <i class="fa fa-comments"></i> {!! $data->username !!} </span><br>
                                                        <p>{!! $data->content !!}</p>
                                                    </div>
                                                @endif
                                                @endforeach
                                            </p>
                                            @endif
                                        @endforeach
                                    @endif


                                    <input type="hidden" name="user_id"  class="form-control col-md-3" @if(isset($user)) value="{{$user->id}}"  @endif required="required" >
                                    <input type="hidden" name="product_id"  class="form-control col-md-3" value="{{$product->id}}" required="required" >
                                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                    <input type="text" name="content" id="input" class="form-control col-md-3" value="" required="required" >
                                </div>
                                @if(isset($user))
                                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                        <button type="submit" class="btn btn-info">Gửi</button>
                                    </div>
                                @else
                                    <div class="panel-body comments">
                                        <p>
                                            <span> <i class="fa fa-comments"></i><a href="/dang-nhap"> Đăng nhập để được có thể bình luận</a></span>
                                        </p>
                                    </div>
                                @endif

                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="">
            <div class="">
                <div class="blockTitle">
                    <h2>
                        SẢN PHẨM LIÊN QUAN
                    </h2>

                </div>
          

                <div class="owl-carousel2 owl-carousel owl-theme">
                 @if(isset($related_products))
                    @foreach($related_products as $data)
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
                @endif


                    </div>
                </div>
            </div>
            <script type="text/javascript">
                var owl = $('.owl-carousel2');
                owl.owlCarousel({
                    items:4,
                    loop:true,
                    margin:10,
                    autoplay:true,
                    autoplayTimeout:9000,
                    autoplayHoverPause:true
                });
            </script>
        </div>
    </div>
</div>



</div>
</div>
@endsection