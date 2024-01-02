<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    public function show(){ 
        $customers = Customer::orderBy('id','desc')->paginate(10);
       
        return view('customers_list',['customers'=>$customers]);
        
    }
    public function save_customer(Request $request){
        $validated = $request->validate([
            'customer_name' => 'required',
            'email'         => 'required|email|unique',
            'phone'         => 'required|numeric',
            'dob'           => 'required',
            'address'       => 'required',
            'city'          => 'required',
            'state'         => 'required',
            'country'       => 'required',
            'image'         => 'required|image|max:3072',
            'gender'        => 'required' 
        ]);


        $customer = new Customer();
        $customer->name     = $request->customer_name;
        $customer->email    = $request->email;
        $customer->phone    = $request->phone;
        $customer->dob      = date('Y-m-d',strtotime($request->dob));
        $customer->address  = $request->address;
        $customer->city     = $request->city;
        $customer->state    = $request->state;
        $customer->country  = $request->country;
        $customer->gender   = $request->gender;       
        $customer->image    = $request->file('image')->store('img');
        $customer->image    = str_replace('img/','',$customer->image);
        $customer->save();
        session()->flash('message','Customer added successfully');
        return redirect('customers_list');        
                 
    }
    public function copy_images(){ 
        $customers = Customer::all();
       
        foreach($customers as $row){
            //echo $row->image;
            $oldPath = $row->image;
            $imgname = rand(1,100000).'.png';
            $newPath = "img/".$imgname;
           // File::makeDirectory("public/img/", 0777, true, true);
            if (\File::copy($oldPath , $newPath)) {
               // dd("success");
                $customer = DB::table('customers')
                            ->where('id',$row->id)
                            ->update([
                                'image'=>$imgname
                            ]);               
            }
        }
        
    }
    public function edit_customer($id){
        $data = Customer::find($id);
        return view('edit_customer',['data'=>$data]);
    }
    public function update_customer(Request $req){
        $customer = Customer::find($req->id);
        $customer->name = $req->customer_name;
        //$product->price = $req->price;
        // $product->image = $req->image;
        $customer->image = $req->file('image')->store('img');
        $customer->save();
        return redirect('customers_list'); 
       
    }
    public function delete_customer($id){
        $data = Customer::find($id)->delete();
        session()->flash('message','Customer deleted successfully');
        return redirect('customers_list'); 
    }
}
