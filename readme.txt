
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
