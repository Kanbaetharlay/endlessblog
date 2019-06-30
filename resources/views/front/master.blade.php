<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/swiper.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/dark.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/font-icons.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/animate.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/news.css') }}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('css/mycss.css') }}" type="text/css" />

	<link rel="stylesheet" href="{{ asset('css/responsive.css') }}" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	

	<!-- Document Title
	============================================= -->
	<title>Endelss Technology | IT Development</title>
</head>
<body class="stretched">
    
    <!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

        @yield('header')

        @yield('homeslider')

        @yield('content')

        @yield('footer')
	</div><!-- End Wrapper -->

    <!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

	<script>
		$(function() {
			$( "#side-navigation" ).tabs({ show: { effect: "fade", duration: 400 } });
		});
    </script>
    
    @stack('scripts')
</body>
</html>