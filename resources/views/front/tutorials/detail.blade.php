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
				<li class="breadcrumb-item"><a href="/">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Tutorials</a></li>
				<li class="breadcrumb-item"><a href="/showAllTutorials/{{$id}}">{{$subcat_name}}</a></li>
				<li class="breadcrumb-item active" aria-current="page">{{$tutorial->title}}</li>
			</ol>
		</div>

	</section><!-- #page-title end -->
<section id="content">

<div class="content-wrap">

	<div class="container clearfix">

		<!-- Post Content
		============================================= -->
		<div class="postcontent nobottommargin clearfix">

						<!-- Single Post
							============================================= -->
							<div class="entry clearfix">

								<!-- Entry Title
								============================================= -->
								<div class="entry-title">
									<h2>{{$tutorial->title}}</h2>
								</div><!-- .entry-title end -->

								<!-- Entry Meta
								============================================= -->
								<ul class="entry-meta clearfix">
									<li><i class="icon-calendar3"></i> 10th July 2014</li>
									<li><a href="#"><i class="icon-user"></i> admin</a></li>
									<li><i class="icon-folder-open"></i> <a href="#">General</a>, <a href="#">Media</a></li>
									<li><a href="#"><i class="icon-comments"></i> 43 Comments</a></li>
									<li><a href="#"><i class="icon-camera-retro"></i></a></li>
								</ul><!-- .entry-meta end -->

								<!-- Entry Image
								============================================= -->
								<div class="entry-image">
									<a href="#">
                                       <img src="{{$img1}}" alt="" class="img-fluid">
                                    </a>
								</div><!-- .entry-image end -->

								<!-- Entry Content
								============================================= -->
								<div class="entry-content notopmargin">

                                    <p>
                                        {!!$tutorial->content!!}
                                    </p>

									<div class="clear"></div>

															

								</div>
							</div><!-- .entry end -->
						
					</div>

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