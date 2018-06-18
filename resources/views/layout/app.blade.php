<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> @yield('title')</title>
    <!-- Latest compiled and minified CSS & JS -->
    <link rel="stylesheet" href="{{ asset('app/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('app/css/style.css')}}">
    <link rel="stylesheet" href="{{ asset('app/css/font-awesome.min.css')}}">
    <script src="{{ asset('app/js/jquery-3.2.0.min.js')}}"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="{{ asset('app/js/bootstrap.min.js')}}" ></script>
    <script src="{{ asset('app/js/script.js')}}" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.css" >
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js" ></script>
</head>
<body id="main-body">
@include('layout.header')
@include('layout.menu')
@yield('content')
@include('layout.footer')

</body>
</html>