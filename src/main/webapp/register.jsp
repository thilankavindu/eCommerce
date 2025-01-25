<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .register-container {
            max-width: 500px;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .register-container h2 {
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
    </style>
</head>

<body>

<div class="register-container">
    <h2>Register</h2>
    <form action="register" method="post">
        <!-- Name Field -->
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
            <div class="invalid-feedback">
                Please enter your name.
            </div>
        </div>

        <!-- Email Field -->
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
            <div class="invalid-feedback">
                Please enter a valid email address.
            </div>
        </div>

        <!-- Password Field -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Create a password" required>
            <div class="invalid-feedback">
                Please enter a password.
            </div>
        </div>

        <!-- Confirm Password Field -->
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Confirm your password" required>
            <div class="invalid-feedback">
                Please confirm your password.
            </div>
        </div>

        <!-- Submit Button -->
        <input type="submit" class="btn btn-custom" value="Register">
    </form>

    <p class="footer-text">Already have an account? <a href="login.jsp">Login here</a></p>
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
