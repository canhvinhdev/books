<?php 
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Auth;
use Session;

class CategoryController extends Controller{

    public function delete($id)
    {
        $check = true;
        try{
            $category = Category::find($id);
            $category->delete();
           
        }catch(\Exception $e){
            $check = false;
            Session::flash('message', 'Phải xóa các bảng chứa khóa ngoại trước !');
        }
        if($check == true){
            Session::flash('message_table', 'Xóa bảng thành công !');
        }
       
        return redirect()->route('admin.category.list');
    }

    public function index()
    {
        $categories = Category::where('status', '=', 1)->get();
        return view('admin.category.list', compact('categories'));
    }

    public function add()
    {
        $data = Category::where([['status', '=', 1],['parent_id','=',0]])->get();
        return view('admin.category.edit', compact('data'));
    }

    public function store(Request $request)
    {
        if($request->has('id') && $request->id != "") {
            $category = Category::find($request->id);
            Session::flash('message_table', 'Sửa mới thành công !');
        } else {
            $category = new Category();
            Session::flash('message_table', 'Thêm bảng thành công !');
        }

        $category->name = $request->name;
        $category->description = $request->description;
        $category->parent_id = $request->parent_id;
        $category->status = $request->statuses;
        $category->save();

        return redirect()->route('admin.category.list');
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $data = Category::where([['status', '=', 1],['parent_id','=',0]])->get();
        return view('admin.category.edit', compact('category','data'));
    }
}

 ?>