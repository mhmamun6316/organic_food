<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\CategoryController;

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

Route::get('/', function () {
    return view('welcome');
});


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


// category routes
Route::get('category/show',[CategoryController::Class,'CategoryView'])->name('all.category');
Route::post('category/store',[CategoryController::Class,'CategoryStore'])->name('add.category');
Route::get('category/edit/{id}',[CategoryController::Class,'CategoryEdit'])->name('edit.category');
Route::post('category/update',[CategoryController::class,'CategoryUpdate'])->name('update.category');
Route::get('category/delete/{id}',[CategoryController::Class,'CategoryDelete'])->name('delete.category');