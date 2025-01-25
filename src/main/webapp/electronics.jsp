<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronics - AliExpress</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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

        /* Search Bar */
        .input-group input {
            border-radius: 25px 0 0 25px;
        }

        .input-group button {
            border-radius: 0 25px 25px 0;
            background-color: #ff5733;
            color: white;
            border: none;
        }

        .input-group button:hover {
            background-color: #ff7043;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .product-card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .product-card img {
            border-radius: 12px 12px 0 0;
            max-height: 250px;
            object-fit: cover;
        }

        .product-card .card-body {
            padding: 15px;
            text-align: center;
        }

        .product-card .card-title {
            font-weight: bold;
            color: #333;
        }

        .product-card .price {
            color: #ff5733;
            font-size: 1.2em;
            font-weight: bold;
        }

        .product-card .btn {
            background: linear-gradient(90deg, rgba(255, 99, 71, 1) 0%, rgba(255, 69, 0, 1) 100%);
            border: none;
            color: white;
        }

        .product-card .btn:hover {
            background-color: #ff5733;
        }

        /* Footer */
        .footer {
            background-color: #212529;
            color: #fff;
            padding: 20px 0;  /* Reduced padding to decrease height */
            margin-top: 30px;  /* Added gap between footer and the content above */
        }

        .footer h5 {
            color: #ff5733;
            font-size: 16px;  /* Reduced font size for headings */
            margin-bottom: 10px;  /* Added margin to reduce space below headings */
        }

        .footer ul {
            padding-left: 0;
            list-style-type: none;
            font-size: 14px;  /* Reduced font size for list items */
        }

        .footer ul li {
            margin-bottom: 8px;  /* Reduced space between list items */
        }

        .footer a {
            color: #bbb;
            text-decoration: none;
        }

        .footer a:hover {
            color: #ff5733;
        }

        .footer .container {
            max-width: 1140px;  /* Keeps container size consistent */
        }

        .footer .row {
            display: flex;
            justify-content: space-between;
        }

        .footer .col-md-3 {
            padding: 10px;  /* Reduced padding inside footer columns */
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

        /* Responsive Styles */
        @media (max-width: 767px) {
            .product-card {
                margin-bottom: 20px;
            }
        }

    </style>
</head>

<body>

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

<div class="container my-5">
    <h2 class="text-center mb-4">Electronics</h2>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/smartphone.jpeg" class="card-img-top" alt="Smartphone">
                <div class="card-body">
                    <h5 class="card-title" style="font-size: 1rem">2024 SERVO Small Smartphone 3.0" Display Dual SIM 3G WCDMA Android 8.1 OS 2GB+16GB GPS WIFI Portable Mini Mobile Phone Low Price
                    </h5>
                    <p class="price">$499.99</p>
                    <a href="shopnow.jsp" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/laptop.jpeg" class="card-img-top" alt="Laptop">
                <div class="card-body">
                    <h5 class="card-title" style="font-size: 1rem">New Game Laptop 15.6-inch HD Screen Intel Celeron N5095 Windows 11 System Dual Band WiFi 16GB RAM 1TB SSD Business Office Laptop</h5>
                    <p class="price">$799.99</p>
                    <a href="" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/smartwatch.jpeg" class="card-img-top" alt="Smartwatch">
                <div class="card-body">
                    <h5 class="card-title" style="font-size: 1rem">1.83'' Sports Smart Watch Fitness Clock Health Monitor Waterproof Smartwatch Wireless Call Watches for Men Women IOS Xiaomi 2024</h5>
                    <p class="price">$199.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/headphone.jpeg" class="card-img-top" alt="Headphones">
                <div class="card-body">
                    <h5 class="card-title" style="font-size: 1rem">Xiaomi Wireless Headphones P2961 Bluetooth 5.3 Over-ear Earphone For Samsung iPhone Stereo Hifi Headset Game Earbuds With Mic</h5>
                    <p class="price">$149.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 5 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/tablet.jpeg" class="card-img-top" alt="Tablet">
                <div class="card-body">
                    <h5 class="card-title" style="font-size: 1rem">Global ROM Lenovo XiaoXin Pad 2024 Tablet 8GB 128GB Pads Qualcomm Snapdragon 685 Octa Core 11" WIFI 8MP Cam7040mAh 20W Charger</h5>
                    <p class="price">$349.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 6 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/smart%20tv.jpeg" class="card-img-top" alt="Smart TV">
                <div class="card-body">
                    <h5 class="card-title"style="font-size: 1rem">Large Screen TV 75Inch Android TV Tempered Glass Television 4K UHD LED Smart TV</h5>
                    <p class="price">$499.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 7 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/speaker.jpeg" class="card-img-top" alt="Bluetooth Speaker">
                <div class="card-body">
                    <h5 class="card-title"style="font-size: 1rem">XIAOMI Portable Bluetooth Speaker Mini Wireless High Fidelity Surround Sound Outdoor Waterproof Camping Party Loudspeaker</h5>
                    <p class="price">$79.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 8 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="images/electronic/erbuds-1.jpeg" class="card-img-top" alt="Camera">
                <div class="card-body">
                    <h5 class="card-title"style="font-size: 1rem">Apple AirPods 4 Active Noise Cancellation powerful H2 chip Wireless Charging Case Bluetooth 5.3 Official original 100%</h5>
                    <p class="price">$199.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
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
