<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('name',100);
            $table->string('email',150);
            $table->enum('gender',["Male","Female","Other"]);
            $table->text('address');
            $table->date('dob')->nullable();
            $table->string('password')->nullable();
            $table->string('phone')->nullable();
            $table->string('image')->nullable();
            $table->string('city');
            $table->string('state');
            $table->string('country');
            $table->boolean('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
