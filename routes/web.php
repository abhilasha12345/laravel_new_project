<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});



/*********************/

Route::view('about','about');
Route::view('contact','contact');
/*Route::get('products_list',function(){
    return view('products_list');
});*/
Route::get('customers_list',[customerController::class,'show']);
Route::get('add_customer',function(){
    return view('add_customer');
});
Route::post('save_customer',[customerController::class,'save_customer']);
Route::get('edit_customer/{id}',[customerController::class,'edit_customer']);
Route::post('update_customer',[customerController::class,'update_customer']);
Route::get('delete_customer/{id}',[customerController::class,'delete_customer']);

Route::get('copy_images',[customerController::class,'copy_images']);