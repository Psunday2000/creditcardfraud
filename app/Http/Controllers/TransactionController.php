<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\TransactionResource;
use Illuminate\Http\Request;
use App\Models\Transaction;

class TransactionController extends Controller
{
    public function index()
    {
        // Retrieve and display user transactions
        $transactions = auth()->user()->transactions;

        return view('user_transactions', ['transactions' => $transactions]);
    }
}
