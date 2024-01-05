<?php

namespace App\Http\Controllers;
use App\Models\Transaction;
use App\Models\CreditCard;
use Illuminate\Http\Request;


class CreditCardController extends Controller
{
    // Add methods for credit card-related functionality

    public function showForm()
    {
        return view('credit_card_form'); // Create a Blade view for the credit card form
    }
    public function processTransaction(Request $request)
    {
        // Validate the form data
        $request->validate([
            'card_number' => 'required',
            'expiration_date' => 'required|date_format:Y-m-d',
            'cvv' => 'required|numeric',
            'security_answer' => 'required',
        ], [
            'security_answer.required' => 'The security answer is required.',
        ]);
    
        // Retrieve credit card data from the database
        $creditCard = CreditCard::where('card_number', $request->input('card_number'))
            ->where('expiration_date', $request->input('expiration_date'))
            ->where('cvv', $request->input('cvv'))
            ->with('user') // Eager load the user relationship
            ->first();
    
        // Initialize status and message
        $status = 'failure';
        $message = 'Invalid credit card details or security answer.';
    
        // Check if credit card data exists
        if ($creditCard && $creditCard->security_answer === $request->input('security_answer')) {
            // Credit card data matches, set success status and message
            $status = 'success';
            $message = 'Transaction Successful! Your transaction has been processed successfully.';
    
            // Record the transaction in the database
            $transaction = new Transaction([
                'user_id' => $creditCard->user->id, // Access the associated user's id
                'credit_card_id' => $creditCard->id,
                'status' => $status,
            ]);
    
            $transaction->save();
        }
    
        // Set flash message
        $request->session()->flash($status, $message);
    
        // Redirect back to the form with flash message
        return redirect()->back();
    }
    public function getSecurityQuestion(Request $request)
    {
    // Retrieve the security question based on the credit card number
    $cardNumber = $request->input('card_number');
    $creditCard = CreditCard::where('card_number', $cardNumber)->first();

    if ($creditCard) {
        $securityQuestion = $creditCard->security_question;
        return response()->json(['security_question' => $securityQuestion]);
    }

    return response()->json(['security_question' => '']);
    }
}
