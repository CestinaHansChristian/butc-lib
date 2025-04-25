@props(["allBooks","allVisitors"])
@if (auth()->check() && auth()->user()->role === 'admin')
    <div class="bubble-container bg-orange-400 rounded-md h-56 w-48 flex outline-2 outline-slate-300">
        <div class="inner-sidebar-wrapper bg-red-500 w-3 translate-y-0 h-full rounded-s-3xl">
        </div>
        <div class="inner-wrapper font-mono text-lg grid place-content-center w-full gap-y-5 relative">
            <div class="heading-wrapper absolute translate-x-14 text-slate-200 tracking-widest text-lg font-bold">
                Track
            </div>
            <div class="number-of-books-wrapper grid *:rounded-2xl ">
                <label class="text-slate-200" for="">Number of Books:</label>
                <div class="value-content bg-slate-300 text-center text-xl">
                    {{ $allBooks}}
                </div>
            </div>
            <div class="number-of-visitors-wrapper grid *:rounded-2xl">
                <label class="text-slate-200" for="">Total Visits:</label>
                <div class="value-content text-center bg-slate-300 text-xl">
                    {{ $allVisitors }}
                </div>
            </div>
        </div>
    </div>
@else
    <div class="bubble-container bg-orange-400 rounded-full h-40 w-40 flex outline-2 outline-slate-300">
        {{-- <div class="inner-sidebar-wrapper bg-red-500 w-3 translate-y-0 h-full rounded-s-3xl">
        </div> --}}
        <div class="inner-wrapper font-mono text-lg grid place-content-center w-full gap-y-5 relative">
            <div class="heading-wrapper absolute translate-x-8 text-slate-200 tracking-widest text-lg font-bold">
                
            </div>
            <div class="number-of-visitors-wrapper grid *:rounded-xl">
                <label class="text-slate-200" for="">{{ $allVisitors <= 0 ? "Total Visit" : "Total Visits" }}</label>
                <div class="value-content text-center bg-slate-300 text-xl">
                    {{ $allVisitors }}
                </div>
            </div>
        </div>
    </div>
@endif