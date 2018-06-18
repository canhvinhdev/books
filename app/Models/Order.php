<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

/**
 * @property string $anhUrl
 */
class Order extends Model
{
    /**
     * Tên bảng
     *
     * @var string
     */
    protected $table = 'orders';

    
    public static function listOrders()
    {
        $data = Order::join('products', 'products.id', '=', 'orders.product_id')
            ->select('products.name', 'orders.quantity', 'orders.price')
            ->get();
        return $data;
    }
}
