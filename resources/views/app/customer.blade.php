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

            <li class="active">Thông tin khách hàng</li>
        </ol>

    </div>
<div class="container">
    <div class="row">


        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">


            <div class="panel panel-info">

                <div class="panel-body">
                    <h4>Khách hàng</h4>
                  
                    <p>Tên: <a href="/cap-nhat-thong-tin-khach-hang/{{$user->id}}">{{$user->name}}</a></p>
                    <p>Mail: {{$user->email}}</p>
                    <p>SĐT: {{$user->phone}}</p>
                    <p>Địa chỉ: {{$user->address}}</p>
                  
                    <p>Ngày tạo: {{$user->created_at}}</p>
                    <hr>
                    
                    <button type="button" class="btn btn-info"><a href="/cap-nhat-thong-tin-khach-hang/{{$user->id}}">Sửa</a></button>
                </div>
            </div>
        </div>
        <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
            <div class="panel panel-info">

                <div class="panel-body">
                    <p>Danh sách đơn hàng</p>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>Mã đơn hàng</th>

                            <th>Ngày tạo</th>
                            <th>Tình trạng</th>
                            <th>Giá</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        @if(isset($order) && count($order))
                        @php $stt = 1; @endphp
                        @foreach($order as $item)

                        <tr>
                            <td>1</td>
                            <td><a >{{$item->code}}</a></td>
                            <td>{{$item->created_at}}</td>
                            <th>
                            <span class="label label-success"><?php if($item->status == 1){echo "Đã thanh toán";}else{echo "Chưa thanh toán";}?></span></th>
                            <td>{{number_format($item->price_all,0,",",".")}} vnđ</td>
                        </tr>
                        @php $stt++; @endphp
                        @endforeach
                    @endif

                        </tbody>



                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection