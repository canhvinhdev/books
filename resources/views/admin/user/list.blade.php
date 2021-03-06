@extends('layout.admin')

@section('title')
Quản lý người dùng
@endsection


@section('content')

    <ol class="breadcrumb">
        <li><a href="/admin"><i class="fa fa-home"></i> Trang quản trị</a></li>
        <li class="active"><a href="/admin/user/list">Tài khoản</a></li>
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

                    <a href="/admin/user/add" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>

                </div>

                <table id="user" class="table table-bordered table-hover">
                    <thead>
                    <tr>

                        <th class="hidden-xs">ID</th>
                        <th>Tài khoản</th>
                        <th class="hidden-xs">Email</th>
                        <th class="hidden-sm hidden-xs">Họ tên</th>
                        <th>Sửa</th>
                        <th>xóa</th>
                        <th>Tình trạng</th>
                    </tr>
                    </thead>
                    <tbody>
                    ody>
                    @if(isset($user) && count($user))
                        @php $stt = 1; @endphp
                        @foreach($user as $item)
                        <tr>
                            <td class="hidden-xs">{{ $stt }}</td>
                            <td>
                                {{ $item->username }}
                            </td>
                            <td class="hidden-xs">{{ $item->email }}</td>
                            <td class="hidden-sm hidden-xs">{{ $item->name }}</td>
                            <td>
                                <a href="{{ route('admin.user.edit', ['id' => $item->id]) }}"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa tài khoản"></i></a>
                            </td>
                            <td>
                                <a href="{{ route('admin.user.delete', ['id' => $item->id]) }}"><i class="fa fa-minus-circle" data-toggle="tooltip" data-placement="top" title="Xóa tài khoản"></i></a>
                            </td>
                            <td>
                                @if($item->status==1)
                                    <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Đang hoạt động"></i>
                                @else
                                    <i class="fa fa-check text-danger" data-toggle="tooltip" data-placement="top" title="Đang bị khóa"></i>
                                @endif
                            </td>
                        </tr>
                        @php $stt++; @endphp
                        @endforeach
                    @endif
                    </tbody>
                </table>

                <p><strong><i class="fa fa-bookmark"></i>Ghi chú: </strong></p>
                <p class="note-items"><i class="fa fa-check text-success"></i> Tài khoản đang hoạt động.</p>
                <p class="note-items"><i class="fa fa-times text-danger"></i> Tài khoản bị khóa.</p>
            </div>
        </form>
    </div>
@endsection

@section('script')
    <script type="text/javascript">

        $(document).ready( function () {
            $('#user').DataTable();
        } );

    </script>
@endsection