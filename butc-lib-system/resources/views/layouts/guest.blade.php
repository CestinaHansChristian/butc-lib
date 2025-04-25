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
                            <img src="{{ url('/images/bu-logo-with-name.png') }}" alt="" class="h-8 xl:h-14">
                        </a>
                    </div>
                    <div class="second-navbar-design text-lg xl:text-3xl text-blue-50 font-serif">
                        Tabaco Library
                        <span class="font-medium">
                            Ebook
                        </span>
                    </div>
                </div>
                <div class="logo-wrapper mx-1 xl:pt-2 xl:pe-2 flex items-center">
                    <div class="control-settings-wrapper flex items-center flex-row gap-x-5">
                        <div class="butc-img-wrapper">
                            <img src="{{ url('/images/butc_logo.jpg') }}" alt="" class="hidden md:block object-contain h-16 w-16 md:h-16 md:w-16 lg:h-[70px] lg:w-[70px] xl:h-20 xl:w-20 rounded-full">
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
        <div class="absolute w-full h-screen overflow-hidden">
            <div id="default-carousel" class="relative w-full h-full" data-carousel="slide">
                <!-- Carousel items -->
                <div class="absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-carousel-item>
                    <img src="{{ url('images/butc_bg.jpg') }}" alt="Image 1" class="object-cover w-full h-full blur-[1px]">
                </div>
                <div class="absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-carousel-item>
                    <img src="{{ url('images/scene2.jpg') }}" alt="Image 2" class="object-cover w-full h-full blur-[1px]">
                </div>
                <div class="absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-carousel-item>
                    <img src="{{ url('images/inside_scene1.jpg') }}" alt="Image 2" class="object-cover w-full h-full blur-[1px]">
                </div>
                <div class="absolute inset-0 transition-all duration-700 ease-in-out opacity-0" data-carousel-item>
                    <img src="{{ url('images/inside_scene2.jpg') }}" alt="Image 2" class="object-cover w-full h-full blur-[1px]">
                </div>
            </div>
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
        let currentSlide = 0;
        const slides = document.querySelectorAll('[data-carousel-item]');
        const totalSlides = slides.length;
    
        // Show a specific slide
        function showSlide(index) {
            slides.forEach((slide, i) => {
                slide.style.opacity = (i === index) ? '1' : '0';
            });
        }
    
        // Show next slide
        function nextSlide() {
            currentSlide = (currentSlide + 1) % totalSlides;
            showSlide(currentSlide);
        }
    
        // Show previous slide
        function prevSlide() {
            currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
            showSlide(currentSlide);
        }
    
        // Auto slide every 3 seconds
        setInterval(nextSlide, 5000);
    
        // Show the first slide initially
        showSlide(currentSlide);
    
        // Add event listeners to buttons
        document.querySelector('[data-carousel-next]').addEventListener('click', nextSlide);
        document.querySelector('[data-carousel-prev]').addEventListener('click', prevSlide);
    </script>
</body>
</html>
