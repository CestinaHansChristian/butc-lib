@props(['value'])

<label {{ $attributes->merge(['class' => 'block font-medium text-md text-gray-900 dark:text-gray-900 font-mono']) }}>
    {{ $value ?? $slot }}
</label>
