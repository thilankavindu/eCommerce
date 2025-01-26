

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kavee Online Store - Bootstrap eCommerce</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Navigation Bar */
        .navbar {
            background: linear-gradient(90deg, rgba(255, 0, 150, 1) 0%, rgba(255, 84, 0, 1) 100%);
            height: 100px;
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

        /* Banner Section */
        .banner {
            width: 100%;
            height: 400px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .banner-text {
            position: absolute;
            bottom: 20px;
            left: 20px;
            color: white;
            font-size: 40px;
            font-weight: bold;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        /* Featured Categories */
        .card img {
            transition: transform 0.3s ease-in-out;
            border-radius: 10px;
        }

        .card:hover img {
            transform: scale(1.05);
        }

        /* Product Cards */
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
    </style>
</head>

<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">Kavee Online Store</a>
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
<%--                        <a class="dropdown-item" href="productDisplay?category=electronics">Electronics</a>--%>

                        <li><a class="dropdown-item" href="item-display?category=electronics">Electronics</a></li>
                        <li><a class="dropdown-item" href="item-display?category=fashion">Fashion</a></li>
                        <li><a class="dropdown-item" href="item-display?category=home_living">Home & Living</a></li>
                        <li><a class="dropdown-item" href="item-display?category=beauty">Beauty</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="admin.jsp">Admin</a>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</nav>

<!-- Search Bar -->
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for products, brands, or categories">
                <button class="btn btn-outline-secondary" type="button">Search</button>
            </div>
        </div>
    </div>
</div>
<br>
<br>


<!-- Carousel/Slideshow -->
<div id="dealCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="2"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 300">
                <g id="banner1">
                    <!-- Background -->
                    <rect width="1200" height="300" fill="#3498db"/>
                    <path d="M0 75 Q 300 0 600 150 T 1200 75 L 1200 300 L 0 300 Z" fill="#2980b9" opacity="0.7"/>

                    <!-- Decorative elements -->
                    <circle cx="100" cy="75" r="40" fill="#fff" opacity="0.2"/>
                    <circle cx="1100" cy="225" r="60" fill="#fff" opacity="0.2"/>

                    <!-- Text -->
                    <text x="600" y="110" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">SUMMER MEGA SALE</text>
                    <text x="600" y="170" text-anchor="middle" font-family="Arial" font-size="32" fill="white">Up to 50% OFF</text>
                </g>
            </svg>
        </div>
        <div class="carousel-item">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 300">
                <g id="banner2">
                    <!-- Background -->
                    <rect width="1200" height="300" fill="#2ecc71"/>
                    <path d="M0 225 Q 300 150 600 225 T 1200 150 L 1200 300 L 0 300 Z" fill="#27ae60" opacity="0.7"/>

                    <!-- Decorative elements -->
                    <rect x="100" y="25" width="60" height="60" fill="#fff" opacity="0.2" transform="rotate(45 130 55)"/>
                    <rect x="1000" y="175" width="80" height="80" fill="#fff" opacity="0.2" transform="rotate(45 1040 215)"/>

                    <!-- Text -->
                    <text x="600" y="110" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">NEW ARRIVALS</text>
                    <text x="600" y="170" text-anchor="middle" font-family="Arial" font-size="32" fill="white">Check Out Latest Products</text>
                </g>
            </svg>
        </div>
        <div class="carousel-item">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 300">
                <g id="banner3">
                    <!-- Background -->
                    <rect width="1200" height="300" fill="#e74c3c"/>
                    <path d="M0 150 Q 300 225 600 150 T 1200 225 L 1200 300 L 0 300 Z" fill="#c0392b" opacity="0.7"/>

                    <!-- Decorative elements -->
                    <polygon points="100,75 130,125 70,125" fill="#fff" opacity="0.2"/>
                    <polygon points="1100,175 1130,225 1070,225" fill="#fff" opacity="0.2"/>

                    <!-- Text -->
                    <text x="600" y="90" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">FLASH SALE</text>
                    <text x="600" y="150" text-anchor="middle" font-family="Arial" font-size="32" fill="white">24 Hours Only - Don't Miss Out!</text>
                </g>
            </svg>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#dealCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#dealCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>


<%--<!-- Carousel/Slideshow -->--%>
<%--<div id="dealCarousel" class="carousel slide" data-bs-ride="carousel">--%>
<%--    <div class="carousel-indicators">--%>
<%--        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="0" class="active"></button>--%>
<%--        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="1"></button>--%>
<%--        <button type="button" data-bs-target="#dealCarousel" data-bs-slide-to="2"></button>--%>
<%--    </div>--%>
<%--    <div class="carousel-inner">--%>
<%--        <div class="carousel-item active">--%>
<%--            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 400">--%>
<%--                <g id="banner1">--%>
<%--                    <!-- Background -->--%>
<%--                    <rect width="1200" height="400" fill="#3498db"/>--%>
<%--                    <path d="M0 100 Q 300 0 600 200 T 1200 100 L 1200 400 L 0 400 Z" fill="#2980b9" opacity="0.7"/>--%>

<%--                    <!-- Decorative elements -->--%>
<%--                    <circle cx="100" cy="100" r="40" fill="#fff" opacity="0.2"/>--%>
<%--                    <circle cx="1100" cy="300" r="60" fill="#fff" opacity="0.2"/>--%>

<%--                    <!-- Text -->--%>
<%--                    <text x="600" y="150" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">SUMMER MEGA SALE</text>--%>
<%--                    <text x="600" y="220" text-anchor="middle" font-family="Arial" font-size="32" fill="white">Up to 50% OFF</text>--%>
<%--                </g>--%>
<%--            </svg>--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 400">--%>
<%--                <g id="banner2">--%>
<%--                    <!-- Background -->--%>
<%--                    <rect width="1200" height="400" fill="#2ecc71"/>--%>
<%--                    <path d="M0 300 Q 300 200 600 300 T 1200 200 L 1200 400 L 0 400 Z" fill="#27ae60" opacity="0.7"/>--%>

<%--                    <!-- Decorative elements -->--%>
<%--                    <rect x="100" y="50" width="60" height="60" fill="#fff" opacity="0.2" transform="rotate(45 130 80)"/>--%>
<%--                    <rect x="1000" y="250" width="80" height="80" fill="#fff" opacity="0.2" transform="rotate(45 1040 290)"/>--%>

<%--                    <!-- Text -->--%>
<%--                    <text x="600" y="150" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">NEW ARRIVALS</text>--%>
<%--                    <text x="600" y="220" text-anchor="middle" font-family="Arial" font-size="32" fill="white">Check Out Latest Products</text>--%>
<%--                </g>--%>
<%--            </svg>--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 400">--%>
<%--                <g id="banner3">--%>
<%--                    <!-- Background -->--%>
<%--                    <rect width="1200" height="400" fill="#e74c3c"/>--%>
<%--                    <path d="M0 200 Q 300 300 600 200 T 1200 300 L 1200 400 L 0 400 Z" fill="#c0392b" opacity="0.7"/>--%>

<%--                    <!-- Decorative elements -->--%>
<%--                    <polygon points="100,100 130,150 70,150" fill="#fff" opacity="0.2"/>--%>
<%--                    <polygon points="1100,250 1130,300 1070,300" fill="#fff" opacity="0.2"/>--%>

<%--                    <!-- Text -->--%>
<%--                    <text x="600" y="150" text-anchor="middle" font-family="Arial" font-size="48" fill="white" font-weight="bold">FLASH SALE</text>--%>
<%--                    <text x="600" y="220" text-anchor="middle" font-family="Arial" font-size="32" fill="white">24 Hours Only - Don't Miss Out!</text>--%>
<%--                </g>--%>
<%--            </svg>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <button class="carousel-control-prev" type="button" data-bs-target="#dealCarousel" data-bs-slide="prev">--%>
<%--        <span class="carousel-control-prev-icon"></span>--%>
<%--    </button>--%>
<%--    <button class="carousel-control-next" type="button" data-bs-target="#dealCarousel" data-bs-slide="next">--%>
<%--        <span class="carousel-control-next-icon"></span>--%>
<%--    </button>--%>
<%--</div>--%>


<!-- Featured Categories -->
<div class="container mt-5">
    <h2>Featured Categories</h2>
    <div class="row">
        <!-- Category 1 -->
        <div class="col-md-3">
            <div class="card">
                <img src="images/main-image-8.jpeg" class="card-img-top" alt="Category 1">
                <div class="card-body">
                    <h5 class="card-title">Electronics</h5>
                    <a href="electronics.jsp" class="btn btn-danger">Shop Now</a>
                </div>
            </div>
        </div>
        <!-- Category 2 -->
        <div class="col-md-3">
            <div class="card">
                <img src="images/ring.jpeg" class="card-img-top" alt="Category 2">
                <div class="card-body">
                    <h5 class="card-title">Fashion</h5>
                    <a href="#" class="btn btn-danger">Shop Now</a>
                </div>
            </div>
        </div>
        <!-- Category 3 -->
        <div class="col-md-3">
            <div class="card">
                <img src="images/main-image-12.jpeg" class="card-img-top" alt="Category 3">
                <div class="card-body">
                    <h5 class="card-title">Home & Living</h5>
                    <a href="#" class="btn btn-danger">Shop Now</a>
                </div>
            </div>
        </div>
        <!-- Category 4 -->
        <div class="col-md-3">
            <div class="card">
                <img src="images/main-image-1.jpeg" class="card-img-top" alt="Category 4">
                <div class="card-body">
                    <h5 class="card-title">Beauty</h5>
                    <a href="#" class="btn btn-danger">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Product Listing Section -->
<div class="container mt-5">
    <h2>Popular Products</h2>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/main-image-3.jpeg" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Wireless Headphones</h5>
                    <p class="card-text" style="font-size: 1rem">High-quality sound with noise-canceling features.</p>
                    <h5>$35.00</h5>
                    <a href="#" class="btn btn-danger">Buy Now</a>
                </div>
            </div>
        </div>
        <!-- Product 2 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/main-image-2.jpeg" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Smartphone Case</h5>
                    <p class="card-text" style="font-size: 1rem">Durable and stylish case for your smartphone.</p>
                    <h5>$15.00</h5>
                    <a href="#" class="btn btn-danger">Buy Now</a>
                </div>
            </div>
        </div>
        <!-- Product 3 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/jbl.jpeg" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Bluetooth Speaker</h5>
                    <p class="card-text" style="font-size: 1rem">Portable speaker with excellent sound quality.</p>
                    <h5>$50.00</h5>
                    <a href="#" class="btn btn-danger">Buy Now</a>
                </div>
            </div>
        </div>
        <!-- Product 4 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/smart%20watch.jpeg" class="card-img-top" alt="Product 4">
                <div class="card-body">
                    <h5 class="card-title">Smart Watch</h5>
                    <p class="card-text" style="font-size: 1rem">Track your fitness goals with this stylish smartwatch.</p>
                    <h5>$99.00</h5>
                    <a href="#" class="btn btn-danger">Buy Now</a>
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

</body>

</html>


