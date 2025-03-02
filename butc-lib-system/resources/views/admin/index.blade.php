<x-app-layout>
    <div class="main-wrapper">
        <div class="py-10 ">
            <div class="navbar-header flex">
                <div class="bg-sky-700 w-7xl flex mx-auto overflow-hidden shadow-sm sm:rounded-lg">
                    <a href="{{ route('admin.create.books') }}" rel="noopener noreferrer" class="add-new-book bg-green-300 grid place-items-center xl:w-28 cursor-pointer hover:bg-green-400">
                        <x-add></x-add>
                    </a>
                    <div class="p-6 w-full flex justify-between">
                        <div class="search-btn-wrapper w-full mx-5">
                            <input type="text" class="bg-slate-50 w-full rounded-lg p-2 placeholder:text-xl" placeholder="Enter a book title . . .">
                        </div>
                    </div>
                    <button type="submit" class="grid place-content-center cursor-pointer xl:w-28 hover:bg-sky-400">
                        <x-magnifying-glass></x-magnifying-glass>
                    </button>
                </div>
            </div>
        </div>
        <div class="main-body-container container mx-auto  lg:h-[600px] w-full bg-slate-100/75">
            <div class="index-item-container grid grid-cols-6 text-center bg-slate-300 font-bold uppercase tracking-wider text-xl py-4">
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
            <div class="content-wrapper overflow-y-scroll h-[535px]">
                {{-- content card --}}
                @foreach ($books as $book)
                <div class="book-wrapper grid grid-cols-6 text-center py-3 bg-slate-200">
                    <div class="book-number-wrapper">
                        <h1 class="text-2xl font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $id }} --}}
                            {{ $book->id }}
                        </h1>
                    </div>
                    <div class="book-title-wrapper">
                        <h1 class="text-2xl font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $title }} --}}
                            {{ $book->title }}
                        </h1>
                    </div>

                    <div class="book-author-year">
                        <h1 class="text-2xl font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $year }} --}}
                            {{ $book->author }}
                        </h1>
                    </div>
                    <div class="book-category-warpper">
                        <h1 class="text-2xl font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $category }} --}}
                            {{ $book->category }}
                        </h1>
                    </div>
                    <div class="book-year-wrapper">
                        <h1 class="text-2xl font-bold text-sky-600 bg-slate-200">
                            {{-- {{ $author }} --}}
                            {{ $book->year }}
                        </h1>
                    </div>
                    <div class="books-options-wrapper grid grid-cols-3 gap-x-3">
                        <div class="view-book-wrapper">
                            <form action="{{ route('admin.show', $book->id) }}" method="get">
                                <button type="submit" class="view-option-wrapper bg-sky-300 px-5 p-1 font-semibold tracking-widest rounded-md cursor-pointer hover:bg-sky-400 grid place-content-center">
                                    <x-eye-visible></x-eye-visible>
                                </button>
                            </form>
                        </div>
                        <div class="edit-book-wrapper">
                            <a href="{{ route('admin.edit', $book->id) }}" class="view-option-wrapper bg-yellow-300 px-5 p-1 font-semibold tracking-widest rounded-md cursor-pointer grid place-content-center hover:bg-yellow-400">
                                <x-pencil></x-pencil>
                            </a>
                        </div>
                        <div class="download-book-wrapper">
                            <form action="{{ route('admin.delete.books', $book->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="delete-option-wrapper bg-red-300 px-5 p-1 font-semibold tracking-widest rounded-md cursor-pointer hover:bg-red-400 grid place-content-center">
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
