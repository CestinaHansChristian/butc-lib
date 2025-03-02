<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta content="{{ csrf_token() }}"></meta>
    <link rel="shortcut icon" href="{{ url('/images/butc_transparent.png') }}" type="image/x-icon">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <title>BUTC LIBRARY Online</title>
    <style>
        img {
            pointer-events: none;
        }
    </style>
</head>
<body>
    <div class="wrapper relative">
        <div class="top-navbar-wrapper sticky top-0 z-10">
            <nav class=" py-1 bg-sky-700 flex justify-between">
                <div class="header-wrapper grid space-y-2 mx-1 xl:p-1 ">
                    <div class="bu-wrapper">
                        <a href="{{ route('home') }}">
                            <img src="{{ url('/images/bu-logo-with-name.png') }}" alt="" class="h-10 xl:h-14">
                        </a>
                    </div>
                    <div class="second-navbar-design xl:text-3xl text-blue-50 font-bold ">
                        Tabaco Campus Online Library
                    </div>
                </div>
                <div class="logo-wrapper mx-1 xl:pt-2 xl:pe-2 guest">
                    <div class="control-settings-wrapper flex xl:gap-4">
                        <div class="butc-img-wrapper">
                            <img src="{{ url('/images/butc_logo.jpg') }}" alt="" class="h-16 w-16 xl:h-20 xl:w-20 rounded-full">
                        </div>
                        @isset($admin_icon)
                            <a href="{{ Auth::check() ? route('dashboard') : route('login') }}">
                                <div class="login-icon-wrapper cursor-pointer">
                                    {{ $admin_icon }}
                                </div>
                            </a>
                        @endisset
                    </div>
                </div>
            </nav>
        </div>
        <div class="img-wrapper absolute">
            <img src="{{ url('images/butc_bg.jpg') }}" alt="" class="object-cover h-screen w-screen blur-[2px]">
        </div>
        <div class="content-here-wrapper">
            {{ $slot }}
        </div>
        @isset($footer_details)
            <div class="footer-wrapper text-center">
                {{ $footer_details }}
            </div>
        @endisset
    </div>
</body>
</html>
