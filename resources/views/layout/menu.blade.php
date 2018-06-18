<?php
    use App\Models\Category;
    $category = Category::where('status','=',1)->get();
?>
<div class="container hidden-lg hidden-md">
    <div id="nav-mobile ">
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <nav class="nav-mobile-setting" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->


                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="">
                        <ul class="nav navbar-nav">
                            <li><a href="/">Trang chủ</a></li>

                            @if(isset($category))
                                @foreach($category as $item)
                                   {{--  <li><a href="#news">{{$item->name}}</a></li>--}}
                                        <li class="dropdown">
                                            @if($item->parent_id == 0)
                                                <a href="/danh-sach-san-pham/{{$item->id}}-{{str_slug($item->name)}}" class="dropdown-toggle" data-toggle="dropdown">{{$item->name}}<b class="caret"></b></a>
                                                <ul class="dropdown-menu">
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

                            <li><a href="#about">GIÓI THIỆU</a></li>
                            <li><a href="#about">LIÊN HỆ</a></li>
                        </ul>


                    </div><!-- /.navbar-collapse -->
                </div>
            </nav>
        </div>

        <div id="main">
            <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
        </div>
        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "100%";

            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main-body").style.marginLeft= "0";
            }
        </script>
    </div>
</div>
<div id="nav">
    <div class="container hidden-xs hidden-sm">
        <div class="row">
            <div class="main-menu">
                <nav>
                    <ul>
                        <li class="li_lv1">
                            <a href="/"><i class="fa fa-home" aria-hidden="true"></i>Trang chủ</a>
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
                            <a href="/gioi-thieu">Giới thiệu</a>

                        </li>
                        <li class="li_lv1">
                            <a href="/lien-he">Liên hệ</a>

                        </li>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>