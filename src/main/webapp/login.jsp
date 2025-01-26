<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .login-container {
            max-width: 400px;
            margin: 100px auto;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 25px;
        }

        .btn-custom {
            background: linear-gradient(90deg, rgba(255, 99, 71, 1) 0%, rgba(255, 69, 0, 1) 100%);
            color: white;
            border-radius: 25px;
            width: 100%;
            padding: 10px;
            font-size: 16px;
        }

        .btn-custom:hover {
            background-color: #ff5733;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            color: #888;
        }

        .footer-text a {
            text-decoration: none;
            color: #ff5733;
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Login</h2>
    <form class="needs-validation" novalidate action="login" method="post">
        <!-- Email Field -->
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input name="email" type="email" class="form-control" id="email" placeholder="Enter your email" required>
            <div class="invalid-feedback">
                Please enter a valid email address.
            </div>
        </div>

        <!-- Password Field -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input name="password" type="password" class="form-control" id="password" placeholder="Enter your password" required>
            <div class="invalid-feedback">
                Please enter your password.
            </div>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-custom">Login</button>
    </form>

    <p class="footer-text">Don't have an account? <a href="register.jsp">Sign up here</a></p>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    // Form validation
    (function () {
        'use strict'
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')
        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>

</body>

</html>
