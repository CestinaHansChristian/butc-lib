<x-default>
    <div class="admin-login-wrapper h-full relative grid place-content-center">
        {{-- <div class="img-wrapper">
            <img src="{{ url('images/butc_bg.jpg') }}" alt="" class="object-cover h-screen w-screen blur-[2px]">
        </div> --}}
        <div class="form-wrapper absolute translate-y-60 translate-x-[600px]">
            <div class="xl:h-80 xl:w-80 xl:-translate-y-20 bg-slate-100 rounded-xl">
                <form action="{{ route('login') }}" method="get" class="h-full w-full grid place-content-center">
                    <div class="form-wrapper grid xl:gap-y-10">
                        <div class="top-wrapper">
                            <div class="input-field-wrapper grid place-content-center gap-y-5">
                                <input type="text" placeholder="username" name="username" id="" autofocus class="appearance-none bg-transparent border-b-2 w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none placeholder:uppercase placeholder:text-lg placeholder:tracking-widest">
                                <div class="password-wrapper relative">
                                    <input type="password" name="password" id="passwordField" placeholder="password"  class="appearance-none bg-transparent border-b-2 w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none placeholder:uppercase placeholder:text-lg placeholder:tracking-widest">
                                    <div class="side-icon-wrapper absolute top-0 right-0 cursor-pointer z-10 ">
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
                            <div class="btn-controller-wrapper">
                                <button type="submit" class="bg-blue-500 w-full rounded-md font-semibold text-xl p-2 uppercase tracking-widest hover:bg-sky-600 hover:text-slate-100">Login</button>
                            </div>
                        </div>
                        <div class="small-wrapper">
                            Create Account
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <x-slot name="footer_details">
        Copyright &copy; {{ date('Y') }} - Tabaco Campus Online Library
    </x-slot>
</x-default>

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
