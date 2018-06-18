@extends('layout.admin')

@section('title')
    Quản lý
@endsection

@section('content')


    <ol class="breadcrumb">
        <li><a href="/admin"><i class="fa fa-home"></i> Trang quản trị</a></li>
    </ol>
    <div class="col-xs-12">
        <div class="menu">
            <a href="/admin" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-home"></i><br> <span>Trang quản trị</span>
            </a>
            <a href="/admin/new/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-edit"></i><br> <span>Tin tức</span>
            </a>
            <a href="/admin/product/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-fire"></i><br> <span>Sản phẩm</span>
            </a>
            <a href="/admin/category/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-bars"></i><br> <span>Loại sản phẩm</span>
            </a>
            <a href="/admin/contact/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-envelope-o"></i><br> <span>Phản hồi</span>
            </a>
            <a href="/admin/slide/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-picture-o"></i><br> <span>Slider</span>
            </a>
            <a href="/admin/order/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-user"></i><br> <span>Hóa đơn</span>
            </a>
            <a href="/admin/comment/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-user"></i><br> <span>Bình luận</span>
            </a>
            <a href="/admin/user/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-user"></i><br> <span>Tài khoản</span>
            </a>
            <a href="/admin/setting/list" class="col-md-2 col-sm-5 col-xs-5">
                <i class="fa fa-wrench"></i><br> <span>Cấu hình</span>
            </a>
        </div>
    </div>

@endsection

@section('script')

@endsection