<x-guest-layout>
    <div class="h-screen grid place-content-center">
        <div class="">
            <form method="POST" action="{{ route('register') }}">
                @csrf
                <div class="content-wrapper h-full w-full xl:text-xl grid place-content-center">
                    {{-- image --}}
                    <div class="img-wrapper">
                        <img src="{{ url('images/butc_bg.jpg') }}" alt="" class="object-cover h-screen w-screen blur-[2px]">
                    </div>

                    {{-- form wrapper --}}
                    <div class="form-wrapper absolute w-full rounded-xl">
                        <div class="content-wrapper h-screen grid place-content-center">
                            <div class="inside-form-wrapper bg-gradient-to-tr from-orange-200 to-sky-300/90 p-10 rounded-lg">
                                <!-- Name -->
                                <div>
                                    <x-input-label for="name" :value="__('Name')" />
                                    <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                                    <x-input-error :messages="$errors->get('name')" class="mt-2" />
                                </div>

                                <!-- Email Address -->
                                <div class="mt-4">
                                    <x-input-label for="email" :value="__('Email')" />
                                    <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
                                    <x-input-error :messages="$errors->get('email')" class="mt-2" />
                                </div>

                                <!-- Password -->
                                <div class="mt-4">
                                    <x-input-label for="password" :value="__('Password')" />

                                    <x-text-input id="password" class="block mt-1 w-full"
                                                    type="password"
                                                    name="password"
                                                    required autocomplete="new-password" />

                                    <x-input-error :messages="$errors->get('password')" class="mt-2" />
                                </div>
                                <div class="role-hidden-wrapper hidden">
                                    <input type="text" name="role" value="admin">
                                </div>

                                <!-- Confirm Password -->
                                <div class="mt-4">
                                    <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

                                    <x-text-input id="password_confirmation" class="block mt-1 w-full"
                                                    type="password"
                                                    name="password_confirmation" required autocomplete="new-password" />

                                    <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
                                </div>

                                <div class="flex items-center justify-end mt-4">
                                    <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('login') }}">
                                        {{ __('Already registered?') }}
                                    </a>

                                    <x-primary-button class="ms-4">
                                        {{ __('Register') }}
                                    </x-primary-button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <x-slot name="footer_details">
            Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
        </x-slot>
    </div>
</x-guest-layout>
