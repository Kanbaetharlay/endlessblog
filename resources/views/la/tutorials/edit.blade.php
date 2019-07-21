@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/tutorials') }}">Tutorial</a> :
@endsection
@section("contentheader_description", $tutorial->$view_col)
@section("section", "Tutorials")
@section("section_url", url(config('laraadmin.adminRoute') . '/tutorials'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Tutorials Edit : ".$tutorial->$view_col)

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
                {!! Form::model($tutorial, ['route' => [config('laraadmin.adminRoute') . '.tutorials.update', $tutorial->id ], 'method'=>'PUT', 'id' => 'tutorial-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'title')
					@la_input($module, 'content')
					@la_input($module, 'sub_category')
					@la_input($module, 'post_date')
					@la_input($module, 'images')
					@la_input($module, 'credit')
					@la_input($module, 'shared_link')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/tutorials') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#tutorial-edit-form").validate({
        
    });
});
</script>
@endpush
