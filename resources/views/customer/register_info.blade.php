@extends('admin.headerFooter')
@section('body')
<div class="content">
    <!--login-->
    <div class="login">
        <div class="main-agileits">
            <div class="form-w3agile form1">
                <h3 class="text-success text-success">{{Session::get('message')}}</h3>
                <h3>Register</h3>

                <form action="{{route('registerSave')}}" method="POST">
                    @csrf
                    <div class="key">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input  type="text" value="Username" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="">
                        <div class="clearfix"></div>
                    </div>
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
                    <div class="key">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                        <input  type="password" value="Confirm Password" name="confirm_password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}" required="">
                        <div class="clearfix"></div>
                    </div>
                    <input type="submit" name="btn" value="Submit">
                </form>
            </div>

        </div>
    </div>
    <!--login-->
</div>



    @endsection