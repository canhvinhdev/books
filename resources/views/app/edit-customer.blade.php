@extends('layout.app')
@section('title')
    Cập nhật thông tin khách hàng
@stop
@section('content')

<div class="container">
<div class="row">


    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

        <div class="panel-heading">
            <h3 class="panel-title">Cập nhật thông tin người dùng</h3>
        </div>
        <div class="panel panel-info clearfix" style="">

            <br>

            <form id="admin-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="post" action="{{ route('storeCustomer') }}" role="form">
            {{ csrf_field() }}
                <input name="id" type="hidden" value="{{$user->id}}">
                <div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label required">Tên hiển thị</label>
                    <div class="col-sm-9">
                        <input name="fullname" type="text" value="{{$user->name}}" class="form-control" placeholder="Tên hiển thị" required maxlength="255">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label required">Email</label>
                    <div class="col-sm-9">
                        <input name="email" type="email" value="{{$user->email}}" class="form-control"  placeholder="Email" required readonly="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-3 control-label required">Số điện thoại</label>
                    <div class="col-sm-9">
                        <input name="phone" type="text" value="{{$user->phone}}" class="form-control"  placeholder="Phone" required>
                    </div>
                </div>


                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label required">Địa chỉ</label>
                    <div class="col-sm-9">
                        <input name="address" type="text" value="{{$user->address}}" class="form-control" placeholder="Địa chỉ" required>
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label for="email" class="col-sm-3 control-label required">Giới tính</label>
                    <div class="col-sm-9">
                        <select name="greder" id="input"  class="form-control" required>
                            <option value="1">Nam</option>
                            <option value="2">Nữ</option>
                        </select>
                    </div>
                </div> -->

                <div class="form-group">
                    <label for="pass" class="col-sm-3 control-label required">Mật khẩu</label>
                    <div class="col-sm-9">
                        <input name="password" type="password" value="{{$user->password}}" class="form-control" id="pass" placeholder="Mật khẩu" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="repass" class="col-sm-3 control-label required">Nhập lại mật khẩu</label>
                    <div class="col-sm-9">
                        <input name="repass" type="password" value="{{$user->password}}" class="form-control" id="repass" placeholder="Nhập lại mật khẩu" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Cập nhật mới</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</div>
@endsection