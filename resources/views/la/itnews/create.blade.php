@extends("la.layouts.app")

@section("contentheader_title", "ITNews")
@section("contentheader_description", "ITNews Create")
@section("section", "ITNews")
@section("sub_section", "Create")
@section("htmlheader_title", "ITNews Create")
@section("main-content")

<div class="box">
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                    {!! Form::open(['action' => 'LA\ITNewsController@store', 'id' => 'itnews-add-form']) !!}
                    @la_form($module)
                    <a href="{{url()->previous()}}" class="btn btn-danger">Cancel</a>
                    {!! Form::submit( 'Submit', ['class'=>'btn btn-success pull-right']) !!}
                    {!! Form::close() !!}
                    
            </div>
        </div>
    </div>
</div>

@endsection