<x-app-layout>
    <div class="card-wrapper grid place-content-center h-screen">
        <div class="card-wrapper space-y-8">
            <div class="heading-wrapper">
                <h1 class="font-serif text-3xl text-gray-700 text-center uppercase leading-tight">
                    Update Book Information
                </h1>
            </div>
            <div class="form-wrapper gap-y-10 bg-slate-200 rounded-xl">
                <form action="{{ route('admin.update.books',$id) }}" method="post" enctype="multipart/form-data" class="space-y-2 p-5 rounded-xl">
                    @csrf
                    @method('patch')
                    <div class="form-input-wrapper xl:space-y-5 text-xl">
                        <div class="form-group">
                            <x-input-label for="name" :value="__('Title')" />
                            <x-text-input id="name" name="title" type="text" class="mt-1 block w-full" required autofocus autocomplete="name" />
                            <x-input-error class="mt-2" :messages="$errors->get('name')" />
                        </div>
                        <div class="form-group">
                            <x-input-label for="author" :value="__('Author')" />
                            <x-text-input id="author" name="author" type="text" class="mt-1 block w-full" required autofocus autocomplete="author" />
                            <x-input-error class="mt-2" :messages="$errors->get('author')" />
                        </div>
                        <div class="form-group">
                            <x-input-label for="year" :value="__('Year')" />
                            <x-text-input id="year" name="year" type="text" class="mt-1 block w-full" required autofocus autocomplete="year" />
                            <x-input-error class="mt-2" :messages="$errors->get('year')" />
                        </div>
                        <div class="form-group">
                            <x-input-label for="category" :value="__('Category')" />
                            <x-text-input id="category" name="category" type="text" class="mt-1 block w-full" required autofocus autocomplete="Category" />
                            <x-input-error class="mt-2" :messages="$errors->get('Category')" />
                        </div>
                        <div class="form-group">
                            <x-input-label for="file" :value="__('File')" />
                            <i class="text-sm text-red-500">You cannot update the file here. Try Creating another and delete this book.</i>
                            <x-text-input id="file" name="file" accept="application/pdf" required type="file" disabled class="mt-1 block w-full file:cursor-not-allowed cursor-not-allowed file:font-semibold file:appearance-none file:bg-slate-400/80 file:px-4 file:rounded-s-lg border-none" autofocus autocomplete="file" />
                            <x-input-error class="mt-2" :messages="$errors->get('file')" />
                        </div>
                    </div>
                    <div class="btn-controller-wrapper xl:pt-10 xl:gap-x-5 grid grid-cols-2 space-x-2">
                        <a href="{{ route('dashboard') }}" class="bg-red-500 hover:bg-red-700 text-center text-white font-bold py-2 px-4 rounded">
                            Cancel
                        </a>
                        <button type="submit" onclick="uploadFile()" class="bg-sky-500 hover:bg-sky-700 text-white font-bold py-2 px-4 rounded">
                            Update
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <x-slot name="footer_details">
        Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
    </x-slot>
</x-app-layout>
