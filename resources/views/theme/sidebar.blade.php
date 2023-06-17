<!--**********************************
    Sidebar start
***********************************-->
@if (Auth::user()->type == "1")
<div class="nk-sidebar">           
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li>
                <a href="{{URL::to('/admin/home')}}" aria-expanded="false">
                    <i class="icon-speedometer menu-icon"></i><span class="nav-text">{{ trans('labels.dashboard') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/branches')}}" aria-expanded="false">
                    <i class="fa fa-building-o"></i><span class="nav-text">{{ trans('labels.branches') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/slider')}}" aria-expanded="false">
                    <i class="fa fa-image"></i><span class="nav-text">{{ trans('labels.sliders') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/banner')}}" aria-expanded="false">
                    <i class="fa fa-bullhorn"></i><span class="nav-text">{{ trans('labels.banners') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/promocode')}}" aria-expanded="false">
                    <i class="fa fa-tag"></i><span class="nav-text">{{ trans('labels.promocodes') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/payment')}}" aria-expanded="false">
                    <i class="fa fa-usd"></i><span class="nav-text">{{ trans('labels.payment_methods') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/users')}}" aria-expanded="false">
                    <i class="fa fa-users"></i><span class="nav-text">{{ trans('labels.users') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/category')}}" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">{{ trans('labels.categories') }}</span>
                </a>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="fa fa-coffee"></i><span class="nav-text">{{ trans('labels.itemss') }}</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/item')}}">{{ trans('labels.items') }}</a></li>
                </ul>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/addons')}}">{{ trans('labels.addons') }}</a></li>
                </ul>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/ingredients')}}">{{ trans('labels.ingredients') }}</a></li>
                </ul>
            </li>
            <li>
                <a href="{{URL::to('/admin/orders')}}" aria-expanded="false">
                    <i class="fa fa-shopping-cart"></i><span class="nav-text">{{ trans('labels.orders') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/reviews')}}" aria-expanded="false">
                    <i class="fa fa-star"></i><span class="nav-text">{{ trans('labels.reviews') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/report')}}" aria-expanded="false">
                    <i class="fa fa-bar-chart"></i><span class="nav-text">{{ trans('labels.report') }}</span>
                </a>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="fa fa-cog"></i><span class="nav-text">{{ trans('labels.cms_pagess') }}</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/settings')}}">{{ trans('labels.about_settingss') }}</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
@endif

@if (Auth::user()->type == "4")
<div class="nk-sidebar">           
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li>
                <a href="{{URL::to('/admin/home')}}" aria-expanded="false">
                    <i class="icon-speedometer menu-icon"></i><span class="nav-text">{{ trans('labels.dashboard') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/slider')}}" aria-expanded="false">
                    <i class="fa fa-image"></i><span class="nav-text">{{ trans('labels.sliders') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/banner')}}" aria-expanded="false">
                    <i class="fa fa-bullhorn"></i><span class="nav-text">{{ trans('labels.banners') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/orders')}}" aria-expanded="false">
                    <i class="fa fa-shopping-cart"></i><span class="nav-text">{{ trans('labels.orders') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/promocode')}}" aria-expanded="false">
                    <i class="fa fa-tag"></i><span class="nav-text">{{ trans('labels.promocodes') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/category')}}" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">{{ trans('labels.categories') }}</span>
                </a>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="fa fa-coffee"></i><span class="nav-text">{{ trans('labels.itemss') }}</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/ingredients')}}">{{ trans('labels.ingredients') }}</a></li>
                </ul>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/addons')}}">{{ trans('labels.addons') }}</a></li>
                </ul>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/item')}}">{{ trans('labels.items') }}</a></li>
                </ul>
            </li>
            <li>
                <a href="{{URL::to('/admin/report')}}" aria-expanded="false">
                    <i class="fa fa-bar-chart"></i><span class="nav-text">{{ trans('labels.report') }}</span>
                </a>
            </li>
            <li>
                <a href="{{URL::to('/admin/reviews')}}" aria-expanded="false">
                    <i class="fa fa-star"></i><span class="nav-text">{{ trans('labels.reviews') }}</span>
                </a>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="fa fa-cog"></i><span class="nav-text">{{ trans('labels.cms_pages') }}</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/settings')}}"><i class="fa fa-info-circle"></i><span class="nav-text">{{ trans('labels.about_settings') }}</span></a></li>
                </ul>
                <ul aria-expanded="false">
                    <li><a href="{{URL::to('/admin/clear-cache')}}"><i class="fa fa-refresh"></i><span class="nav-text">{{ trans('labels.clear_cache') }}</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
@endif

<!--**********************************
    Sidebar end
***********************************-->