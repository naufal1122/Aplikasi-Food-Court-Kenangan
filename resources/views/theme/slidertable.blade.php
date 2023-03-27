<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            @if (Auth::user()->type == "1")
            <th>{{ trans('labels.branch_name') }}</th>
            @endif
            <th>{{ trans('labels.image') }}</th>
            <th>{{ trans('labels.title') }}</th>
            <th>{{ trans('labels.description') }}</th>
            <th>{{ trans('labels.created_at') }}</th>
            <th>{{ trans('labels.action') }}</th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($getslider as $slider) {
        ?>
        <tr id="dataid{{$slider->id}}">
            <td>{{$slider->id}}</td>
            @if (Auth::user()->type == "1")
            <td>{{$slider['branch']->name}}</td>
            @endif
            <td><img src='{!! asset("storage/app/public/images/slider/".$slider->image) !!}' class='img-fluid' style='max-height: 50px;'></td>
            <td>{{$slider->title}}</td>
            <td>{{$slider->description}}</td>
            <td>{{$slider->created_at}}</td>
            <td>
                <span>
                    @if (Auth::user()->type == "4")
                    <a href="#" data-toggle="tooltip" data-placement="top" onclick="GetData('{{$slider->id}}')" title="" data-original-title="{{ trans('labels.edit') }}">
                        <span class="badge badge-success">{{ trans('labels.edit') }}</span>
                    </a>
                    @endif
                    @if (env('Environment') == 'sendbox')
                        <a href="#" data-toggle="tooltip" data-placement="top" onclick="myFunction()" title="" data-original-title="{{ trans('labels.delete') }}">
                            <span class="badge badge-danger">{{ trans('labels.delete') }}</span>
                        </a>
                    @else
                        <a href="#" data-toggle="tooltip" data-placement="top" onclick="DeleteData('{{$slider->id}}')" title="" data-original-title="{{ trans('labels.delete') }}">
                            <span class="badge badge-danger">{{ trans('labels.delete') }}</span>
                        </a>
                    @endif                    
                </span>
            </td>
        </tr>
        <?php
        }
        ?>
    </tbody>
</table>