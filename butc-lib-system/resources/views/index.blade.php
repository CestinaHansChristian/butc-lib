<x-guest-layout>
    <div class="main-wrapper">
        <div class="butc-bg-img relative h-screen">
            <div class="search-btn-wrapper absolute top-0 h-full w-full grid place-items-center ">
                <div class="wrapper ">
                    <form method="get" action="{{ route('search') }}" class="search-btn-wrapper flex xl:flex xl:w-full xl:justify-center">
                        <input type="text" name="q" id="" autocomplete="off" required
                            class="bg-slate-50 h-10 w-52 md:w-80 lg:w-[300px] xl:h-14 px-3 xl:w-[600px] xl:px-5 rounded-s-lg xl:rounded-s-3xl xl:text-xl xl:placeholder:p-2 xl:placeholder:text-2xl focus:ring-2 focus:ring-sky-400"
                            placeholder="Enter a book title . . .">
                        <button type="submit"
                            class="bg-orange-500 px-2 p-1 lg:px-6 xl:tracking-widest rounded-e-md xl:rounded-e-3xl font-semibold xl:text-3xl uppercase text-slate-100 focus:ring-4 focus:ring-sky-100 hover:bg-sky-800 hover:text-slate-100 cursor-pointer">
                            <x-magnifying-glass></x-magnifying-glass>
                        </button>
                    </form>
                </div>
            </div>
            <div class="statistics-wrapper fixed bottom-2 left-2">
                <x-summary-comp allVisitors="{{ $allVisitors[0]->visitorCount}}">
                </x-summary-comp>
            </div>
        </div>
    </div>
    <x-slot name="footer_details">
        Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
    </x-slot>

    <x-slot name="admin_icon">
        <div class="wrapper border-2 p-1 border-slate-50 rounded-full">
            <svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="h-14 w-14 lg:h-[70px] lg:w-[70px] ">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
              </svg>
        </div>
    </x-slot>
</x-guest-layout>
