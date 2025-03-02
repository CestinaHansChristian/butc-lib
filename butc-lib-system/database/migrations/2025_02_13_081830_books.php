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
        Schema::create('books', function (Blueprint $table) {
            $table->id()->autoIncrement()->unique();
            $table->string('title',50);
            $table->string('author',100);
            $table->string('category',50);
            $table->year('year');
            $table->string('filePath');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });

        Schema::create('categories',function(Blueprint $table){
           $table->id()->autoIncrement()->unique();
           $table->string('category',50);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};