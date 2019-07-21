@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/itnews') }}">ITNews</a> :
@endsection
@section("contentheader_description", $itnews->$view_col)
@section("section", "ITNews")
@section("section_url", url(config('laraadmin.adminRoute') . '/itnews'))
@section("sub_section", "Edit")

@section("htmlheader_title", "ITNews Edit : ".$itnews->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
    <div class="box-header">
        
    </div>
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                {!! Form::model($itnews, ['route' => [config('laraadmin.adminRoute') . '.itnews.update', $itnews->id ], 'method'=>'PUT', 'id' => 'itnews-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'title')
					@la_input($module, 'description')
					@la_input($module, 'post_date')
					@la_input($module, 'images')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/itnews') }}" class="btn btn-default pull-right">Cancel</a>
                    </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
    $("#itnews-edit-form").validate({
        
    });
});
</script>
@endpush
