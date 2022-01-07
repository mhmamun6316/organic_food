<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\Brancontroller;
use App\Http\Controllers\Admin\Couponcontroller;
use App\Http\Controllers\Frontend\IndexController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [IndexController::class,'index']);


// Admin Login View
Route::group(['prefix'=> 'admin', 'middleware'=>['admin:admin']], function(){
	Route::get('/login', [AdminController::class, 'loginForm']);
	Route::post('/login',[AdminController::class, 'store'])->name('admin.login');
});


// Admin View
Route::middleware(['auth.admin:admin', 'verified'])->get('/admin/dashboard', function () {
    return view('backend.home');
})->name('dashboard');


Route::middleware(['auth:sanctum,web', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');


// routes for brand
Route::prefix('brand/')->group(function(){
    Route::get('show',[Brancontroller::class,'BrandView'])->name('all.brand');
    Route::post('add',[Brancontroller::class,'BrandAdd'])->name('add.brand');
    Route::get('edit/{id}',[Brancontroller::class,'BrandEdit'])->name('edit.brand');
    Route::post('update',[Brancontroller::class,'BrandUpdate'])->name('update.brand');
    Route::get('delete/{id}',[Brancontroller::class,'BrandDelete'])->name('delete.brand');
});

// category routes
Route::get('category/show',[CategoryController::Class,'CategoryView'])->name('all.category');
Route::post('category/store',[CategoryController::Class,'CategoryStore'])->name('add.category');
Route::get('category/edit/{id}',[CategoryController::Class,'CategoryEdit'])->name('edit.category');
Route::post('category/update',[CategoryController::class,'CategoryUpdate'])->name('update.category');
Route::get('category/delete/{id}',[CategoryController::Class,'CategoryDelete'])->name('delete.category');

//sub category routes
Route::get('subcategory/show',[SubcategoryController::Class,'SubCategoryView'])->name('all.subcategory');
Route::post('subcategory/store',[SubcategoryController::Class,'SubCategoryStore'])->name('add.subcategory');
Route::get('subcategory/edit/{id}',[SubcategoryController::Class,'SubCategoryEdit'])->name('edit.subcategory');
Route::post('subcategory/update',[SubcategoryController::class,'SubCategoryUpdate'])->name('update.subcategory');
Route::get('subcategory/delete/{id}',[SubcategoryController::Class,'SubCategoryDelete'])->name('delete.subcategory');

//sub category routes
Route::get('slider/show',[SliderController::Class,'SliderView'])->name('all.sliders');
Route::post('slider/store',[SliderController::Class,'SliderStore'])->name('store.slider');
Route::get('slider/edit/{id}',[SliderController::Class,'SliderEdit'])->name('edit.slider');
Route::post('slider/update',[SliderController::class,'SliderUpdate'])->name('update.slider');
Route::get('slider/delete/{id}',[SliderController::Class,'SliderDelete'])->name('delete.slider');

// routes for coupon
Route::prefix('coupon/')->group(function(){
    Route::get('show',[Couponcontroller::class,'CouponView'])->name('all.coupon');
    Route::post('add',[Couponcontroller::class,'CouponAdd'])->name('add.coupon');
    Route::get('edit/{id}',[Couponcontroller::class,'CouponEdit'])->name('edit.coupon');
    Route::post('update',[Couponcontroller::class,'CouponUpdate'])->name('update.coupon');
    Route::get('delete/{id}',[Couponcontroller::class,'CouponDelete'])->name('delete.coupon');
});
