@extends('admin.headerFooter')
@section('body')

            <div class="table-responsive">
                <h3 class=" text-center text-success">shipping for this order</h3>
                <table class="table table-dark table-bordered">
                    <tr>
                        <th>full name</th>
                        <th>phone number</th>
                        <th>email name</th>
                        <th>address </th>

                    </tr>
                    <tr>
                        <td>{{Session::get('Cfullname')}}</td>
                        <td>{{Session::get('customerEmail')}}</td>
                        <td>{{Session::get('Cphone_number')}}</td>
                        <td>{{Session::get('Caddress')}}</td>

                    </tr>
                </table>
            </div>

        <div class="table-responsive">
                <h3 class=" text-center text-success">payment for this order</h3>
                <table class="table table-dark table-bordered">
                    <tr>
                        <th>payment type</th>
                    </tr>
                    <tr>
                        <td>{{Session::get('type')}}</td>
                    </tr>
                </table>
            </div>

<div class="table-responsive">
       <h3 class="text text-success text-center">Product</h3>
    <table class="table table-dark table-bordered">

        <tr>
            <th scope="col">id</th>
            <th scope="col">product-name</th>
            <th scope="col">product-price</th>
            <th scope="col">product-quantity</th>
            <th>total price</th>

            @php($i=1)

        </tr>
        <tr>
            <td>{{$i++}}</td>
            <td>{{Session::get('product_name')}}</td>
            <td>{{Session::get('product_price')}}</td>
            <td>{{Session::get('product_quantity')}}</td>
            <td>{{$total=Session::get('product_price')}}</td>

        </tr>

    </table>
</div>
    <a href="{{route('downloadInfo')}}">Download pdf</a>
    @endsection