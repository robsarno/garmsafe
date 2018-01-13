<!DOCTYPE html>
<html>

	<head>
		<!-- Latest compiled and minified CSS -->
		<!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"-->
		<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
		<link rel="stylesheet" href="{{ asset('css/mio.css') }}">
		<link rel="stylesheet" href="{{ asset('css/cover.css') }}">
		<meta charset="UTF-8">
		<meta name="description" content="Your Security, Our Responsibility">
		<meta name="keywords" content="blind, blindstrip, safety, sicurezza, ciechi, garm, garmsafe, technology, tecnologie, facilities, wearable, indossabile, arduino, bergamo, itis Paleocapa, Paleocapa, disability, disabilità">
		<meta name="author" content="GarmSafe S.R.L.">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
		<title>@yield("titolo")</title>
	</head>

	<body>
		@include('templates.nav-bar') @yield('body')
		 @include('templates.footer')
		 <script src="{{ asset('js/mio.js') }}"></script>
	</body>





</html>