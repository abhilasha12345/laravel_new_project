
==================Seeders and Fakers==========
php artisan make:model Customer --migration

php artisan make:seeder CustomerSeeder

make changes in CustomerSeeder file, DatabaseSeeder file, then run
php artisan db:seed


====================================
to save image in public folder, change the path in filesystems.php file
In config/filesystems.php, you could do this... change the root element in public

'local' => [
            'driver' => 'local',
            //'root' => storage_path('app'),
            'root' => public_path(),
            'throw' => false,
        ],

        'public' => [
            'driver' => 'local',
            //'root' => storage_path('app/public'),
            'root' => public_path() . '/uploads',
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',
            'throw' => false,
        ],

====================================
other project downloaded on local

cd projectname, then composer update, so that it will upload all dependiencies

==================================
getcomposer

composer global require laravel/installer
cd 
laravel new blog
php artisan serve
=====================================================
views\layouts\---footer.blade.php,header.blade.php,main.blade.php
views\home.blade.php

main.blade.php
@include('layouts.header')
<div class="container">
	@yield('main-section')
</div>
@include('layouts.footer')

home.blade.php

@extends('layouts.main')
@push('title')
	<title>Home</title>
@endpush
@section('main-section')
<h1 class="text-center">
	Home Page
</h1>
@endsection

header.blade.php

@stack('title')
