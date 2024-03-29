@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/team_members') }}">Team Member</a> :
@endsection
@section("contentheader_description", $team_member->$view_col)
@section("section", "Team Members")
@section("section_url", url(config('laraadmin.adminRoute') . '/team_members'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Team Members Edit : ".$team_member->$view_col)

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
                {!! Form::model($team_member, ['route' => [config('laraadmin.adminRoute') . '.team_members.update', $team_member->id ], 'method'=>'PUT', 'id' => 'team_member-edit-form']) !!}
                    @la_form($module)
                    
                    {{--
                    @la_input($module, 'name')
					@la_input($module, 'email')
					@la_input($module, 'phone')
					@la_input($module, 'skill')
					@la_input($module, 'member_position')
					@la_input($module, 'profile')
                    --}}
                    <br>
                    <div class="form-group">
                        {!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <a href="{{ url(config('laraadmin.adminRoute') . '/team_members') }}" class="btn btn-default pull-right">Cancel</a>
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
    $("#team_member-edit-form").validate({
        
    });
});
</script>
@endpush
