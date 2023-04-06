<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            @if (Auth::user()->type == "1")
            <th>{{ trans('labels.branch_name') }}</th>
            @endif
            <th>{{ trans('labels.image') }}</th>
            <th>{{ trans('labels.ingredients') }}</th>
            <th>{{ trans('labels.created_at') }}</th>
            <th>{{ trans('labels.action') }}</th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($getingredients as $ingredients) {
        ?>
        <tr id="dataid{{$ingredients->id}}">
            <td>{{$ingredients->id}}</td>
            @if (Auth::user()->type == "1")
            <td>{{$ingredients['branch']->name}}</td>
            @endif
            <td><img src='{!! asset("storage/app/public/images/ingredients/".$ingredients->image) !!}' class='img-fluid' style='max-height: 50px;'></td>
            <td>{{$ingredients->ingredients}}</td>
            <td>{{$ingredients->created_at}}</td>
            @if (env('Environment') == 'sendbox')
                <td>
                    <span>
                        <a href="#" data-toggle="tooltip" data-placement="top" onclick="GetData('{{$ingredients->id}}')" title="" data-original-title="Edit">
                            <span class="badge badge-success">Edit</span>
                        </a>

                        <a class="badge badge-danger px-2" onclick="myFunction()" style="color: #fff;">Delete</a>
                    </span>
                </td>
            @else
                <td>
                    <span>
                        @if (Auth::user()->type == "4")
                        <a href="#" data-toggle="tooltip" data-placement="top" onclick="GetData('{{$ingredients->id}}')" title="" data-original-title="Edit">
                            <span class="badge badge-success">Edit</span>
                        </a>
                        @endif
                        <a class="badge badge-danger px-2" onclick="Delete('{{$ingredients->id}}')" style="color: #fff;">Delete</a>
                    </span>
                </td>
            @endif
        </tr>
        <?php
        }
        ?>
    </tbody>
</table>