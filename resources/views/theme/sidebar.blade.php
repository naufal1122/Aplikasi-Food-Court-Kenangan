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
                <a href="{{URL::to('/admin/category')}}" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">{{ trans('labels.categories') }}</span>
                </a>
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
                <a href="{{URL::to('/admin/category')}}" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">{{ trans('labels.categories') }}</span>
                </a>
            </li>
            
            
         
        </ul>
    </div>
</div>
@endif

<!--**********************************
    Sidebar end
***********************************-->