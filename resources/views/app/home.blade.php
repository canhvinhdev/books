@extends('layout.app')
@section('title')
    Trang chủ
@stop
<?php
use Illuminate\Support\Facades\Storage;
?>

@section('content')
    @include('layout.slide')
    @if(isset($category))
        @foreach($category as $item)
            <div class="container">
            <div class="row">



                <div class="blockTitle">
                    <h2>
                        {{$item->name}}
                    </h2>
                </div>
                <div class="owl-carousel owl-theme">
                @if(isset($product))
                    @foreach($product as $data)
                        @if($item->id == $data->category_id)

                                <div class="item">
                                    <div class="card">
                                        <a href="/product/{{$data->id}}-{{str_slug($data->name)}}"><img src="{{$data->image}}" alt="{{$data->name}}" style="width:100%"></a>
                                        <div class="">
                                            <h4><a href="/product/{{$data->id}}-{{str_slug($data->name)}}">{{$data->name}}</a></h4>
                                            <p>{!! number_format($data->price,0,",",".") !!} VNĐ</p>
                                        </div>
                                    </div>
                                </div>

                        @endif
                    @endforeach
                @endif
                </div>

            </div>
            <script type="text/javascript">

                var owl = $('.owl-carousel');
                owl.owlCarousel({
                    items: 5,
                    loop:true,
                    margin:10,
                    padding: 10,
                    autoplay:true,
                    autoplayTimeout:1000,
                    autoplayHoverPause:true,
                       responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        1000:{
            items: 5
        }
    }
                });

            </script>


        </div>
        @endforeach
    @endif

    <div class="container">
    <div class="row">


        <div class="" style="padding: 20px 0px;">
            <section>
                <div class="panel panel-info col-md-6">
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#home" aria-controls="home" role="tab" data-toggle="tab">Tin mới nhất</a>
                            </li>

                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <div class="panel-body">
                                    <ul class="list_news24h">
                                        @if(isset($new))
                                            @foreach($new as $item)
                                            <li class="clearfix"><span class="time_list_news24h">  <span class="label label-danger">{{$item->created_at}}</span></span><a href="/chi-tiet-bai-viet/{{$item->id}}-{{str_slug($item->name)}}">{{$item->name}}</a></li>
                                            @endforeach
                                        @endif
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-info col-md-6">
                   <iframe width="100%" height="315" src="https://www.youtube.com/embed/D1nYPf_4-gc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div>
            </section>
        </div>
    </div>
</div>
@endsection
