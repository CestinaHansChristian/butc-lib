<x-app-layout>
    <div class="main-wrapper relative h-screen">
        <div class="py-5">
            <div class="navbar-header relative space-y-1">
                <form action="{{ route('admin.search') }}" method="get" class="flex mx-2">
                    <div class="bg-sky-700 w-xl lg:w-4xl flex mx-auto overflow-hidden shadow-sm rounded-lg">
                        <a href="{{ route('admin.create.books') }}" rel="noopener noreferrer" class="add-new-book bg-green-300 grid place-items-center w-24 xl:w-28 cursor-pointer hover:bg-green-400 border-2 border-e-0 border-blue-500 rounded-lg">
                            <x-add></x-add>
                        </a>
                        <div class="p-3 w-full flex justify-between">
                            <div class="search-btn-wrapper w-full xl:mx-5">
                                <input type="text" name="q" required autocomplete="off" class="bg-slate-50 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Search a book . . .">
                            </div>
                        </div>
                        <button type="submit" class="grid place-content-center cursor-pointer bg-sky-300 w-24 xl:w-28 hover:bg-sky-500 border-2 border-s-0 border-blue-500 rounded-lg">
                            <x-magnifying-glass></x-magnifying-glass>
                        </button>
                    </div>
                </form>
            </div>
            <div class="filters-wrapper text-sm flex place-content-center py-2 md:py-5">
                <div class="wrapper grid md:flex md:gap-x-5">
                    <div class="top-label-wrapper flex items-center">
                        <h2 class="text-xs lg:text-2xl font-mono text-gray-800">Filter by:</h2>
                    </div>
                    <div class="filter-wrapper">
                        <form action="{{ route('admin.filter') }}" method="get" class="grid md:flex md:gap-x-5">
                            <div class="option-list-wrapper flex gap-x-3 py-2">
                                <select name="author" class="bg-blue-100 p-1 rounded-md">
                                    <option value="">Author</option>
                                        @foreach ($books as $book)
                                            <option id="author" class="" value="{{ $book->author }}">{{ $book->author }}</option>
                                        @endforeach
                                </select>
                                <select name="category" class="bg-blue-100 p-1 rounded-md">
                                    <option value="">Category</option>
                                        @foreach ($books as $book)
                                            <option id="author" value="{{ $book->category }}">{{ $book->category }}</option>
                                        @endforeach
                                </select>
                                <select name="year" class="bg-blue-100 p-1 rounded-md">
                                    <option value="">Year</option>
                                        @foreach ($books as $book)
                                            <option id="author" value="{{ $book->year }}">{{ $book->year }}</option>
                                        @endforeach
                                    </select>
                            </div>
                            <div class="btn-controller-wrapper flex place-content-center gap-x-5 md:gap-x-3">
                                <button type="submit" class="bg-sky-700 text-white rounded-lg p-2 cursor-pointer hover:bg-sky-800">
                                    Filter
                                </button>
                                <form action="{{ route('admin.clear.filter') }}" method="get">
                                    <button type="submit" class="bg-sky-700 text-white rounded-lg p-2 cursor-pointer hover:bg-sky-800">
                                        Clear
                                    </button>
                                </form>
                            </div>
                        </form>
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
                [&::-webkit-scrollbar]:h-2 [&::-webkit-scrollbar-track]:bg-blue-400 [&::-webkit-scrollbar-thumb]:bg-blue-700 [&::-webkit-scrollbar-thumb]:rounded-xl space-y-3 p-2">
                {{-- content card --}}
                @foreach ($books as $book)
                <div class="book-wrapper grid md:grid-cols-6 md:text-center p-3 rounded-xl border-2 border-slate-500">
                    <div class="book-number-wrapper flex md:grid">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Book ID:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-blue-800">
                            {{-- {{ $id }} --}}
                            {{ $book->id }}
                        </h1>
                    </div>
                    <div class="book-title-wrapper  md:grid flex">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Title:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-blue-800">
                            {{-- {{ $title }} --}}
                            {{ $book->title }}
                        </h1>
                    </div>
                    <div class="book-author-year  md:grid flex">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Author:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-blue-800">
                            {{-- {{ $year }} --}}
                            {{ $book->author }}
                        </h1>
                    </div>
                    <div class="book-category-warpper  md:grid flex">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Category:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-blue-800">
                            {{-- {{ $category }} --}}
                            {{ $book->category }}
                        </h1>
                    </div>
                    <div class="book-year-wrapper  md:grid flex">
                        <div class="label-wrapper-for-small-screen block md:hidden font-mono text-xl">
                            Year:
                        </div>
                        <h1 class="md:text-xl text-lg font-bold text-blue-800">
                            {{-- {{ $author }} --}}
                            {{ $book->year }}
                        </h1>
                    </div>
                    <div class="books-options-wrapper grid grid-cols-3 gap-x-3">
                        <div class="view-book-wrapper">
                            <form action="{{ route('admin.show', $book->id) }}" method="get">
                                <button type="submit" class="view-option-wrapper bg-sky-400 px-3 p-1 font-semibold tracking-widest w-full rounded-md cursor-pointer hover:bg-sky-600 grid place-content-center">
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
