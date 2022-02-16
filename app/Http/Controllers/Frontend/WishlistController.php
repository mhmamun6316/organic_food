<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function ViewWishlist(){
        return view('frontend.view_wishlist');
    }
}
