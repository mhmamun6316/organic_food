<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Category;


class IndexController extends Controller
{
    public function index(){
        return view('frontend.index');
    }
}
