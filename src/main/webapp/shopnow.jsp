


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navigation Bar */
        .navbar {
            background: linear-gradient(90deg, rgba(255, 0, 150, 1) 0%, rgba(255, 84, 0, 1) 100%);
        }

        .navbar-brand {
            color: #fff !important;
            font-weight: bold;
        }

        .navbar-nav .nav-link {
            color: #fff !important;
        }

        .navbar-nav .nav-link:hover {
            color: #ffd700 !important;
        }

        .product-detail-container {
            margin-top: 50px;
        }
        .product-img {
            max-width: 100%;
            border-radius: 10px;
        }
        .product-title {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .product-price {
            font-size: 1.2rem;
            color: #ff5733;
            font-weight: bold;
        }
        .product-description {
            margin-top: 20px;
            font-size: 1rem;
            color: #333;
        }
        .product-specs {
            margin-top: 20px;
        }

        /* Button Styles */
        .btn-custom {
            background-color: #ff5733;
            color: white;
            font-weight: bold;
        }
        .btn-custom:hover {
            background-color: #e04d2f;
            color: white;
        }

        /* Quantity Input */
        .quantity-container {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .quantity-container input {
            width: 60px;
            text-align: center;
        }

        /* Shipping Method */
        .shipping-method-container {
            margin-top: 20px;
        }
        .shipping-method-container label {
            font-size: 1rem;
            font-weight: bold;
        }
        .shipping-method-container select {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        /* Footer */
        .footer {
            background-color: #212529;
            color: #fff;
            padding: 20px 0;
            margin-top: 30px;
        }

        .footer h5 {
            color: #ff5733;
            font-size: 16px;
        }

        .footer ul {
            padding-left: 0;
            list-style-type: none;
            font-size: 14px;
        }

        .footer ul li {
            margin-bottom: 8px;
        }

        .footer a {
            color: #bbb;
            text-decoration: none;
        }

        .footer a:hover {
            color: #ff5733;
        }

        .footer .container {
            max-width: 1140px;
        }

        .footer .row {
            display: flex;
            justify-content: space-between;
        }

        .footer .col-md-3 {
            padding: 10px;
        }

        /* Mobile Responsiveness */
        @media (max-width: 767px) {
            .banner-text {
                font-size: 28px;
            }

            .navbar-nav .nav-link {
                font-size: 14px;
            }

            .product-card {
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">AliExpress</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="electronics.jsp">Electronics</a></li>
                        <li><a class="dropdown-item" href="fashion.jsp">Fashion</a></li>
                        <li><a class="dropdown-item" href="homeliving.jsp">Home & Living</a></li>
                        <li><a class="dropdown-item" href="beauty.jsp">Beauty</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Product Detail Section -->
<div class="container product-detail-container">
    <div class="row">
        <div class="col-md-6">
            <img src="images/electronic/smartphone.jpeg" class="product-img" alt="Smartphone">
        </div>
        <div  class="col-md-6">
            <p class="product-price"style="font-size: 4rem">$499.99</p>
            <h2 class="product-title">2024 SERVO Small Smartphone 3.0" Display Dual SIM 3G WCDMA Android 8.1 OS 2GB+16GB GPS WIFI Portable Mini Mobile Phone Low Price</h2>

            <!-- Shipping Method -->
            <div style="position: relative;top: 23%;row :shipping-method-container">
                <div class="col-md-12">
                    <label for="shipping-method" style="font-weight: bold">Select Shipping Method:</label>
                    <select id="shipping-method" class="form-control">
                        <option value="standard">Standard Shipping (5-7 Days) - $10</option>
                        <option value="express">Express Shipping (2-3 Days) - $20</option>
                        <option value="overnight">Overnight Shipping (1 Day) - $50</option>
                    </select>
                </div>
            </div>
            <!-- Quantity Selector -->
            <div style="position: relative;top: 26%;class:quantity-container">
                <label for="quantity"style="font-weight: bold">Quantity:</label>
                <input type="number" id="quantity" name="quantity" min="1" value="1" class="form-control">
            </div>

            <!-- Buy Now Button -->
            <button style="width: 100%;position: relative;top: 30%" class="btn btn-custom mt-3">Buy Now</button>
            <button style="width: 100%;position: relative;top: 30%" class="btn btn-primary mt-3">Add to Cart</button>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="product-description">
                <h4>Product Description</h4>
                <p>This is the 2024 SERVO Small Smartphone with a 3.0" display. It supports Dual SIM, 3G WCDMA, and comes with Android 8.1 OS. The phone has 2GB RAM and 16GB of storage. It is GPS and WiFi enabled, perfect for anyone looking for a compact and affordable mobile phone.</p>
            </div>
            <div class="product-specs">
                <h4>Specifications</h4>
                <ul>
                    <li>Screen Size: 3.0"</li>
                    <li>RAM: 2GB</li>
                    <li>Storage: 16GB</li>
                    <li>OS: Android 8.1</li>
                    <li>SIM: Dual SIM</li>
                    <li>Camera: 8MP Rear, 5MP Front</li>
                    <li>Battery: 3000mAh</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>About AliExpress</h5>
                <ul class="list-unstyled">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Use</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Customer Service</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Returns & Refunds</a></li>
                    <li><a href="#">Shipping Info</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Follow Us</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Instagram</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Contact Us</h5>
                <ul class="list-unstyled">
                    <li>Email: support@aliexpress.com</li>
                    <li>Phone: 1-800-555-6789</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
