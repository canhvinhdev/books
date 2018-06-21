<?php

namespace App\Http\Controllers\App;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use App\Models\News;
use App\Models\Comment;
use App\Models\Contact;
use App\Models\PromotionProduct;
use Session;
use Cart;

class ProductController extends Controller
{
  


public function contact()
{
    return view('app.contact');
}
public function savecontact(Request $request)
    {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->phone = $request->phone;
        $contact->email = $request->email;
        $contact->content = $request->content;
        $contact->status = 2;
        $contact->save();
        return redirect()->route('index');
    }

public function about()
{
   
    return view('app.about');
}



public function index()
{
    $product = Product::listProduct();
    $new = News::where('status','=',1)->get();
    $category = Category::where('status','=',1)->get();
    $discount = Product::discount();
   
  
    return view('app.home', compact('product','category','new','discount'));
}

    public function detail($id)
    {
        $product = Product::find($id);
        $data = Category::find($product->category_id);
        $related_products = Product::where('id','<>',$id)->limit(6)->get();
        $comment = Comment::listComment();
        $discount = Product::discount();
        $product_promtion = PromotionProduct::join('promotion','promotion.id','=','promotion_product.promotion_id')
        ->where('promotion_product.product_id','=',$id)
        ->where('promotion.end_day','>=',date("Y-m-d",time()))
        ->where('promotion.start_day','<=',date("Y-m-d",time()))
        ->first();
        return view('app.product-detail', compact('product','data','related_products','comment','discount','product_promtion'));
    }

    public function list($id)
    {
        $discount = Product::discount();
        $product = Product::where('category_id','=',$id)->paginate(12);
        $data = Category::find($id);
        $category = Category::where('status','=',1)->get();
        return view('app.list-product', compact('product','category','data','discount'));
    }
    public function cart(Request $request)
    {
        $product = Product::find($request->id);
        $category = Category::where('status','=',1)->get();
        $product_promtion = PromotionProduct::join('promotion','promotion.id','=','promotion_product.promotion_id')
        ->where('promotion_product.product_id','=',$product->id)
        ->where('promotion.end_day','>=',date("Y-m-d",time()))
        ->where('promotion.start_day','<=',date("Y-m-d",time()))
        ->first();
        $price = $product->price - $product->price * $product_promtion->number_discount/100;
        Cart::add(array('id'=>$request->id,'name'=>$product->name,'qty'=>$request->quantity,'price'=>$price,'options'=> array('image'=>$product->image,'discount'=>$product->price,)));
        return redirect()->route('catProduct');
    }
    public function getcart($id)
    {
        $product = Product::find($id);
        $product_promtion = PromotionProduct::join('promotion','promotion.id','=','promotion_product.promotion_id')
        ->where('promotion_product.product_id','=',$product->id)
        ->where('promotion.end_day','>=',date("Y-m-d",time()))
        ->where('promotion.start_day','<=',date("Y-m-d",time()))
        ->first();
        $price = $product->price - $product->price * $product_promtion->number_discount/100;
        Cart::add(array('id'=>$product->id,'name'=>$product->name,'qty'=>1,'price'=>$price,'options'=> array('image'=>$product->image,'discount'=>$product->price,)));


       //$content = Cart::content();
       //print_r($content);
        return redirect()->route('catProduct');
    }

    public function catProduct(){
        $category = Category::where('status','=',1)->get();
        $content= Cart::content();
        $total = Cart::subtotal();


        return view('app.cart', compact('content','total','category'));
    }

    public function updatecart(Request $request){
      $id = $request->id;
      $qty = $request->qty;
      Cart::update($id,$qty);

    }
    public function delete($id)
    {
        Cart::remove($id);
        return redirect()->route('catProduct');
    }
    public function search(Request $request)
    {
        $discount = Product::discount();
        $search = Product::where('status','=',1)->where('name','like', '%' . $request->name . '%')->paginate(12);
        return view('app.search', compact('search','discount'));
    }

}
