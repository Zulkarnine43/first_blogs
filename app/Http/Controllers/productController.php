<?php

namespace App\Http\Controllers;

use App\add_brand;
use App\add_cart;
use App\add_category;
use App\add_product;
use Illuminate\Http\Request;
use Cart;
use Image;
use Session;

class productController extends Controller
{
    //

    public function add_product()
    {
        $category = add_category::all();
        $brand = add_brand::all();
        return view('product.add_product', ['categories' => $category, 'brands' => $brand]);
    }

    public function new_product(Request $request)
    {

        $addProducts = new add_product();

        $productImage = $request->file('product_image');
        if ($productImage) {
            $imageName = $productImage->getClientOriginalName();
            $directory = 'product_images/';
           $imageUrl = $directory.$imageName;
            $productImage->move($directory, $imageName);

        }


        $addProducts->category_name = $request->category_name;
        $addProducts->brand_name = $request->brand_name;
        $addProducts->product_name = $request->product_name;
        $addProducts->product_price = $request->product_price;
        $addProducts->product_quantity = $request->product_quantity;
        $addProducts->product_description = $request->product_description;
        $addProducts->long_description = $request->long_description;
        $addProducts->product_image = $imageUrl;
        // $addProducts->product_image =$imageUrl;
        $addProducts->save();

        return redirect('/product/add')->with('message', 'Save Products Info Successfully');
    }

    public function manage_product()
    {
        $products = add_product::all();
        return view('product.manage_product', ['products' => $products]);
    }
    public function product_detail($id){
        $products=add_product::find($id);
        Session::put('product_name',$products->product_name);
        Session::put('product_price',$products->product_price);
        Session::put('product_quantity',$products->product_quantity);
        return view('product.product_details',['cardProduct' =>$products]);
    }
    public function electronic(){
        return view('product.electronics');
    }

}
