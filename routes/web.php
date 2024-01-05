<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CreditCardController;
use App\Models\Transaction;
use App\Models\CreditCard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [CreditCardController::class, 'showForm'])->name('credit_card.form');
Route::post('/process_transaction', [CreditCardController::class, 'processTransaction']);
// Route::post('/process-transaction', [CreditCardController::class, 'processTransaction'])->name('credit_card.process');
Route::post('/get-security-question', [CreditCardController::class, 'getSecurityQuestion'])->name('get.security.question');
Route::get('/transactions', function () {
    $transactions = Transaction::all();

    return view('transactions', compact('transactions'));
});

Route::get('/credit-cards', function () {
    $creditCards = CreditCard::all();

    return view('credit_cards', compact('creditCards'));
});