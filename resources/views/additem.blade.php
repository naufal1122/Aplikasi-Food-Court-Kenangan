
@extends('theme.default')

@section('content')

<div class="row page-titles mx-0">
    <div class="col p-md-0">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{URL::to('/admin/home')}}">{{ trans('labels.dashboard') }}</a></li>
            <li class="breadcrumb-item active"><a href="javascript:void(0)">{{ trans('labels.items') }}</a></li>
        </ol>
    </div>
</div>
<!-- row -->

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    @if(Session::has('danger'))
                    <div class="alert alert-danger">
                        {{ Session::get('danger') }}
                        @php
                            Session::forget('danger');
                        @endphp
                    </div>
                    @endif

                    @foreach ($errors->all() as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                    @endforeach

                    <h4 class="card-title">{{ trans('labels.add_item') }}</h4>
                    <p class="text-muted"><code></code>
                    </p>
                    <div id="privacy-policy-three" class="privacy-policy">
                        <form method="post" action="{{ URL::to('admin/item/store') }}" name="about" id="about" enctype="multipart/form-data">
                            @csrf

                            <div class="row">
                                <div class="col-sm-3 col-md-12">
                                    @if (Auth::user()->type == "1")
                                    <div class="form-group">
                                        <label for="branch_id" class="col-form-label">{{ trans('labels.select_branch') }}</label>
                                        <select class="form-control" name="branch_id" id="branch_id">
                                            <option value="">{{ trans('labels.select_branch') }}</option>
                                            @foreach ($getbranch as $branch)
                                                <option value="{{$branch->id}}">{{$branch->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    @else
                                        <input type="hidden" class="form-control" name="branch_id" id="branch_id" value="{{Auth::user()->id}}">
                                    @endif
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3 col-md-12">
                                    <div class="form-group">
                                        <label for="cat_id" class="col-form-label">{{ trans('labels.category') }}</label>
                                        <select name="cat_id" class="form-control selectpicker" multiple data-live-search="true" id="cat_id">
                                            <option value="">{{ trans('messages.select_category') }}</option>
                                            <?php
                                            foreach ($getcategory as $category) {
                                            ?>
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                        @if ($errors->has('cat_id'))
                                            <span class="text-danger">{{ $errors->first('cat_id') }}</span>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="item_name" class="col-form-label">{{ trans('labels.item_name') }}</label>
                                        <input type="text" class="form-control" name="item_name" id="item_name" placeholder="{{ trans('messages.enter_item_name') }}">
                                        @if ($errors->has('item_name'))
                                            <span class="text-danger">{{ $errors->first('item_name') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="delivery_time" class="col-form-label">{{ trans('labels.delivery_time') }}</label>
                                        <input type="text" class="form-control" name="delivery_time" id="delivery_time" placeholder="{{ trans('messages.enter_delivery_time') }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="addons_id" class="col-form-label">{{ trans('labels.addons') }}</label>
                                        <select name="addons_id[]" class="form-control selectpicker" multiple data-live-search="true" id="addons_id">
                                            <option value="">{{ trans('messages.select_addons') }}</option>
                                            <?php
                                            foreach ($getaddons as $addons) {
                                            ?>
                                            <option value="{{$addons->id}}">{{$addons->name}}</option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="ingredients_id" class="col-form-label">{{ trans('labels.ingredients') }}</label>
                                        <select name="ingredients_id[]" class="form-control selectpicker" multiple data-live-search="true" id="ingredients_id">
                                            <option value="">{{ trans('messages.select_ingredients') }}</option>
                                            <?php
                                            foreach ($getingredients as $ingredients) {
                                            ?>
                                            <option value="{{$ingredients->id}}">{{$ingredients->ingredients}}</option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row panel-body">
                                <div class="col-sm-3 nopadding">
                                    <div class="form-group">
                                        <label for="variation" class="col-form-label">{{ trans('labels.variation') }}</label>
                                        <input type="text" class="form-control" name="variation[]" id="variation" placeholder="{{ trans('messages.enter_variation') }}" required="">
                                    </div>
                                </div>
                                <div class="col-sm-4 nopadding">
                                    <div class="form-group">
                                        <label for="product_price" class="col-form-label">{{ trans('labels.product_price') }}</label>
                                        <input type="text" class="form-control" id="product_price" name="product_price[]" placeholder="{{ trans('messages.enter_product_price') }}" required="">
                                    </div>
                                </div>
                                <div class="col-sm-4 nopadding">
                                    <div class="form-group">
                                        <label for="sale_price" class="col-form-label">{{ trans('labels.sale_price') }}</label>
                                        <input type="text" class="form-control" id="sale_price" name="sale_price[]" placeholder="{{ trans('messages.enter_sale_price') }}" required="" value="0">
                                    </div>
                                </div>
                                <div class="col-sm-1 nopadding">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-btn">
                                                <button class="btn btn-info" type="button"  onclick="education_fields();"> + </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               <div class="clear"></div>
                            </div>

                            <div id="education_fields"></div>

                            <div class="row">
                                <div class="col-sm-3 col-md-12">
                                    <div class="form-group">
                                        <label for="description" class="col-form-label">{{ trans('labels.description') }}</label>
                                        <textarea class="form-control" rows="5" name="description" id="description" placeholder="{{ trans('messages.enter_description') }}"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="file" class="col-form-label">{{ trans('labels.images') }} (500x250)</label>
                                        <input type="file" multiple="true" class="form-control" name="file[]" id="file" required="" accept="image/*">
                                        <input type="hidden" name="removeimg" id="removeimg">
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <div class="form-group">
                                        <label for="tax" class="col-form-label">{{ trans('labels.tax') }} (%)</label>
                                        <input type="text" class="form-control" name="tax" id="tax" value="0" placeholder="{{ trans('messages.enter_tax') }}">
                                    </div>
                                </div>
                            </div>

                            @if (env('Environment') == 'sendbox')
                                <button type="button" class="btn btn-primary" onclick="myFunction()">{{ trans('labels.save') }}</button>
                            @else
                                <button type="submit" class="btn btn-primary">{{ trans('labels.save') }}</button>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- #/ container -->
@endsection
@section('script')
<script type="text/javascript">
    var room = 1;
    function education_fields() {
        "use strict";
        room++;
        var objTo = document.getElementById('education_fields')
        var divtest = document.createElement("div");
        divtest.setAttribute("class", "form-group removeclass"+room);
        var rdiv = 'removeclass'+room;
        divtest.innerHTML = '<div class="row panel-body"><div class="col-sm-3 nopadding"><div class="form-group"><label for="variation" class="col-form-label">{{ trans('labels.variation') }}</label><input type="text" class="form-control" name="variation[]" id="variation" placeholder="{{ trans('messages.enter_variation') }}" required=""></div></div><div class="col-sm-4 nopadding"><div class="form-group"><label for="product_price" class="col-form-label">{{ trans('labels.product_price') }}</label><input type="text" class="form-control" id="product_price" name="product_price[]" placeholder="{{ trans('messages.enter_product_price') }}" required=""></div></div><div class="col-sm-4 nopadding"><div class="form-group"><label for="product_price" class="col-form-label">{{ trans('labels.sale_price') }}</label><input type="text" class="form-control" id="sale_price" name="sale_price[]" placeholder="{{ trans('messages.enter_sale_price') }}" required="" value="0"></div></div><div class="col-sm-1 nopadding"><div class="form-group"><div class="input-group"><div class="input-group-btn"><button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> - </button></div></div></div></div><div class="clear"></div></div>';
        
        objTo.appendChild(divtest)
    }
    function remove_education_fields(rid) {
        "use strict";
       $('.removeclass'+rid).remove();
    }

    $('#tax').keyup(function(){
        "use strict";
        var val = $(this).val();
        if(isNaN(val)){
             val = val.replace(/[^0-9\.]/g,'');
             if(val.split('.').length>2) 
                 val =val.replace(/\.+$/,"");
        }
        $(this).val(val); 
    });
</script>
@endsection