<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    /**
     * Tên bảng
     *
     * @var string
     */
    protected $table = 'comments';

    /**
     * Tên các trường trong bảng
     *
     * @var array
     */
    protected $fillable = [
    ];

    public static function listComment()
    {
        $data = Comment::join('users', 'users.id', '=', 'comments.user_id')
            ->join('products', 'products.id', '=', 'comments.product_id')
            ->select('users.username', 'comments.content', 'comments.id', 'comments.status','comments.id', 'comments.sub_id','comments.created_at','products.name','users.email','users.id as user_id')
            ->where('comments.status','=','2')
            ->where('users.status','=','1')
            ->where('products.status','=','1')
            ->get();
        return $data;
    }
}
