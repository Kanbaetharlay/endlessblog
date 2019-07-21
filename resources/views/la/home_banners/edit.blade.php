@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/home_banners') }}">Home Banner</a> :
@endsection
@section("contentheader_description", $home_banner->$view_col)
@section("section", "Home Banners")
@section("section_url", url(config('laraadmin.adminRoute') . '/home_banners'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Home Banners Edit : ".$home_banner->$view_col)

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
                {!! Form::model($home_banner, ['route' => [config('laraadmin.adminRoute') . '.home_banners.update', $home_banner->id ], 'method'=>'PUT', 'id' => 'home_banner-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'title')
					@la_input($module, 'content')
					@la_input($module, 'banner_images')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/home_banners') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#home_banner-edit-form").validate({
        
    });
});
</script>
@endpush
