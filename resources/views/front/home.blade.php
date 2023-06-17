@include('front.theme.header')

<section class="banner-sec">
    <div class="container-fluid px-0">
        <div class="banner-carousel owl-carousel owl-theme">
            @foreach ($getslider as $slider)
            <div class="item">
                <img src='{!! asset("storage/app/public/images/slider/".$slider->image) !!}' alt="">
                <div class="banner-contant">
                    <h2 class="sec-slider">{{$slider->title}}</h2>
                    <h2 class="sec-sliderdesc">{{$slider->description}}</h3>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="feature-sec">
    <div class="container">
        <div class="feature-carousel owl-carousel owl-theme">
            @foreach ($getbanner as $banner)
            <div class="item">
                <div class="feature-box">
                    @if ($banner->type != "")
                    @if ($banner->type == "category")
                    <a href="{{URL::to('product/'.$banner->cat_id)}}">
                        @else
                        <a href="{{URL::to('product-details/'.$banner->item_id)}}">
                            @endif
                            <img src='{!! asset("storage/app/public/images/banner/".$banner->image) !!}' alt="">
                        </a>
                        @else
                        <img src='{!! asset("storage/app/public/images/banner/".$banner->image) !!}' alt="">
                        @endif
                        <div class="feature-contant">
                        </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="product-prev-sec">
    <div class="container">
        <h2 class="sec-head">{{ trans('labels.our_products1') }}</h2>
        <div id="sync2" class="owl-carousel owl-theme">
            <?php $i = 1; ?>
            @foreach ($getcategory as $category)
            <div class="item product-tab">
                <img src='{!! asset("storage/app/public/images/category/".$category->image) !!}' alt=""> {{$category->category_name}}
            </div>
            <?php $i++; ?>
            @endforeach
        </div>
        <div id="sync1" class="owl-carousel owl-theme">
            <?php $i = 1; ?>
            @foreach($getcategory as $category)
            <div class="item">
                <div class="tab-pane">
                    <div class="row">
                        <?php $count = 0; ?>
                        @foreach($getitem as $item)
                        @if($item->cat_id==$category->id)
                        <?php if ($count == 6) break; ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="pro-box">
                                <div class="pro-img">

                                    <a href="{{URL::to('product-details/'.$item->id)}}">
                                        <img src='{{$item["itemimage"]->image }}' alt="">
                                    </a>
                                    @if (Session::get('id'))
                                    @if ($item->is_favorite == 1)
                                    <i class="fas fa-heart i"></i>
                                    @else
                                    <i class="fal fa-heart i" onclick="MakeFavorite('{{$item->id}}','{{Session::get('id')}}')"></i>
                                    @endif
                                    @else
                                    <a class="i" href="{{URL::to('/signin')}}"><i class="fal fa-heart"></i></a>
                                    @endif
                                </div>
                                <div class="product-details-wrap">
                                    <div class="product-details">
                                        <a href="{{URL::to('product-details/'.$item->id)}}">
                                            <h4>{{$item->item_name}}</h4>
                                        </a>
                                        <p class="pro-pricing">
                                            @foreach ($item->variation as $key => $value)
                                            {{$getdata->currency}}{{number_format($value->product_price, 2)}}
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
                        <?php $count++; ?>
                        @endif
                        @endforeach
                    </div>
                    <a href="{{URL::to('product/')}}" class="btn">{{ trans('labels.view_more') }}</a>
                </div>
            </div>
            <?php $i++; ?>
            @endforeach
        </div>
    </div>
</section>

<section class="about-sec">
    <div class="container">
        <div class="about-box">
            <div class="about-img">
                <img src='{!! asset("storage/app/public/images/about/".@$getabout->image) !!}' alt="">
            </div>
            <div class="about-contant">
                <h2 class="sec-head text-left">TENTANG TENANT</h2>
                <h3 class="sec-title"> {!! \Illuminate\Support\Str::limit(htmlspecialchars(@$getabout->title_content, ENT_QUOTES, 'UTF-8'), $limit = 500, $end = '...') !!}</h3>
                <p class="sec-title">{!! \Illuminate\Support\Str::limit(htmlspecialchars(@$getabout->about_content, ENT_QUOTES, 'UTF-8'), $limit = 500, $end = '...') !!}</p>
                <h3 class="sec-title">
                    <a href="https://wa.me/{{ str_replace(['-', ' '], '', @$getabout->mobile) }}" target="_blank">
                        <i class="fa fa-phone"></i>
                        {!! \Illuminate\Support\Str::limit(htmlspecialchars(@$getabout->mobile, ENT_QUOTES, 'UTF-8'), $limit = 500, $end = '...') !!}
                    </a>
                </h3>
                <h3 class="sec-title">
                    <a href="https://www.instagram.com/{{ @$getabout->instagram }}" target="_blank">
                        <i class="fab fa-instagram"></i>
                        {!! \Illuminate\Support\Str::limit(htmlspecialchars(@$getabout->email, ENT_QUOTES, 'UTF-8'), $limit = 500, $end = '...') !!}
                    </a>
                </h3>
            </div>
        </div>
    </div>
</section>

<section class="review-sec">
    <div class="container">
        <!-- <h2 class="sec-head">{{ trans('labels.our_review') }}</h2> -->
        <div class="review-carousel owl-carousel owl-theme">
            @foreach($getreview as $review)
            <div class="item">
                <div class="review-profile">
                    <img src='{!! asset("storage/app/public/images/profile/".$review["users"]->profile_image) !!}' alt="">
                </div>
                <h3>{{$review['users']->name}}</h3>
                <div class="rating">
                    @for ($i = 5; $i >= 1; $i--)
                    @if ($i <= $review->ratting)
                        <i class="fas fa-star"></i>
                        @else
                        <i class="far fa-star"></i>
                        @endif
                        @endfor
                </div>
                <p>{{ Str::limit($review->comment, 50) }}</p>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="tenant-pills">
    <div class="row">
        <div class="col-md-12">
            @foreach ($branch as $branchlist)
            <label class="PillList-item">
                <input type="checkbox" name="feature" value="{{$branchlist->id}}" id="feature-{{$branchlist->id}}">
                <span class="PillList-label">{{ $branchlist->name }}</span>
            </label>
            @endforeach
        </div>
    </div>
</section>



<!--<section class="our-app">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h2 class="sec-head">{{ trans('labels.banner_title') }}</h2>
                <p>{{ trans('labels.banner_description') }}</p>
            </div>
            <div class="col-lg-6">
                @if(@$getabout->ios != "")
                    <a href="{{@$getabout->ios}}" class="our-app-icon" target="_blank">
                        <img src="{!! asset('storage/app/public/front/images/apple-store.svg') !!}" alt="">
                    </a>
                @endif

                @if(@$getabout->android != "")
                    <a href="{{@$getabout->android}}" class="our-app-icon" target="_blank">
                        <img src="{!! asset('storage/app/public/front/images/play-store.png') !!}" alt="">
                    </a>
                @endif
            </div>
        </div>
    </div>
</section> -->


<!-- <div class="card">
  <div class="card-header">
    <h3>{{ trans('labels.select_near_branch') }}</h3>
  </div>
  <div class="card-body">
    <img src="{!! asset('storage/app/public/assets/images/logo6.png') !!}" alt="" class="img-responsive center-block d-block mx-auto" width="120" height="120">
    <h3 id="invalid_msg" style="color: red; text-align: center;"></h3>
    <div class="row">
      <div class="col-xs-12 col-sm-12 mobile-margin-bottom">
        <select name="branch" class="form-control" id="branch" required>
          <option value="none">{{ trans('labels.select_branch') }}</option>
          @foreach ($branch as $branchlist)
            <option value="{{$branchlist->id}}" branch_name="{{$branchlist->name}}" {{(@$_COOKIE['branch'] == $branchlist->id) ? 'selected' :  '' }}>{{$branchlist->name}}</option>
          @endforeach
        </select>
      </div>
    </div>
  </div>
  <div class="card-footer">
    <button type="button" class="btn btn-primary col-xs-12 col-lg-12" onclick="BranchSelect()">{{ trans('labels.submit') }}</button>
  </div>
</div> -->

@include('front.theme.footer')