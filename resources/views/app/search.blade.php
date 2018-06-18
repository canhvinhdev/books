@extends('layout.app')
@section('title')
    Đăng nhập
@stop
@section('content')



<div class="container">

    <div class="row">

<ol class="breadcrumb" style="margin-top: 20px">
    <li>
        <a href="#">Home</a>
    </li>

    <li class="active">Tìm kiếm</li>
</ol>

</div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
            <p>Tìm thấy {!! count($search) !!} kết quả phù hợp với từ khóa</p>
            <hr>
        </div>
        @if(isset($search))
            @foreach($search as $item)
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                <div class="item">
                    <div class="card">
                        <a href="/product/{{$item->id}}-{{str_slug($item->name)}}"><img src="{{$item->image}}" alt="{{$item->name}}" style="width:100%"></a>
                        <div class="container">
                            <a href="/product/{{$item->id}}-{{str_slug($item->name)}}"> <h4><b>{{$item->name}}</b></h4></a>
                            <p>{{$item->price}}</p>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        @endif

    </div>

    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
        {!! $search->links() !!}
    </div>
</div>
@endsection