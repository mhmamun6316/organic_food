<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;

class CategoryController extends Controller
{
    public function CategoryView(){
        $categorys = Category::all();
        return view('backend.category.view_category',compact('categorys'));
    }

    public function CategoryStore(Request $request){
        $category = new Category();
        $category->category_name_en = $request->cat_name_en;
        $category->category_name_bn = $request->cat_name_bn;
        $category->save();
        return redirect()->back();
    }
}
