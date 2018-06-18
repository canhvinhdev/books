@extends('layout.admin')

@section('title')
Quản lý Bình luận
@endsection

@section('css')

@endsection


@section('content')

    <ol class="breadcrumb" id="step2">
        <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
        <li class="active"><a href="contact.html">Phản hồi</a></li>
    </ol>
    <div class="col-xs-12">
        @if (session('message'))
            <div class="alert alert-error">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                {!!session('message') !!}
            </div>
        @endif

        @if (session('message_table'))
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                {!!session('message_table') !!}
            </div>
        @endif
        <form id="admin-form" method="post" action="" role="form">
            <div class="col-xs-12">
                <div class="form-group">
                    <!-- Single button -->


                </div>
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                    Có <strong>{!! $total !!}</strong> phản hồi mới chưa đọc
                </div>
                <table id="comment"  class="table table-bordered table-hover" id="step4">
                    <thead>
                    <tr>

                        <th class="hidden-xs">STT</th>
                        <th class="hidden-xs">Người gửi</th>
                        <th class="hidden-sm hidden-xs">Email</th>
                        <th class="hidden-sm hidden-xs">Sản phẩm được bình luận</th>
                        <th class="hidden-sm hidden-xs">Ngày gửi</th>
                        <th class="hidden-sm hidden-xs">Xóa</th>
                        <th>Tình trạng</th>
                    </tr>
                    </thead>
                    <tbody>
                    @if(isset($comment) && count($comment))
                        @php $stt = 1; @endphp
                        @foreach($comment as $item)
                            @if($item->sub_id == 0)
                            <tr class="alert alert-info" style="color: #333">
                                <td class="hidden-xs">{{ $stt}}</td>
                                <td>
                                    <a href="/admin/user/edit/{!! $item->user_id  !!}">{{ $item->username }}</a>
                                </td>

                                <td class="hidden-sm hidden-xs">{{ $item->email }}</td>

                                <td class="hidden-sm hidden-xs">{{ $item->name }}/td>

                                <td class="hidden-sm hidden-xs">{{ $item->created_at }}</td>
                                <td> <a href="/admin/comment/delete/{{$item->id}}"> <i class="fa fa-minus-circle" data-toggle="tooltip" data-placement="top" title="Xóa bình luận"></i></a></td>
                                <td>
                                    @if($item->status == 1)
                                        <a href="/admin/comment/edit/{{$item->id}}"> <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Bình luận đã đọc"></i></a>
                                    @else
                                        <a href="/admin/comment/edit/{{$item->id}}"><i class="fa fa-envelope-o" data-toggle="tooltip" data-placement="top" title="Bình luận chưa đọc"></i></a>
                                    @endif
                                </td>
                            </tr>
                                @foreach($comment as $item1)
                                    @if($item->id == $item1->sub_id)
                                        <tr class="alert alert-info" style="color: #333">
                                            <td class="hidden-xs">{{ $stt}}</td>
                                            <td>
                                                <a href="/admin/user/edit/{!! $item1->user_id  !!}">{{ $item1->username }}</a>
                                            </td>

                                            <td class="hidden-sm hidden-xs">{{ $item1->email }}</td>

                                            <td class="hidden-sm hidden-xs">{{ $item1->name }}/td>

                                            <td class="hidden-sm hidden-xs">{{ $item1->created_at }}</td>
                                            <td> <a href="/admin/comment/delete/{{$item1->id}}"> <i class="fa fa-minus-circle" data-toggle="tooltip" data-placement="top" title="Xóa bình luận"></i></a></td>
                                            <td>
                                                @if($item->status == 1)
                                                    <a href="/admin/comment/edit/{{$item1->id}}"> <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Bình luận đã gửi"></i></a>
                                                @endif
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                            @endif
                        @php $stt++; @endphp
                        @endforeach
                    @endif
                    </tbody>
                </table>

             
            </div>
        </form>
    </div>
@endsection

@section('script')
    tion('script')
    <script type="text/javascript">
        $(document).ready( function () {
            $('#comment').DataTable();
        } );

    </script>
@endsection