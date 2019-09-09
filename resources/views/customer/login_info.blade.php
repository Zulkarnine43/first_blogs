@extends('admin.headerFooter')
@section('body')
    <div class="content">
        <!--login-->
        <div class="login">
            <div class="main-agileits">
                <div class="form-w3agile">
                    <h3 >Login If you register already</h3>
                    <h3>{{Session::get('message')}}</h3>

                    <form action="{{route('loginCheck')}}" method="POST">
                        @csrf
                        <div class="key">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input  type="text" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
                            <div class="clearfix"></div>
                        </div>
                        <div class="key">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            <input  type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
                            <div class="clearfix"></div>
                        </div>
                        <input type="submit" name="btn" value="Login">
                    </form>
                </div>
                <div class="forg">
                    <a href="#" class="forg-left">Forgot Password</a>
                    <a href="registered.html" class="forg-right">Register</a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--login-->
    </div>


    @endsection