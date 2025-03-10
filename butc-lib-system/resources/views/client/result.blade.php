<x-guest-layout>
    <div class="wrapper bg-slate-50 border-2 border-slate-50 z-10 h-screen overflow-x-hidden"></div>
        <div class="content-wrapper h-full w-full grid place-content-center">
            <div class="search-btn-wrapper absolute top-0 h-full w-full grid place-items-center ">
                <div class="wrapper space-y-1 relative">
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
                    {{-- $values->count() > 0 && $values != null --}}
                    @if ($values && $values->count() > 0)
                        <div class="content-wrapper h-[300px] bg-slate-200 p-2 rounded-md overflow-y-scroll space-y-2 absolute w-full">
                            {{-- card container content --}}
                            @foreach ($values as $r)
                            <div class="wrapper">
                                <div class="card h-full p-2 md:flex rounded-md bg-slate-300 md:gap-x-2 md:justify-between space-y-4 md:space-y-4">
                                    <div class="grid-container text-sm md:text-lg">
                                        <div class="name-wrapper flex font-mono text-gray-600">
                                            <label for="bookTitle">
                                                Title:
                                            </label>
                                            <div class="book-title-name md:indent-3 font-semibold text-gray-800">
                                                {{ $r->title }}
                                            </div>
                                        </div>
                                        <div class="book-author flex font-mono text-gray-600">
                                            <label for="bookAutho">Author:</label>
                                            <div class="book-author-value md:indent-3 font-semibold text-gray-800">
                                                {{ $r->author }}
                                            </div>
                                        </div>
                                        <div class="book-published-date-wrapper flex font-mono text-gray-600">
                                            <label for="book-published-date">
                                                Published Date:
                                            </label>
                                            <div class="published-date-value md:indent-3 font-semibold text-gray-800">
                                                {{ $r->year }}
                                            </div>
                                        </div>
                                        <div class="category-wrapper flex font-mono text-gray-600">
                                            <label for="bookCategory">Category:</label>
                                            <div class="category-value md:indent-3 font-semibold text-gray-800">
                                                {{ $r->category }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="download-wrapper">
                                        <form action="{{ route('guest.show', $r->id) }}" method="get" class="">
                                            <button  type="submit" class="h-full w-full md:w-16 lg:h-32 xl:w-32 grid place-content-center items-center download-option-wrapper bg-red-300 rounded-lg md:p-1 lg:py-4 cursor-pointer hover:bg-red-400 hover:ring-2 hover:ring-red-700/50">
                                                <div class="icon-wrapper grid place-content-center">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="size-10 xl:size-10">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                                    </svg>
                                                </div>
                                                <div class="label-wrapper font-bold text-slate-50 uppercase tracking-widest">
                                                    View
                                                </div>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    @elseif ($values == null)
                        <div class="w-full bg-slate-200 text-center rounded-md p-3 absolute">
                            <p class="text-2xl text-red-600 font-semibold tracking-widest">Space are not allowed</p>
                        </div>
                    @else
                        <div class="w-full bg-slate-200 text-center rounded-md p-3 absolute">
                            <p class="text-2xl text-red-600 font-semibold tracking-widest">No result/s found</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <x-slot name="admin_icon">
        <div class="wrapper border-2 p-1 border-slate-50 rounded-full">
            <svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="h-14 w-14 lg:h-[70px] lg:w-[70px]">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
              </svg>
        </div>
    </x-slot>
    <x-slot name="footer_details">
        Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
    </x-slot>
</x-guest-layout>
<style>
    ::-webkit-scrollbar {
        width: 10px;
    }

    ::-webkit-scrollbar-track {
        background: #d5d1c9;
    }

    ::-webkit-scrollbar-thumb {
        background: #2d71d8;
    }
</style>
