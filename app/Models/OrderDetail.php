<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

/**
 * @property string $anhUrl
 */
class OrderDetail extends Model
{
    /**
     * Tên bảng
     *
     * @var string
     */
    protected $table = 'order_details';

    /**
     * Tên các trường trong bảng
     *
     * @var array
     */
    protected $fillable = [
    ];
    public static function listOrder()
    {
        $data = OrderDetail::join('users', 'users.id', '=', 'order_details.user_id')
            ->select('users.id as user_id','order_details.code', 'users.name', 'order_details.price_all', 'order_details.status','order_details.created_at','order_details.id')
            ->get();
        return $data;
    }
    

}
