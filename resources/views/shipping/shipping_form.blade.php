
@extends('admin.headerFooter');
@section('body')

                        <h3>Shipping Info goes here.....</h3>
                    <form action="{{route('fromSubmit')}}" method="POST" class="form-right">
                        @csrf

                        <div class="content">
                            <!--login-->
                            <div class="login">
                                <div class="main-agileits">
                                    <div class="form-w3agile form1">
                                        <h3>Register</h3>
                                        <div class="key">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <input  type="text" class="input-lg float-lg-right" name="fullname" value="" placeholder="fullname" >

                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="key">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <input  type="text" class="input-lg" name="email" value=""  placeholder="email">
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="key">
                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                            <input  type="text" class="input-lg" name="phone_number" placeholder=" phone_number">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="key">
                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                            <input  type="text" class="input-lg" name="address" placeholder="address">
                                            <div class="clearfix"></div>
                                        </div>

                                        <input class="text-success" type="submit" name="btn" value="Submit">
                                    </div>

                                </div>
                            </div>
                            <!--login-->
                        </div>
                    </form>
                </div>

@endsection

