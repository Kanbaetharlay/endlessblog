@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/books') }}">Book</a> :
@endsection
@section("contentheader_description", $book->$view_col)
@section("section", "Books")
@section("section_url", url(config('laraadmin.adminRoute') . '/books'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Books Edit : ".$book->$view_col)

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
                {!! Form::model($book, ['route' => [config('laraadmin.adminRoute') . '.books.update', $book->id ], 'method'=>'PUT', 'id' => 'book-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'title')
					@la_input($module, 'content')
					@la_input($module, 'sub_category')
					@la_input($module, 'images')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/books') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#book-edit-form").validate({
        
    });
});
</script>
@endpush
