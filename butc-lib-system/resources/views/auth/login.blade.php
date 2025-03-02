<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}" class="h-full w-full grid place-content-center" autocomplete="off">
        @csrf

        <div class="img-wrapper">
            <img src="{{ url('images/butc_bg.jpg') }}" alt="" class="object-cover h-screen w-screen blur-[2px]">
        </div>
        <div class="form-wrapper absolute w-full">
            <div class="center-wrapper h-screen grid place-content-center">
                <div class="h-80 w-80 xl:h-96 xl:w-96 bg-gradient-to-tr from-orange-200 to-sky-200 rounded-xl grid place-content-center">
                    <div class="form-wrapper grid gap-y-5 xl:gap-y-10">
                        <div class="input-field-wrapper gap-y-5 xl:space-y-5 text-xl">
                            <div class="username-wrapper">
                                <label for="username" class="block font-medium text-md text-gray-900 dark:text-gray-900">Email</label>
                                <input type="text" name="email" id="" autocomplete="username" autocomplete="off" autofocus class="appearance-none border-gray-500 bg-transparent border-b-2 w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none placeholder:uppercase placeholder:text-lg placeholder:tracking-widest">
                            </div>
                            <div class="password-wrapper relative">
                                <label for="password" class="block font-medium text-md text-gray-900 dark:text-gray-900">Password</label>
                                <input type="password" name="password" id="passwordField"  class="appearance-none border-gray-500 bg-transparent border-b-2 w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none placeholder:uppercase placeholder:text-lg placeholder:tracking-widest">
                                <div class="side-icon-wrapper absolute top-8 right-0 cursor-pointer z-10 ">
                                    <div class="isVisible hidden">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                          </svg>
                                    </div>
                                    <div class="isHidden">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 0 0 1.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.451 10.451 0 0 1 12 4.5c4.756 0 8.773 3.162 10.065 7.498a10.522 10.522 0 0 1-4.293 5.774M6.228 6.228 3 3m3.228 3.228 3.65 3.65m7.894 7.894L21 21m-3.228-3.228-3.65-3.65m0 0a3 3 0 1 0-4.243-4.243m4.242 4.242L9.88 9.88" />
                                          </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-controller-wrapper space-y-5 grid">
                            <button type="submit" class="bg-blue-500 w-full rounded-md font-semibold text-xl p-2 uppercase tracking-widest hover:bg-sky-600 hover:text-slate-100">Login</button>
                            <a href="{{ route('register') }}" class="bg-orange-300 w-full rounded-md font-semibold text-xs text-center p-2 uppercase tracking-widest hover:bg-orange-600 hover:text-slate-100">
                                Create a new Account
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <x-slot name="footer_details">
            Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
        </x-slot>
        </div>
    </form>
</x-guest-layout>

<style>
    input:-webkit-autofill {
    background-color: #ffffff !important; /* Change to your desired background color */
    border-color: #3490dc !important; /* Optional: Change border color for autofill */
    color: #4a4a4a !important; /* Optional: Change text color */
  }
</style>

<script>
    const passwordField = document.getElementById('passwordField');
    const isVisible = document.querySelector('.isVisible');
    const isHidden = document.querySelector('.isHidden');
    const sideIcon = document.querySelector('.side-icon-wrapper');

    sideIcon.addEventListener('click', () => {
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            isVisible.classList.remove('hidden');
            isHidden.classList.add('hidden');
        } else {
            passwordField.type = 'password';
            isVisible.classList.add('hidden');
            isHidden.classList.remove('hidden');
        }
    });
</script>

