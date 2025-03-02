<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
                <div class="logo-wrapper mx-1 xl:pt-2 xl:pe-2">
                    <div class="control-settings-wrapper flex xl:gap-4">
                        <div class="greetings-name-wrapper flex items-center">
                            <span class="text-white font-bold text-xl xl:text-3xl">Hello, <span class="text-sky-400 font-bold text-xl xl:text-3xl">{{ Auth::user()->name }}</span></span>
                        </div>
                        <form action="{{ route('logout') }}" method="post" id="form">
                            @csrf
                            <button class="logout-icon-wrapper bg-red-400 rounded-full p-1 cursor-pointer hover:bg-red-500 focus:ring-1 focus:ring-red-600">
                                <x-logout-icon></x-logout-icon>
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
        <div class="img-wrapper -z-10 absolute">
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
    <script>
        document.getElementById('form').addEventListener('submit', function(event) {
            event.preventDefault();
            document.getElementById('form').submit();
        })
    </script>
</body>
</html>
