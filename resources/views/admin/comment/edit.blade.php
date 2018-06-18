@extends('layout.admin')

@section('title')
Quản lý bình luận
@endsection

@section('css')
@endsection

@section('content')

    <ol class="breadcrumb">
        <li><a href="/admin"><i class="fa fa-home"></i> Trang quản trị</a></li>
        <li class="active"><a href="/admin/comment/list">Phản hồi</a></li>
        <li class="active"><a href="#">Chi tiết phản hồi</a></li>
    </ol>
    <form action="{!! route('admin.comment.store') !!}" method="post">
    <div class="col-xs-12">
        {{ csrf_field() }}
        <img src="{{asset('adminlte/images/profile.png')}}" alt="profile" class="img-thumbnail pull-left"> <strong>{{$user->username}}</strong> <span class="hidden-xs">({{$user->email}})</span><br><small><i class="fa fa-calendar"></i> {{$comment->created_at}}</small>
        <hr>

        {{--<input type="checkbox" name="" id="input" class="" value="" required="required" title="">Hiển thị bình luận--}}




        <div id="" class="col-md-6 text-justify">
                {!! $comment->content !!}
        </div>

        <div id="" class="col-md-6 text-justify">

            <div class="panel panel-info">

                <div class="panel-body">
                    <img src="{{asset($product->image)}}" class="img-responsive" alt="{{$product->name}}">
                    <hr>
                    <a href="{{ route('admin.product.edit', ['id' => $product->id]) }}"><button type="button" class="btn btn-default">Xem sản phẩm</button></a>
                </div>
            </div>
        </div>
        <input type="hidden" name="id" id="input" class="" value="{!! $comment->id !!}" required="required" title="">


        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-8">


            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-bottom: 40px">
            <hr>
            Trả lời bình luận
            <textarea name="content"  class="form-control" rows="3" required="required"></textarea>
            <hr>
            <button type="submit" class="btn btn-success left">Gửi trả lời</button>
            <a class="btn btn-warning" href="/admin/user/list"><i class="fa fa-reply"></i> Trở về</a>

        </div>




    </div>
    </form>
<

@endsection

@section('script')

@endsection

