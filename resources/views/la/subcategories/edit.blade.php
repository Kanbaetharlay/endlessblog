@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/subcategories') }}">Subcategory</a> :
@endsection
@section("contentheader_description", $subcategory->$view_col)
@section("section", "Subcategories")
@section("section_url", url(config('laraadmin.adminRoute') . '/subcategories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Subcategories Edit : ".$subcategory->$view_col)

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
            <div class="col-md-8 col-md-offset-2">
                {!! Form::model($subcategory, ['route' => [config('laraadmin.adminRoute') . '.subcategories.update', $subcategory->id ], 'method'=>'PUT', 'id' => 'subcategory-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'name')
					@la_input($module, 'category')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/subcategories') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#subcategory-edit-form").validate({
        
    });
});
</script>
@endpush
