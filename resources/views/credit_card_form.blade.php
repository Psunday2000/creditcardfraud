<!-- resources/views/credit_card_form.blade.php -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>First Bank of Nigeria - Credit Card Fraud Detection System</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
            <div class="wrap-login100 p-t-30 p-b-50">
                <span class="login100-form-title p-b-41">
                    <img src="{{ asset('images/first-logo.png') }}"
                        style="max-width: 100px; max-height:100px; border-radius:20px; object-fit;" alt=""><br>
                    Credit Card Fraud Detection System
                </span>
                @if (session('status'))
                    <p>{{ session('status') }}</p>
                @endif

                <form class="login100-form validate-form p-b-33 p-t-5" action='process_transaction' method="post"
                    id="creditCardForm" onsubmit="console.log('Form Submitted');">
                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if (session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif
                    @csrf

                    <!-- Add input fields for credit card details and security question -->
                    <div class="wrap-input100 validate-input" data-validate = "Enter Credit Card Number">
                        <input class="input100" type="text" name="card_number" id="card_number"
                            placeholder="Credit Card Number" required><br>
                        <span class="focus-input100" data-placeholder="&#xe890;"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Enter Expiry Date">
                        <input class="input100" type="text" name="expiration_date" id="expiration_date"
                            placeholder="Expiration Date: format:: YYYY-MM-DD" required><br>
                        <span class="focus-input100" data-placeholder="&#xe836;"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Enter CVV">
                        <input class="input100" type="text" name="cvv" placeholder="CVV" required><br>
                        <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Reload form to show security question">
                        <input class="input100" type="text" name="security_question" id="security_question"
                            placeholder="Security Question" required disabled><br>
                        <span class="focus-input100" data-placeholder="&#xe87d;"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Enter Security Answer">
                        <input class="input100" type="text" name="security_answer" placeholder="Security Answer"
                            required><br>
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    </div><br>
                    <div class="container-login100-form-btn m-t-32">
                        <input type="submit" class="login100-form-btn" type="submit" id="processTransactionBtn"
                            value="Process Transaction"><br>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            // Attach an event listener to the card_number input
            $('#card_number').on('input', function() {
                // Get the entered credit card number
                var cardNumber = $(this).val();

                // Make an AJAX request to retrieve the security question
                $.ajax({
                    url: '/get-security-question', // Update this route to the actual route
                    method: 'post',
                    data: {
                        _token: '{{ csrf_token() }}',
                        card_number: cardNumber
                    },
                    success: function(response) {
                        // Update the security_question input with the retrieved question
                        $('#security_question').val(response.security_question);
                    },
                    error: function() {
                        console.log('Error fetching security question.');
                    }
                });
            });
            // $('#processTransactionBtn').on('click', function() {
            //     // Add your form validation logic here

            //     // Prevent form submission
            //     return false;
            // });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var expirationDateInput = document.getElementById('expiration_date');

            expirationDateInput.addEventListener('input', function() {
                // Get the entered expiration date
                var enteredDate = this.value;

                // Format the date as "YYYY-MM-DD"
                var formattedDate = formatExpirationDate(enteredDate);

                // Update the expiration_date input with the formatted date
                this.value = formattedDate;
            });

            // Function to format the expiration date as "YYYY-MM-DD"
            function formatExpirationDate(enteredDate) {
                // Remove any non-numeric characters
                var numericDate = enteredDate.replace(/\D/g, '');

                // Apply the "YYYY-MM-DD" format
                var formattedDate = numericDate.replace(/(\d{4})(\d{2})(\d{2})/, '$1-$2-$3');

                return formattedDate;
            }
        });
    </script>
    <!-- Include Bootstrap JavaScript -->
    <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>

    <!-- Your modal trigger script -->
    <script>
        // Add this script to your Blade view
        $(document).ready(function() {
            // Trigger the modal on page load
            $('#modalSheet').modal('show');
        });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
</body>

</html>
