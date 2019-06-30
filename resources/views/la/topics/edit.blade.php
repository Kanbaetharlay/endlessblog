@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/topics') }}">Topic</a> :
@endsection
@section("contentheader_description", $topic->$view_col)
@section("section", "Topics")
@section("section_url", url(config('laraadmin.adminRoute') . '/topics'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Topics Edit : ".$topic->$view_col)

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
                {!! Form::model($topic, ['route' => [config('laraadmin.adminRoute') . '.topics.update', $topic->id ], 'method'=>'PUT', 'id' => 'topic-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'topic_category')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/topics') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#topic-edit-form").validate({
        
    });
});
</script>
@endpush
