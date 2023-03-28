<!-- **********************************
    Nav header start
***********************************-->
<div class="nav-header">
    <div class="brand-logo">
        <a href="index.html">
            <b class="logo-abbr"><img src="{!! asset('storage/app/public/assets/images/logo1.png') !!}" alt="" > </b>
            <span class="brand-title">
                <img src="{!! asset('storage/app/public/assets/images/logo2.png') !!}" alt="" >
            </span>
        </a>
    </div>
</div>
<!--**********************************
    Nav header end
***********************************-->

<!--**********************************
    Header start
***********************************-->
<div class="header">
    <div class="header-content clearfix">

        <div class="nav-control">
            <div class="hamburger">
                <span class="toggle-icon"><i class="icon-menu"></i></span>
            </div>
        </div>
        <div class="header-left">
            <div class="input-group icons">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                <div class="drop-down animated flipInX d-md-none">
                    <form action="#">
                        <input type="text" class="form-control" placeholder="Search">
                    </form>
                </div>
            </div>
        </div>
        <div class="header-right">
            <ul class="clearfix">
                <li class="icons dropdown">
                    {{Auth::user()->name}}
                </li>
                <li class="icons dropdown">
                    <a href="javascript:void(0)" data-toggle="dropdown">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-pill gradient-2 badge-primary" id="notificationcount" onclick="clearnoti();">0</span>
                    </a>
                </li>
                <li class="icons dropdown">
                    <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                        <span class="activity active"></span>
                        <img src="{!! asset('storage/app/public/assets/images/logo1.png') !!}" height="40" width="40" alt="">
                    </div>
                    <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                        <div class="dropdown-content-body">
                            <ul>
                                <li><a href="javascript:void(0);" data-toggle="modal" data-target="#ChangePasswordModal"><i class="icon-key"></i> <span>{{ trans('labels.edit_profile') }}</span></a></li>
                                <li><a href="javascript:void(0);" data-toggle="modal" data-target="#Selltings"><i class="fa fa-cog" aria-hidden="true"></i> <span>{{ trans('labels.settings') }}</span></a></li>
                                <li><a href="{{URL::to('/admin/logout')}}"><i class="icon-logout"></i> <span>{{ trans('labels.logout') }}</span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--**********************************
    Header end ti-comment-alt
***********************************