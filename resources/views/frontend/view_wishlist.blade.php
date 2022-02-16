@extends('layouts.frontend_master')

@section('main_content')

<div class="container">
    <div class="page-cart">
        <div class="table-responsive">
            <table class="cart-summary table table-bordered">
                <thead>
                    <tr>
                        <th class="width-20">&nbsp;</th>
                        <th class="width-80 text-center">Image</th>
                        <th>Name</th>
                        <th class="width-100 text-center">Unit price</th>
                        <th class="width-100 text-center">Action</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td class="product-remove">
                            <a title="Remove this item" class="remove" href="#">
                                <i class="fa fa-times"></i>
                            </a>
                        </td>
                        <td>
                            <a href="product-detail-left-sidebar.html">
                                <img width="80" alt="Product Image" class="img-responsive" src="img/product/19.jpg">
                            </a>
                        </td>
                        <td>
                            <a href="product-detail-left-sidebar.html" class="product-name">Organic Strawberry Fruits</a>
                        </td>
                        <td class="text-center">
                            $265
                        </td>
                        <td class="text-center">
                            <a href="" class="btn btn-success border-rounded">Add To Cart</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="checkout-btn">
            <a href="product-checkout.html" class="btn btn-primary pull-right" title="Proceed to checkout">
                <span>Proceed to checkout</span>
                <i class="fa fa-angle-right ml-xs"></i>
            </a>
        </div>
    </div>
</div>

@endsection
