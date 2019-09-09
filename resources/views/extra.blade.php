
<div class="new-arrivals-w3agile">
    <div class="container">
        <h2 class="tittle">New Arrivals</h2>
        <div class="arrivals-grids">
            @foreach($products as $product)
                <div class="col-md-3 arrival-grid simpleCart_shelfItem">
                    <div class="grid-arr">
                        <div  class="grid-arrival">
                            <figure>
                                <a href="{{route('product_details',['id'=>$product->id,'name' =>$product->product_name])}}" class="new-gri" >
                                    <div class="grid-img">
                                        <img  src="{{asset('/')}}/product_images/mobile.jpeg" class="img-responsive" alt="">
                                    </div>
                                    <div class="grid-img">
                                        <img  src="{{asset('$product->product_image')}}" class="img-responsive"  alt="">
                                    </div>
                                </a>
                            </figure>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                        <div class="ribben1">
                            <p>SALE</p>
                        </div>
                        <div class="block">
                            <div class="starbox small ghosting"> </div>
                        </div>
                        <div class="women">
                            <h6><a href="single.html">{{($product->product_name)}}</a></h6>
                            <span class="size">XL / XXL / S </span>
                            <p ><del>$100.00</del><em class="item_price">TK.{{($product->product_price)}}</em></p>
                            <a href="" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
                        </div>
                    </div>

                </div>
            @endforeach
        </div>
    </div>
</div>





<form action="{{route('add_cart')}}" method="POST">
    {{ csrf_field() }}
    <div class="color-quality">
        <div class="color-quality-right">
            <h5>Quality :</h5>
            <select id="country1" name="quality" onchange="change_country(this.value)" class="frm-field required sect">
                <option value="null">5 Qty</option>
                <option value="null">6 Qty</option>
                <option value="null">7 Qty</option>
                <option value="null">10 Qty</option>
            </select>
        </div>
    </div>
    <label>Quantity</label>
    <input type="text" name="qty">
    <input type="hidden" name="productId" value="{{$cardProduct->id}}">
    <div class="occasional">
        <h5>Types :</h5>
        <div class="colr ert">
            <label class="radio" ><input type="radio" name="radio" value="0" checked=""><i></i>Casual Shoes</label>
        </div>
        <div class="colr">
            <label class="radio"><input type="radio" name="radio" value="1"><i></i>Sports Shoes</label>
        </div>
        <div class="colr">
            <label class="radio"><input type="radio" name="radio" value="2"><i></i>Formal Shoes</label>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="occasion-cart">
        <input type="submit" name="btn" value="add to cart" class="item_add hvr-outline-out button2">
    </div>
</form>
<hr/>