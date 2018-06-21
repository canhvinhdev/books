<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;


class Product extends Model
{
    /**
     * Tên bảng
     * 
     * @var string 
     */
    protected $table = 'products';
    
    /**
     * Tên các trường trong bảng
     * 
     * @var array
     */
    protected $fillable = [

    ];

    public function categories(){
        return $this->hasMany('App\Category','category_id','id');
    }

    public static function listProduct()
    {
        $data = Product::where('status','=',1)->limit(6)->get();
        return $data;
    }

    public static function discount()
    {
        $data = PromotionProduct::join('promotion','promotion.id','=','promotion_product.promotion_id')
        ->where('promotion.end_day','>','Date')->get();
        return $data;
    }

}
