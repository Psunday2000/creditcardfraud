<!-- resources/views/transactions.blade.php -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>First Bank of Nigeria - Credit Card Fraud Detection System</title>
    <!-- Updated stylesheet links using Laravel's asset function -->
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fonts/Linearicons-Free-v1.0.0/icon-font.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/animate/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/css-hamburgers/hamburgers.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/animsition/css/animsition.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/select2/select2.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/daterangepicker/daterangepicker.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/util.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/main.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/modals.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/modals/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
</head>

<body>
    <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
        <div class="wrap-table100 p-t-30 p-b-50">
            <span class="login100-form-title p-b-41">
                <img src="{{ asset('images/first-logo.png') }}"
                    style="max-width: 100px; max-height:100px; border-radius:20px; object-fit;" alt=""><br>
                Transactions
            </span>
            <h1></h1>
            <div class="table100-form">
                @if (count($transactions) > 0)
                    <table id="tablestyle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>User ID</th>
                                <th>Credit Card ID</th>
                                <th>Status</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($transactions as $transaction)
                                <tr>
                                    <td>{{ $transaction->id }}</td>
                                    <td>{{ $transaction->user_id }}</td>
                                    <td>{{ $transaction->credit_card_id }}</td>
                                    <td>{{ $transaction->status }}</td>
                                    <td>{{ $transaction->created_at }}</td>
                                    <td>{{ $transaction->updated_at }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                @else
                    <p>No transactions found.</p>
                @endif
            </div>

        </div>
    </div>
</body>

</html>
