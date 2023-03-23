<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            <th>{{ trans('labels.profile_image') }}</th>
            <th>{{ trans('labels.name') }}</th>
            <th>{{ trans('labels.email') }}</th>
            <th>{{ trans('labels.mobile') }}</th>
            <th>{{ trans('labels.created_at') }}</th>
            <th>{{ trans('labels.action') }}</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($getbranch as $branch)
        <tr id="dataid{{$branch->id}}">
            <td>{{$branch->id}}</td>
            <td><img src='{!! asset("storage/app/public/images/profile/".$branch->profile_image) !!}' style="width: 100px;"></td>
            <td>{{$branch->name}}</td>
            <td>{{$branch->email}}</td>
            <td>{{$branch->mobile}}</td>
            <td>{{$branch->created_at}}</td>
            <td>
                <a href="#" data-toggle="tooltip" data-placement="top" onclick="GetData('{{$branch->id}}')" title="" data-original-title="{{ trans('labels.edit') }}">
                    <span class="badge badge-success">{{ trans('labels.edit') }}</span>
                </a>
                @if (env('Environment') == 'sendbox')
                    <a href="#" data-toggle="tooltip" data-placement="top" onclick="myFunction()" title="" data-original-title="{{ trans('labels.block') }}">
                        <span class="badge badge-danger">{{ trans('labels.block') }}</span>
                    </a>
                @else
                    @if($branch->is_available == '1')
                        <a class="badge badge-danger px-2" onclick="StatusUpdate('{{$branch->id}}','2')" style="color: #fff;">{{ trans('labels.block') }}</a>
                    @else
                        <a class="badge badge-primary px-2" onclick="StatusUpdate('{{$branch->id}}','1')" style="color: #fff;">{{ trans('labels.unblock') }}</a>
                    @endif
                @endif
            </td>
        </tr>
        @endforeach
    </tbody>
</table>