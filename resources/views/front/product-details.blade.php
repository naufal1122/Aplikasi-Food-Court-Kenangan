@include('front.theme.header')

<section class="product-details-sec">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="product-details-img owl-carousel owl-theme">
                    @foreach ($getimages as $images)
                    <div class="item">
                        <a data-fancybox="gallery" href="{{$images->image }}">
                            <img src='{{$images->image }}' alt="">
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="col-lg-7 pro-details-display">
                <div class="pro-details-name-wrap">
                    <h3 class="sec-product mt-0">{{$getitem->item_name}}</h3>
                    @foreach ($getitem->variation as $key => $value)
                        <input type="hidden" name="price" id="price" value="{{$value->product_price}}">
                        @break
                    @endforeach
                    @if (Session::get('id'))
                        @if ($getitem->is_favorite == 1)
                            <i class="fas fa-heart i"></i>
                        @else
                            <i class="fal fa-heart i" onclick="MakeFavorite('{{$getitem->id}}','{{Session::get('id')}}')"></i>
                        @endif
                    @else
                        <a class="i" href="{{URL::to('/signin')}}"><i class="fal fa-heart i"></i></a>
                    @endif
                </div>

                <small>{{$getitem['category']->category_name}}</small>

                @if (count($getitem['variation']) > 1)

                    {{ trans('messages.select_variation') }}
                    <select class="form-control readers" name="variation" id="variation" style="width: 50%">
                        @foreach($getitem['variation'] as $key => $variation)
                            <option value="{{$variation->id}}" data-price="{{$variation->product_price}}" data-saleprice="{{$variation->sale_price}}" data-variation="{{$variation->variation}}">{{$variation->variation}}</option>
                        @endforeach
                    </select>
                @else

                    <select class="form-control readers" name="variation" id="variation" style="width: 50%; display: none;">
                        @foreach($getitem['variation'] as $key => $variation)
                            <option value="{{$variation->id}}" data-price="{{$variation->product_price}}" data-saleprice="{{$variation->sale_price}}" data-variation="{{$variation->variation}}">{{$variation->variation}}</option>
                        @endforeach
                    </select>

                @endif

                <div class="extra-food-wrap">
                    @if (count($freeaddons['value']) != 0)
                        <ul class="list-unstyled extra-food">
                            @if ($freeaddons['value'] != "")
                                <h3>{{ trans('labels.free_addons') }}</h3>
                                @foreach ($freeaddons['value'] as $addons)
                                <li>
                                    <input type="checkbox" name="addons[]" class="Checkbox" value="{{$addons->id}}" price="{{$addons->price}}" addons_name="{{$addons->name}}">
                                    <p>{{$addons->name}}</p>
                                </li>
                                @endforeach
                            @else

                            @endif
                        </ul>
                    @endif
                    @if (count($paidaddons['value']) != 0)
                        <ul class="list-unstyled extra-food">
                            <h3>{{ trans('labels.paid_addons') }}</h3>
                            <div id="pricelist">
                            @foreach ($paidaddons['value'] as $addons)
                            <li>
                                <input type="checkbox" name="addons[]" class="Checkbox" value="{{$addons->id}}" price="{{$addons->price}}" addons_name="{{$addons->name}}">
                                <p>{{$addons->name}} : {{$getdata->currency}}{{number_format($addons->price, 2)}}</p>
                            </li>
                            @endforeach
                            </div>
                        </ul>
                    @endif

                    <div class="pro-details-add-wrap">
                        <p class="pricing">
                            @foreach ($getitem->variation as $key => $value)
                                <h3 id="temp-pricing" class="product-price">{{$getdata->currency}}{{number_format($value->product_price,2)}}</h3>
                                @if ($value->sale_price > 0)
                                    <h3 id="card2-oldprice">{{$getdata->currency}}{{number_format($value->sale_price,2)}}</h3>
                                @endif
                                @break
                            @endforeach
                            <p class="card2-oldprice-show"></p>
                            @if($getitem->tax > 0)
                                <p style="color: #ff0000;" class="mt-3">+ {{$getitem->tax}}% Additional Tax</p>
                            @else
                                <p style="color: #03a103;" class="mt-3">Inclusive of all taxes</p>
                            @endif
                        </p>

                        <p class="open-time"><i class="far fa-clock"></i> {{$getitem->delivery_time}}</p>
                        @if (Session::get('id'))
                            @if ($getitem->item_status == '1')
                                <button class="btn" onclick="AddtoCart('{{$getitem->id}}','{{Session::get('id')}}')">{{ trans('labels.add_to_cart') }}</button>
                            @else 
                                <button class="btn" disabled="">{{ trans('labels.unavailable') }}</button>
                            @endif
                        @else
                            @if ($getitem->item_status == '1')
                                <a class="btn" href="{{URL::to('/signin')}}">{{ trans('labels.add_to_cart') }}</a>
                            @else 
                                <button class="btn" disabled="">{{ trans('labels.unavailable') }}</button>
                            @endif
                        @endif
                    </div>
                </div>
                <textarea id="item_notes" name="item_notes" placeholder="Write Notes..."></textarea>
            </div>

            
            <div class="col-12">
                <h3 class="sec-head">{{ trans('labels.description') }}</h3>
                <p>{{$getitem->item_description}}</p>

                @if (count($getingredients['value']) != 0)
                <h3 class="sec-head">{{ trans('labels.ingredients') }}</h3>
                    <div class="ingredients-carousel owl-carousel owl-theme">
                        @foreach ($getingredients['value'] as $ingredients)
                        <div class="item">
                            <div class="ingredients-box">
                                <img src='{{$ingredients->image }}' alt="">
                            </div>
                        </div>
                        @endforeach
                    </div>
                @endif
            </div>

            <div class="col-12">
                <h2 class="sec-head text-center">{{ trans('labels.related_food') }}</h2>
                <div class="pro-ref-carousel owl-carousel owl-theme">
                    @foreach($relatedproduct as $item)
                    <div class="item">
                        <div class="pro-box">
                            <div class="pro-img">
                                @foreach ($item->variation as $key => $value)
                                    @if($value->sale_price > 0)
                                        <div class="ribbon-wrapper">
                                            <div class="ribbon">ON SALE</div>
                                        </div>
                                    @endif
                                    @break
                                @endforeach
                                <a href="{{URL::to('product-details/'.$item->id)}}">
                                    <img src='{{$item["itemimage"]->image }}' alt="">
                                </a>
                                @if (Session::get('id'))
                                    @if ($item->is_favorite == 1)
                                        <i class="fas fa-heart i"></i>
                                    @else
                                        <i class="fal fa-heart i"  onclick="MakeFavorite('{{$item->id}}','{{Session::get('id')}}')"></i>
                                    @endif
                                @else
                                    <a href="{{URL::to('/signin')}}"><i class="fal fa-heart i"></i></a>
                                @endif
                            </div>
                            <div class="product-details-wrap">
                                <div class="product-details">
                                    <a href="{{URL::to('product-details/'.$item->id)}}">
                                        <h4>{{$item->item_name}}</h4>
                                    </a>
                                    <p class="pro-pricing">
                                        @foreach ($item->variation as $key => $value)
                                            {{$getdata->currency}}{{number_format($value->product_price,2)}}
                                            @break
                                        @endforeach
                                    </p>
                                </div>
                                <div class="product-details">
                                    <p>{{ Str::limit($item->item_description, 60) }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>
</section>

@include('front.theme.footer')
<script type="text/javascript">

$('input[type="checkbox"]').change(function() {
    "use strict";

    $('#temp-pricing').hide();
    var total = parseFloat($("#price").val()); 

    if($(this).is(':checked')){

        total += parseFloat($(this).attr('price')) || 0;

    }

    else{

        total -= parseFloat($(this).attr('price')) || 0;

    }

    $('p.pricing').text('{{$getdata->currency}}'+total.toFixed(2));

    $('#price').val(total.toFixed(2));

})

// ------------------------

$(".readers").change(function() {
    "use strict";
    $('input[type=checkbox]').prop('checked',false);
    $(".readers option:selected").each(function() {
        $('#temp-pricing').hide();
        $('#card2-oldprice').hide();
        var ttl = parseFloat($(this).attr('data-price').replace(/"|\,|\./g, ''));
        var ttlsaleprice = parseFloat($(this).attr('data-saleprice').replace(/"|\,|\./g, ''));
        $('p.pricing').text('{{$getdata->currency}}'+ttl.toFixed(2));
        if (ttlsaleprice > 0) {
            $('p.card2-oldprice-show').text('{{$getdata->currency}}'+ttlsaleprice.toFixed(2));
        }
        
        $('#price').val($(this).attr('data-price'));
    });
});
$(document).ready(function(){
    $('.readers').prop('selectedIndex',0);
});

</script>