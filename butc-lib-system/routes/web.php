<?php

use App\Http\Controllers\adminController;
use App\Http\Controllers\guestController;
use App\Http\Controllers\ProfileController;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\Auth;

// homepage
Route::get('/', function () {
    return view('index');
})->name('home');

// dashboard
Route::get('/dashboard',[adminController::class,'dashboard'])->middleware(['auth', 'verified'])->name('dashboard');

// admin logout
// route::post('/logout',[adminController::class,'logout'])->middleware(['auth','verified'])->name('logout');
Route::post('/logout',[AuthenticateSession::class,'destroy'])->name('logout');

// admin display single book
Route::get('dashboard/show/{bookId}',[adminController::class,'show'])->name('admin.show');

// admin edit single book
Route::get('/dashboard/edit/{bookId}',[adminController::class,'edit'])->name('admin.edit');

// admin store created book
Route::post('/store',[adminController::class,'store'])->name('admin.store.books');

// admin create book
Route::get('/dashboard/create',[adminController::class,'create'])->name('admin.create.books');

// admin update created book
Route::patch('/dashboard/update/{bookId}/',[adminController::class,'update'])->name('admin.update.books');

// admin delete created book
Route::delete('/dashboard/delete/{bookId}/',[adminController::class,'destroy'])->name('admin.delete.books');

// register account
Route::get('/create/account',[AuthenticateSession::class,'create'])->name('create.account');

// filter by author
Route::get('/filter/author',[adminController::class,'filterAuthor'])->name('admin.filter');

// clear filter
Route::get('/clear/filter',[adminController::class,'clearFilter'])->name('admin.clear.filter');

// ->middleware(['auth', 'verified'])->name('dashboard')

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// route::middleware('guest')->group(function() {
//     route::get('/login',[adminController::class,'redirectToLogin'])->name('redirectLogin');
// });


// for client side
// search a book
Route::get('/search',[guestController::class,'search'])->name('search');

// show a book
Route::get('/search/show/{id}',[guestController::class,'show'])->name('guest.show');

require __DIR__.'/auth.php';
