<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Role;
use Session;

class UserController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }
    public function index()
    {
        $user = User::where('role_id','=',2)->get();
        return view('admin.user.list', compact('user'));
    }
    
    public function add()
    {
        $listRole = Role::all();
        return view('admin.user.edit', compact('listRole'));
    }
    
    public function store(Request $request)
    {
        if($request->has('id') && $request->id != "" ) {
            $user = User::find($request->id);
             Session::flash('message_table', 'Sửa bảng thành công !');
        }
        else {
            $user = new User();
             Session::flash('message_table', 'Thêm bảng thành công !');
        }
        if(isset($user)){
            if($user->password != $request->password){
                $request->password = bcrypt($user->password);
            }
        }
        $user->fill($request->all());
        $user->save();        
        
        return redirect()->route('admin.user.list');
    }
    
    public function edit($id)
    {
        $listRole = Role::all();
        $user = User::find($id);
        return view('admin.user.edit', compact('user','listRole'));
    }
    
    public function delete($id)
    {
        try{
            $user = User::find($id);
            $user->delete();
           
        }catch(\Exception $e){
            Session::flash('message', 'Phải xóa các bảng chứa khóa ngoại trước !');
            return redirect()->route('admin.user.list');
        }
        Session::flash('message_table', 'Xóa bảng thành công !');
        return redirect()->route('admin.user.list');
    }
}
