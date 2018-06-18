<?php

namespace App\Http\Controllers\App;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\News;
use App\Models\Slide;
use App\Models\Tour;
use App\Models\Product;
use App\Models\User;
use  DB;
class NewController extends Controller
{



	public function detail($id){
		$news_detail = News::find($id);
		return view('app.news-detail',compact('news_detail'));
	}
}

