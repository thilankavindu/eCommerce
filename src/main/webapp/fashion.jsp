<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion - Shop Now</title>
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

        .navbar {
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .search-bar {
            max-width: 600px;
            margin: 0 auto;
            margin-top: 20px;
            padding: 10px;
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

        .search-bar input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 25px;
            border: 1px solid #ddd;
        }

        .search-bar button {
            border-radius: 50%;
            border: none;
            background-color: #ff5733;
            color: white;
            padding: 12px 18px;
            margin-top: 5px;
        }

        .search-bar button:hover {
            background-color: #ff4529;
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
                    <a class="nav-link active" href="#">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="electronics.jsp">Electronics</a></li>
                        <li><a class="dropdown-item" href="fashion.jsp">Fashion</a></li>
                        <li><a class="dropdown-item" href="#">Home & Living</a></li>
                        <li><a class="dropdown-item" href="#">Beauty</a></li>
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

<!-- Search Bar -->
<div class="search-bar">
    <input type="text" id="searchInput" class="form-control" placeholder="Search for Fashion Items..." />
    <button type="button" class="btn" onclick="searchItems()">Search</button>
</div>

<!-- Fashion Products Grid -->
<div class="container my-5">
    <h2 class="text-center mb-4">Latest Fashion Trends</h2>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Stylish T-Shirt</h5>
                    <p class="price">$29.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Classic Jeans</h5>
                    <p class="price">$49.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Leather Jacket</h5>
                    <p class="price">$149.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 4">
                <div class="card-body">
                    <h5 class="card-title">Casual Shoes</h5>
                    <p class="price">$59.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 5 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 5">
                <div class="card-body">
                    <h5 class="card-title">Sunglasses</h5>
                    <p class="price">$19.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 6 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 6">
                <div class="card-body">
                    <h5 class="card-title">Elegant Dress</h5>
                    <p class="price">$79.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 7 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 7">
                <div class="card-body">
                    <h5 class="card-title">Hoodie</h5>
                    <p class="price">$39.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 8 -->
        <div class="col-md-3 mb-4">
            <div class="card product-card shadow-sm">
                <img src="https://via.placeholder.com/400x250" class="card-img-top" alt="Product 8">
                <div class="card-body">
                    <h5 class="card-title">Denim Jacket</h5>
                    <p class="price">$89.99</p>
                    <a href="#" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function searchItems() {
        const query = document.getElementById('searchInput').value.toLowerCase();
        alert('You searched for: ' + query);
        // Implement your search logic here.
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
