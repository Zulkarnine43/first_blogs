<?php

namespace App\Http\Controllers;

use App\add_product;
use Illuminate\Http\Request;

class adminController extends Controller
{
    //
    public function index(){
        $product= add_product::all();
        return view('admin.index',['products' =>$product]);
    }
    public function addManage(){
        return view('admin.admin');
    }
}
