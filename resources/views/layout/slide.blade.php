<?php
use App\Models\Slide;
$slide = Slide::where('status','=',1)->get();
?>
<div class="container" style="padding-top: 10px; padding-bottom: 10px">

    <div class="row">

        <div class="col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Danh mục sản phẩm</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-group">


                      @if(isset($category))
                      @foreach($category as $item)
                   

                      @if($item->parent_id == 0)

                      <li class="list-group-item">

                        <a href="/danh-sach-san-pham/{{$item->id}}-{{str_slug($item->name)}}">{{$item->name}}</a>
                        <ul class="sup-menu">
                            @foreach($category as $data)
                            @if($item->id == $data->parent_id)
                            <li><a href="/danh-sach-san-pham/{{$data->id}}-{{str_slug($data->name)}}">{{$data->name}}</a> </li>
                            @endif
                            @endforeach


                        </ul>
                    </li>
                    @endif

                    @endforeach

                    @endif
                </ul>
            </div>
        </div>

    </div>

    <div class="col-md-9 no-left">
      <div id="carousel-id" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
              <li data-target="#carousel-id" data-slide-to="0" class=""></li>
              <li data-target="#carousel-id" data-slide-to="1" class=""></li>
              <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
          </ol>
          <div class="carousel-inner">
            

             @if(isset($slide))
             @foreach($slide as $data)
             @if($loop->first)
             <div class="item active">
              <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide" src="{{$data->image}}">
              <div class="container">
                  <div class="carousel-caption">
                   
                           <h2 style="color: #000">{{ strip_tags ($data->content) }}</h2>
                  </div>
              </div>
          </div>
          @else

          <div class="item ">
              <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide" src="{{$data->image}}">
              <div class="container">
                  <div class="carousel-caption">
                      
                     <h2 style="color: #000">{{ strip_tags ($data->content) }}</h2>
                     
                  </div>
              </div>
          </div>

          @endif

          


          @endforeach


          @endif
      </div>
      <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
  </div>
</div>

</div>
</div>