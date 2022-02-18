<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\Brancontroller;
use App\Http\Controllers\Admin\Couponcontroller;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\WishlistController;
use App\Http\Controllers\Admin\ProductController;
use App\Models\Admin\Product;

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

Route::get('/', [IndexController::class, 'index']);


// Admin Login View
Route::group(['prefix' => 'admin', 'middleware' => ['admin:admin']], function () {
    Route::get('/login', [AdminController::class, 'loginForm']);
    Route::post('/login', [AdminController::class, 'store'])->name('admin.login');
});


// Admin View
Route::middleware(['auth.admin:admin', 'verified'])->get('/admin/dashboard', function () {
    return view('backend.home');
})->name('dashboard');


Route::post('/logout', [AdminController::class, 'destroy'])
    ->name('logout');

// Route::middleware(['auth:sanctum,web', 'verified'])->get('/dashboard', function () {
//     return view('frontend.index');
// })->name('dashboard');

Route::get('/dashboard', [IndexController::class, 'index'])->middleware(['auth:sanctum,web', 'verified']);

// routes for brand
Route::prefix('brand/')->group(function () {
    Route::get('show', [Brancontroller::class, 'BrandView'])->name('all.brand');
    Route::post('add', [Brancontroller::class, 'BrandAdd'])->name('add.brand');
    Route::get('edit/{id}', [Brancontroller::class, 'BrandEdit'])->name('edit.brand');
    Route::post('update', [Brancontroller::class, 'BrandUpdate'])->name('update.brand');
    Route::get('delete/{id}', [Brancontroller::class, 'BrandDelete'])->name('delete.brand');
});

// category routes
Route::get('category/show', [CategoryController::Class, 'CategoryView'])->name('all.category');
Route::post('category/store', [CategoryController::Class, 'CategoryStore'])->name('add.category');
Route::get('category/edit/{id}', [CategoryController::Class, 'CategoryEdit'])->name('edit.category');
Route::post('category/update', [CategoryController::class, 'CategoryUpdate'])->name('update.category');
Route::get('category/delete/{id}', [CategoryController::Class, 'CategoryDelete'])->name('delete.category');

//sub category routes
Route::get('subcategory/show', [SubcategoryController::Class, 'SubCategoryView'])->name('all.subcategory');
Route::post('subcategory/store', [SubcategoryController::Class, 'SubCategoryStore'])->name('add.subcategory');
Route::get('subcategory/edit/{id}', [SubcategoryController::Class, 'SubCategoryEdit'])->name('edit.subcategory');
Route::post('subcategory/update', [SubcategoryController::class, 'SubCategoryUpdate'])->name('update.subcategory');
Route::get('subcategory/delete/{id}', [SubcategoryController::Class, 'SubCategoryDelete'])->name('delete.subcategory');

//sub category routes
Route::get('slider/show', [SliderController::Class, 'SliderView'])->name('all.sliders');
Route::post('slider/store', [SliderController::Class, 'SliderStore'])->name('store.slider');
Route::get('slider/edit/{id}', [SliderController::Class, 'SliderEdit'])->name('edit.slider');
Route::post('slider/update', [SliderController::class, 'SliderUpdate'])->name('update.slider');
Route::get('slider/delete/{id}', [SliderController::Class, 'SliderDelete'])->name('delete.slider');

// routes for coupon
Route::prefix('coupon/')->group(function () {
    Route::get('show', [Couponcontroller::class, 'CouponView'])->name('all.coupon');
    Route::post('add', [Couponcontroller::class, 'CouponAdd'])->name('add.coupon');
    Route::get('edit/{id}', [Couponcontroller::class, 'CouponEdit'])->name('edit.coupon');
    Route::post('update', [Couponcontroller::class, 'CouponUpdate'])->name('update.coupon');
    Route::get('delete/{id}', [Couponcontroller::class, 'CouponDelete'])->name('delete.coupon');
});

// routes for product
Route::prefix('product/')->group(function () {
    Route::get('view', [ProductController::class, 'ProductView'])->name('view.product');
    Route::get('add', [ProductController::class, 'ProductAdd'])->name('add.product');
    Route::post('store', [ProductController::class, 'ProductStore'])->name('store-product');
    Route::get('edit/{product_id}', [ProductController::class, 'ProductEdit'])->name('edit.product');
    Route::post('update', [ProductController::class, 'ProductUpdate'])->name('update.product');
    Route::get('delete/{product_id}', [ProductController::class, 'ProductDelete'])->name('delete.product');
    Route::post('thambnail/update', [ProductController::class, 'thambnailUpdate'])->name('update-product-thambnail');
    Route::post('multi-image/update', [ProductController::class, 'multiImagUpdate'])->name('update-product-image');
    Route::get('multiimg/delete/{id}', [ProductController::class, 'multiImageDelete']);
    Route::get('product-inactive/{id}', [ProductController::class, 'inactive'])->name('product.deactive');
    Route::get('product-active/{id}', [ProductController::class, 'active'])->name('product.active');
});

Route::get('product/details/{id}', [IndexController::class, 'ProductDetails'])->name('product.details');


// code for frontend cart
Route::get('product/view/modal/{id}', [IndexController::class, 'productViewAjax']);
// add to cart
Route::post('cart/data/store/{id}', [CartController::class, 'addToCart']);
//mini cart
Route::get('product/mini/cart', [CartController::class, 'miniCart']);
Route::get('/minicart/product-remove/{rowId}', [CartController::class, 'miniCartRemove']);

// wishlist routes
Route::post('addTo/wishlist/{product_id}', [CartController::class, 'addToWishlist']);
Route::get('view/wishlist', [WishlistController::class, 'ViewWishlist'])->name('view.wishlist');
Route::get('get/wishlist/product', [WishlistController::class, 'GetWishlist']);
Route::get('/wishlist/remove/{id}', [WishlistController::class, 'DestoryWishlist']);
