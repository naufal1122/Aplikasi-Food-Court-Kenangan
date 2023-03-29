@extends('theme.default')

@section('content')


    <div class="container-fluid mt-3">
        <div class="row"> 
            @if (Auth::user()->type == "1") 
            <div class="col-lg-3 col-sm-6">
                <div class="card gradient-3">
                    <a href="{{URL::to('/admin/branches')}}">
                        <div class="card-body">
                            <h3 class="card-title text-white">{{ trans('labels.branches') }}</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">{{count($branches)}}</h2>
                            </div>
                            <span class="float-right display-5 opacity-5"  style="color:#fff;"><i class="fa fa-plus"></i></span>
                        </div>
                    </a>
                </div>
            </div>
            @endif
            <div class="col-lg-3 col-sm-6">
                <div class="card gradient-4">
                    <a href="{{URL::to('/admin/banner')}}">
                        <div class="card-body">
                            <h3 class="card-title text-white">{{ trans('labels.banners') }}</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">{{count($banners)}}</h2>
                            </div>
                            <span class="float-right display-5 opacity-5"  style="color:#fff;"><i class="fa fa-bullhorn"></i></span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card gradient-2">
                    <a href="#">
                        <div class="card-body">
                            <h3 class="card-title text-white">Promo</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">0</h2>
                            </div>
                            <span class="float-right display-5 opacity-5"  style="color:#fff;"><i class="fa fa-list-alt"></i></span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card gradient-1">
                    <a href="#">
                        <div class="card-body">
                            <h3 class="card-title text-white">Sample Card</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">0</h2>
                            </div>
                            <span class="float-right display-5 opacity-5"  style="color:#fff;"><i class="fa fa-cutlery"></i></span>
                        </div>
                    </a>
                </div>
            </div>
            @if (Auth::user()->type == "4") 
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-3">
                        <a href="{{URL::to('/admin/addons')}}">
                            <div class="card-body">
                                <h3 class="card-title text-white">Sample Card</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">{{count($addons)}}</h2>
                                </div>
                                <span class="float-right display-5 opacity-5"  style="color:#fff;"><i class="fa fa-plus"></i></span>
                            </div>
                        </a>
                    </div>
                </div>
            @endif
        </div>
    </div>
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form method="post" id="assign">
                {{csrf_field()}}
                <div class="modal-body">
                    <div class="form-group">
                        <label for="category_id" class="col-form-label">{{ trans('labels.order_id') }}:</label>
                        <input type="text" class="form-control" id="bookId" name="bookId" readonly="">
                    </div>
                    <div class="form-group">
                        <label for="category_id" class="col-form-label">{{ trans('messages.select_driver') }}:</label>
                        <select class="form-control" name="driver_id" id="driver_id" required="">
                            <option value="">{{ trans('messages.select_driver') }}</option>
                            @foreach ($getdriver as $driver)
                                <option value="{{$driver->id}}">{{$driver->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.close') }}</button>
                    <button type="button" class="btn btn-primary" onclick="assign()" data-dismiss="modal">{{ trans('labels.save') }}</button>
                </div>
                </form>
            </div>

        </div>
    </div>
    <!-- #/ container -->
@endsection
@section('script')
<script type="text/javascript">
    $('.table').dataTable({
      aaSorting: [[0, 'DESC']]
    });
    function StatusUpdate(id,status) {
        "use strict";
        swal({
            title: "{{ trans('messages.are_you_sure') }}",
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: "{{ trans('messages.yes') }}",
            cancelButtonText: "{{ trans('messages.no') }}",
            closeOnConfirm: false,
            closeOnCancel: false,
            showLoaderOnConfirm: true,
        },
        function(isConfirm) {
            if (isConfirm) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url:"{{ URL::to('admin/orders/update') }}",
                    data: {
                        id: id,
                        status: status
                    },
                    method: 'POST', //Post method,
                    dataType: 'json',
                    success: function(response) {
                        if (response == 1) {
                            location.reload();
                        } else {
                            swal("Cancelled", "{{ trans('messages.wrong') }} :(", "error");
                        }
                    },
                    error: function(e) {
                        swal("Cancelled", "{{ trans('messages.wrong') }} :(", "error");
                    }
                });
            } else {
                swal("Cancelled", "{{ trans('messages.record_safe') }} :)", "error");
            }
        });
    }

    $(document).on("click", ".open-AddBookDialog", function () {
         var myBookId = $(this).data('id');
         $(".modal-body #bookId").val( myBookId );
    });

    function assign(){     
        var bookId=$("#bookId").val();
        var driver_id = $('#driver_id').val();
        var CSRF_TOKEN = $('input[name="_token"]').val();
        $('#preloader').show();
        $.ajax({
            headers: {
                'X-CSRF-Token': CSRF_TOKEN 
            },
            url:"{{ URL::to('admin/orders/assign') }}",
            method:'POST',
            data:{'bookId':bookId,'driver_id':driver_id},
            dataType:"json",
            success:function(data){
                $('#preloader').hide();
                if (data == 1) {
                    location.reload();
                }
            },error:function(data){
               
            }
        });
    }
</script>
@endsection