<x-guest-layout>
    <div class="wrapper bg-slate-50 border-2 border-slate-50 z-10 h-screen overflow-x-hidden"></div>
        <div class="content-wrapper h-full w-full grid place-content-center">
            <div class="search-btn-wrapper absolute top-0 h-full w-full grid place-items-center ">
                <div class="wrapper space-y-1">
                    <form method="get" action="{{ route('search') }}" class="search-btn-wrapper flex xl:flex xl:w-full xl:justify-center">
                        <input type="text" name="q" id="" autocomplete="off" required
                            class="bg-slate-50 h-10 w-52 md:w-80 lg:w-[300px] xl:h-14 px-3 xl:w-[600px] xl:px-5 rounded-s-lg xl:rounded-s-3xl xl:text-xl xl:placeholder:p-2 xl:placeholder:text-2xl focus:ring-2 focus:ring-sky-400"
                            placeholder="Enter a book title . . .">
                        <button type="submit"
                            class="bg-orange-500 px-2 p-1 lg:px-6 xl:tracking-widest rounded-e-md xl:rounded-e-3xl font-semibold xl:text-3xl uppercase text-slate-100 focus:ring-4 focus:ring-sky-100 hover:bg-sky-800 hover:text-slate-100 cursor-pointer">
                            <x-magnifying-glass></x-magnifying-glass>
                        </button>
                    </form>
                    {{-- add isset value --}}
                    @if ($values->count() > 0)
                    <div class="content-wrapper  xl:max-h-48 bg-slate-200 rounded-md overflow-y-scroll space-y-2">
                        {{-- card container content --}}
                        @foreach ($values as $r)
                        <div class="card grid grid-cols-5 h-full p-2 border-2 border-black rounded-md">
                            <div class="grid-container grid grid-rows-3 col-span-4 text-xl">
                                <div class="name-wrapper flex font-bold text-gray-600">
                                    <label for="bookTitle">
                                        Title:
                                    </label>
                                    <div class="book-title-name indent-3 font-semibold text-gray-800">
                                        {{ $r->title }}
                                    </div>
                                </div>
                                <div class="book-author flex font-bold text-gray-600">
                                    <label for="bookAutho">Author:</label>
                                    <div class="book-author-value indent-3 font-semibold text-gray-800">
                                        {{ $r->author }}
                                    </div>
                                </div>
                                <div class="book-published-date-wrapper flex font-bold text-gray-600">
                                    <label for="book-publishe">
                                        Published Date:
                                    </label>
                                    <div class="published-date-value indent-3 font-semibold text-gray-800">
                                        {{ $r->year }}
                                    </div>
                                </div>
                            </div>
                            <form action="{{ route('guest.show', $r->id) }}" method="get" class="download-option-wrapper bg-red-300 rounded-xl cursor-pointer hover:bg-red-400">
                                <button  type="submit" class="h-full w-full flex justify-center items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="xl:size-10">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3 16.5v2.25A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75V16.5M16.5 12 12 16.5m0 0L7.5 12m4.5 4.5V3" />
                                    </svg>
                                </button>
                            </form>
                        </div>
                        @endforeach
                    </div>
                    @else
                    <div class="w-full bg-slate-200 text-center rounded-md p-3">
                        <p class="text-2xl text-red-600 font-semibold tracking-widest">No result/s found</p>
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <x-slot name="admin_icon">
        <div class="wrapper border-2 p-1 border-slate-50 rounded-full">
            <svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="xl:h-[70px] xl:w-1h-[70px] ">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
              </svg>
        </div>
    </x-slot>
    <x-slot name="footer_details">
        Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
    </x-slot>
</x-guest-layout>
