<x-app-layout>
    <div class="card-wrapper grid place-content-center h-screen">
        <div class="card-wrapper space-y-8">
            <div class="heading-wrapper">
                <h1 class="font-semibold text-3xl text-gray-700 text-center uppercase leading-tight underline underline-offset-4">
                    Create a Book
                </h1>
            </div>
            <div class="form-wrapper gap-y-10 bg-slate-200 rounded-xl">
                <form action="{{ route('admin.store.books') }}" method="POST" enctype="multipart/form-data" class=" space-y-10 p-8">
                    @csrf
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
                            <x-text-input id="file" required name="file" accept="application/pdf" type="file" class="mt-1 block w-full file:font-bold file:appearance-none file:bg-slate-400 file:px-4 file:rounded-s-lg file:cursor-pointer border-none" required autofocus autocomplete="file" />
                            <x-input-error class="mt-2" :messages="$errors->get('file')" />
                        </div>
                    </div>
                    <div class="btn-controller-wrapper xl:grid xl:grid-cols-2 gap-x-5">
                        <a href="{{ route('dashboard') }}" class="bg-red-500 text-center hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
                            Cancel
                        </a>
                        <button type="submit" onclick="uploadFile()" class="bg-sky-500 hover:bg-sky-700 text-white font-bold py-2 px-4 rounded">
                            Create
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
<script>
    function uploadFile() {
        var file = document.getElementById('file').files[0];
        console.log(file);
    }
</script>
