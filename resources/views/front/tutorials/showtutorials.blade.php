@extends('front.master')
@section('header')
    @include('front.components.header')
@endsection


@section('content')
<!-- Page Title
	============================================= -->
	<section id="page-title">

		<div class="container clearfix">
			<h1>Laravel Tutorials</h1>

			<!-- Entry Meta
			============================================= -->
			<ul class="entry-meta clearfix">
				<li><i class="icon-calendar3"></i> 10th Jul 2014</li>
				<li><a href="#"><i class="icon-user"></i> Admin</a></li>
				<li><i class="icon-folder-open"></i> <a href="#">Technology</a>, <a href="#">Laravel Framework</a></li>
				
			</ul><!-- .entry-meta end -->

			
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Tutorials</li>
			</ol>
		</div>

	</section><!-- #page-title end -->
<section id="content">

<div class="content-wrap">

	<div class="container clearfix">

		<!-- Post Content
		============================================= -->
		<div class="postcontent nobottommargin clearfix">

			<!-- Posts
			============================================= -->
			<div id="posts" class="small-thumbs">
				@foreach($alltutorial as $tutorial)

				<div class="entry clearfix">
					<div class="entry-image">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/jnvu1GpylP0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					<div class="entry-c">
						<div class="entry-title">
							<h2><a href="">{{$tutorial->title}}</a></h2>
						</div>
						<ul class="entry-meta clearfix">
							<li><i class="icon-calendar3"></i> {{$tutorial->post_date}}</li>
							<li><a href="#"><i class="icon-user"></i> admin</a></li>
							<li><i class="icon-folder-open"></i> <a href="#">Videos</a>, <a href="#">News</a></li>
							<li><a href="tutorial-detail.html#comments"><i class="icon-comments"></i> 19</a></li>
							<li><a href="#"><i class="icon-film"></i></a></li>
						</ul>
						<div class="entry-content">
							<p>{!! $tutorial->content !!}</p>
							<a href="/detailTutorial/{{$tutorial->id}}"class="more-link">Read More</a>
						</div>
					</div>
				</div>


				@endforeach
			   

			</div><!-- #posts end -->

			<!-- Pagination
			============================================= -->
			<div class="row mb-3">
				<div class="col-12">
					<a href="#" class="btn btn-outline-secondary float-left">&larr; Older</a>
					<a href="#" class="btn btn-outline-dark float-right">Newer &rarr;</a>
				</div>
			</div>
			<!-- .pager end -->

		</div><!-- .postcontent end -->

		<!-- sidebar -->
	@include('front.components.sidebar')
		<!-- end sidebar -->

	</div>

</div>

</section>
@endsection
@section('footer')
    @include('front.components.footer')
@endsection