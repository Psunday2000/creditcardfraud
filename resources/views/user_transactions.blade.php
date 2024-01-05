<!-- resources/views/user_transactions.blade.php -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Transactions</title>
</head>

<body>
    <h1>User Transactions</h1>

    @foreach ($transactions as $transaction)
        <div>
            <p>Transaction ID: {{ $transaction->id }}</p>
            <p>Status: {{ $transaction->status }}</p>
            <!-- Add other transaction details as needed -->
        </div>
    @endforeach
</body>

</html>

<!-- user_transactions.blade.php -->

@if (session('status'))
    <p>{{ session('status') }}</p>
@endif
