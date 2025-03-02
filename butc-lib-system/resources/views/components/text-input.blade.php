@props(['disabled' => false])

<input @disabled($disabled) {{ $attributes->merge(['class' => 'border-gray-500 appearance-none bg-slate-50 focus:outline-none bg-bg-transparent appearance-none bg-transparent border-b-2 w-full']) }}>
