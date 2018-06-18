<?php

namespace App\Http\Controllers\App;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\User;
use App\Models\OrderDetail;
use Illuminate\Support\MessageBag;
use Session;
use Cart;
use Auth;
class OrdersController extends Controller
{
    public function checkOut(){
        $category = Category::where('status','=',1)->get();
        $content= Cart::content();
           $total = Cart::subtotal();
        //    echo '<pre>';
        //    print_r($content);die();
        //    echo '</pre>';
        return view('app.check-out', compact('content','total','category'));
    }
    public function postCheckOut(Request $request){
        $content= Cart::content()->toArray();
        
        $email = User::where('email','=',$request->email)->first();
        $users = Auth::user();
        $user = User::find($users->id);
        $user->fill($request->all());
       // $user->password = bcrypt($user->password);
        $user->save();
        
        $total = 0;
        foreach ($content as $data){
            $order=new Order();
            //$order->code = $code;
            $order->product_id = $data['id'];
            $order->quantity = $data['qty'];
            $order->price = $data['price'];
            $total =  $total+ $data['price'] * $data['qty'];
            $order->save();
        }
        $code = OrderDetail::orderBy('code', 'desc')->first();
        if(isset($code)){
            $code = $this->code($code->code);
        }else{
            $code = "0000001";
        }
        $order = Order::orderBy('id', 'desc')->first();
        $orderDetail = new OrderDetail();
        $orderDetail->order_id = $order->id;
        $orderDetail->code = $code;
        $orderDetail->user_id = $users->id;
        $orderDetail->price_all = $total;
        $orderDetail->method =  $request->method;
        $orderDetail->status = 0;
        $orderDetail->save();
        Cart::destroy();
        return redirect()->route('customer', ['id' =>  $users->id]);
    }

    public function customer(Request $request){
        $user = User::find($request->id);
        $order = OrderDetail::where('user_id','=',$request->id)->get();
        return view('app.customer', compact('user','order'));
    }
    public function editCustomer(Request $request){
        $user = User::find($request->id);
        return view('app.edit-customer', compact('user'));
    }
    public function storeCustomer(Request $request)
    {
        $user = User::find($request->id);
        if(isset($user)){
            if($user->password != $request->password){
                $request->password = bcrypt($user->password);
            }
        }
        $user->fill($request->all());
        $user->role_id = 2;
        $user->status = 1;
        $user->save(); 
        return redirect()->route('index');
    }
    public function code($code){
        $result = "0000001";

        if(isset($code)){
            $code = substr($code,2);
            $code = intval($code);
            $code = $code+1;

            if($code>1 && $code<10 ){
                $result="000000".$code;
            }else if($code<100){
                $result="00000".$code;
            }else if($code<1000){

                $result="0000".$code;
            }else if($code<10000){

                $result="000".$code;
            }else if($code<100000){

                $result="00".$code;
            }else if($code<1000000){
                $result="0".$code;
            }else if($code<10000000){
                $result="".$code;
            }
        }
        return $result;
    }

}

