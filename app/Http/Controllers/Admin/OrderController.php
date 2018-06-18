<?php
namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Slide;
use App\Models\Order;
use App\Models\Product;
use App\Models\OrderDetail;
use View;
use Session;
use Response;
use Auth;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $order = Order::listOrder();
        return view('admin.order.list', compact('order'));
    }

    public function store(Request $request)
    {
        if($request->has('id') && $request->id != "") {
            $order = Order::find($request->id);
             Session::flash('message_table', 'Sửa bảng thành công !');
        }
        $order->status = $request->status;
        $order->save();
        return redirect()->route('admin.order.list');
    }

    public function edit($id)
    {
        $order = Order::find($id);
        $product =OrderDetail::listOrders();
        $user = User::find( $order->user_id);
        return view('admin.order.edit', compact('order','product','user'));
    }

    public function customer($id)
    {
        $order = Order::where('user_id','=',$id)->get();
        $user = User::find($id);
        return view('admin.order.customer', compact('order','user'));
    }

    public function delete($id)
    {
        try{
            $order = Order::find($id);
            $order->delete();      
        }catch(\Exception $e){
            Session::flash('message', 'Phải xóa các bảng chứa khóa ngoại trước !');
            return redirect()->route('admin.comment.list');
        }
        Session::flash('message_table', 'Xóa bảng thành công !');
        return redirect()->route('admin.order.list');
    }
}
