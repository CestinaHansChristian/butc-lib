<x-app-layout>
    <div class="main-wrapper relative h-screen">
        <div class="py-5">
            <div class="navbar-header flex">
                <div class="bg-sky-700 w-xl lg:w-4xl xl:w-6xl flex mx-auto overflow-hidden shadow-sm sm:rounded-lg">
                    <a href="{{ route('admin.create.books') }}" rel="noopener noreferrer" class="add-new-book bg-green-300 grid place-items-center w-24 xl:w-28 cursor-pointer hover:bg-green-400">
                        <x-add></x-add>
                    </a>
                    <div class="p-6 w-full flex justify-between">
                        <div class="search-btn-wrapper w-full xl:mx-5">
                            <input type="text" class="bg-slate-50 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Enter a book title . . .">
                        </div>
                    </div>
                    <button type="submit" class="grid place-content-center cursor-pointer w-24 xl:w-28 hover:bg-sky-400">
                        <x-magnifying-glass></x-magnifying-glass>
                    </button>
                </div>
            </div>
            <div class="filters-wrapper text-sm flex place-content-center">
                <div class="top-label-wrapper flex items-center">
                    <h2 class="text-xs lg:text-3xl font-mono text-gray-800">Filter by:</h2>
                </div>
                <div class="filters grid md:flex gap-x-3 p-2">
                    <div class="filter flex flex-col">
                        <div class="filter-btn flex justify-between gap-x-2">
                            <form action="{{ route('admin.filter') }}" method="get" class="flex gap-x-3">
                                <input type="text" name="author" class="bg-slate-200 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Author name . . ."autocomplete="off">
                                <input type="text" name="category" class="bg-slate-200 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Category . . ." autocomplete="off">
                                <input type="text" name="year" class="bg-slate-200 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Year . . ." autocomplete="off">
                                <button type="submit" class="bg-sky-700 text-white rounded-lg p-2 cursor-pointer hover:bg-sky-800">
                                    Filter
                                </button>
                            </form>
                            <form action="{{ route('admin.clear.filter') }}" method="get">
                                <button type="submit" class="bg-sky-700 text-white rounded-lg p-2 cursor-pointer hover:bg-sky-800">
                                    Clear
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-body-container lg:container lg:mx-auto lg:h-96 w-full bg-slate-100/75 rounded-lg">
            <div class="index-item-container hidden md:grid grid-cols-6 text-center rounded-t-lg bg-slate-300 font-bold uppercase tracking-wider text-base xl:text-xl py-4">
                <div class="book-id-counter">
                    Book ID:
                </div>
                <div class="title-wrapper">
                    Title:
                </div>
                <div class="author-wrapper">
                    Author:
                </div>
                <div class="accession-number-wrapper">
                    Category:
                </div>
                <div class="year-wrapper">
                    Year:
                </div>
                <div class="file-path-wrapper">
                    Option:
                </div>
            </div>
            <div class="content-wrapper overflow-y-scroll overflow-x-hidden h-96 md:h-80 [&::-webkit-scrollbar]:w-2
                [&::-webkit-scrollbar]:h-2 [&::-webkit-scrollbar-track]:bg-blue-400 [&::-webkit-scrollbar-thumb]:bg-blue-700 [&::-webkit-scrollbar-thumb]:rounded-xl">
                {{-- content card --}}
                @foreach ($books as $book)
                <div class="book-wrapper grid md:grid-cols-6 md:text-center py-3 bg-slate-200 px-3">
                    <div class="book-number-wrapper flex md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Book ID:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $id }} --}}
                            {{ $book->id }}
                        </h1>
                    </div>
                    <div class="book-title-wrapper  md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Title:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $title }} --}}
                            {{ $book->title }}
                        </h1>
                    </div>
                    <div class="book-author-year  md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Author:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $year }} --}}
                            {{ $book->author }}
                        </h1>
                    </div>
                    <div class="book-category-warpper  md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Category:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $category }} --}}
                            {{ $book->category }}
                        </h1>
                    </div>
                    <div class="book-year-wrapper  md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Year:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $author }} --}}
                            {{ $book->year }}
                        </h1>
                    </div>
                    <div class="books-options-wrapper grid grid-cols-3 gap-x-3">
                        <div class="view-book-wrapper">
                            <form action="{{ route('admin.show', $book->id) }}" method="get">
                                <button type="submit" class="view-option-wrapper bg-sky-300 px-3 p-1 font-semibold tracking-widest w-full rounded-md cursor-pointer hover:bg-sky-400 grid place-content-center">
                                    <x-eye-visible></x-eye-visible>
                                </button>
                            </form>
                        </div>
                        <div class="edit-book-wrapper "">
                            <a href="{{ route('admin.edit', $book->id) }}" class="view-option-wrapper bg-yellow-300 px-3 p-1 font-semibold tracking-widest rounded-md cursor-pointer grid place-content-center hover:bg-yellow-400">
                                <x-pencil></x-pencil>
                            </a>
                        </div>
                        <div class="download-book-wrapper ">
                            <form action="{{ route('admin.delete.books', $book->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="delete-option-wrapper bg-red-300 px-3 p-1 font-semibold tracking-widest w-full rounded-md cursor-pointer hover:bg-red-400 grid place-content-center">
                                    <x-trash></x-trash>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <x-slot name="footer_details">
            Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
        </x-slot>
    </div>
</x-app-layout>
