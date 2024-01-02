<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;

class userController extends Controller
{
    public function show(){
        $products = DB::table('products')->get();
        //$products = Product::all();
        //echo '<pre>';print_r($products);
        /*foreach($products as $product){
            echo '<pre>';print_r($product);
        }*/
        return view('products_list',['products'=>$products]);
        
    }
    public function save_product(Request $req){
        $product = new Product();
        $product->product_name = $req->product_name;
        $product->price = $req->price;
        //$product->image = $req->image;
        $product->image = $req->file('image')->store('img');
        $product->save();
        return redirect('products_list');        
           /* echo $req->product_name;
            echo $req->price;
            echo $req->image;*/
       
    }
    public function edit_product($id){
        $data = Product::find($id);
        return view('edit_product',['data'=>$data]);
    }
    public function update_product(Request $req){
        $product = Product::find($req->id);
        $product->product_name = $req->product_name;
        $product->price = $req->price;
        // $product->image = $req->image;
        $product->image = $req->file('image')->store('img');
        $product->save();
        return redirect('products_list'); 
       
    }
}
