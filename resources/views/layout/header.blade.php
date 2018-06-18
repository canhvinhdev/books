<header>
    <div id="flipkart-navbar">
        <div class="container">
            <div class="row row1">
                <ul class="largenav pull-right">
                    <li class="upper-links"><a class="links" href="#">Chính sách đổi trả</a></li>

						{{--<li class="upper-links">--}}
                        {{--<a class="links" href="http://clashhacks.in/">--}}
                            {{--<svg class="" width="16px" height="12px" style="overflow: visible;">--}}
                                {{--<path d="M8.037 17.546c1.487 0 2.417-.93 2.417-2.417H5.62c0 1.486.93 2.415 2.417 2.415m5.315-6.463v-2.97h-.005c-.044-3.266-1.67-5.46-4.337-5.98v-.81C9.01.622 8.436.05 7.735.05 7.033.05 6.46.624 6.46 1.325v.808c-2.667.52-4.294 2.716-4.338 5.98h-.005v2.972l-1.843 1.42v1.376h14.92v-1.375l-1.842-1.42z" fill="#fff"></path>--}}
                            {{--</svg>--}}
                        {{--</a>--}}
                    {{--</li>--}}
                    <?php  $user = Auth::user();?>
                    @if(isset($user))
                        <li class="upper-links dropdown"><a class="links" href="/khach-hang/{{ $user->id }}">{!! $user->name !!}</a>
                        <li class="upper-links dropdown"><a class="links" href="/thoat">Thoát</a>
                    @else
                        <li class="upper-links dropdown"><a class="links" href="#">Tài khoản</a>
                            <ul class="dropdown-menu">
                                <li class="profile-li"><a class="profile-links" href="/dang-nhap">Đăng nhập</a></li>
                                <li class="profile-li"><a class="profile-links" href="/dang-ky">Đăng ký</a></li>
                            </ul>
                        </li>
                    @endif
                </ul>
            </div>
            <div class="row row2">
                <div class="col-sm-2">

                   <h1 style="margin:0px;"><span class="largenav">
<a href="/">
                    <img src="/uploads/files/logo.png" class="img-responsive">
</a>
                   </span></h1>
                </div>
                <form action="{!! route('search') !!}" method="post">
                    {{ csrf_field() }}
                    <div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
                        <div class="">
                            <input class="flipkart-navbar-input col-xs-11" type="text" style="color: #0c0c0c" placeholder="Nhập từ khóa tìm kiếm" name="name">
                            <button type="submit" class="flipkart-navbar-button col-xs-1">
                                <svg width="15px" height="15px">
                                    <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                                </svg>
                            </button>
                        </div>
                    </div>
                </form>
                <div class="cart largenav col-sm-2">
                        <a class="cart-button" href="/gio-hang">
                             Giỏ hàng
                            <span class="item-number ">{!! Cart::count(); !!}</span>
                        </a>
                </div>
            </div>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
        <div class="container" style="background-color: #2874f0; padding-top: 10px;">
            <span class="sidenav-heading">Home</span>
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
        </div>
   


         <ul>
                        <li class="li_lv1">
                            <a href="/"><i class="fa fa-home" aria-hidden="true"></i>TRANG CHỦ</a>
                        </li>
                        @if(isset($category))
                            @foreach($category as $item)
                            <li class="li_lv1">
                                @if($item->parent_id == 0)
                                    <a href="/danh-sach-san-pham/{{$item->id}}-{{str_slug($item->name)}}">{{$item->name}}</a>
                                    <ul class="sup-menu">
                                    @foreach($category as $data)
                                        @if($item->id == $data->parent_id)
                                                <li><a href="/danh-sach-san-pham/{{$data->id}}-{{str_slug($data->name)}}">{{$data->name}}</a> </li>
                                        @endif
                                    @endforeach
                                    </ul>
                                @endif
                            </li>

                            @endforeach
                        @endif

                        <li class="li_lv1">
                            <a href="#">GIỚI THIỆU</a>

                        </li>
                        <li class="li_lv1">
                            <a href="#">LIÊN HỆ</a>

                        </li>

                    </ul>
    </div>
</header>