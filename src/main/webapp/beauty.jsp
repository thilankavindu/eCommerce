<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            color: #333;
        }

        .navbar {
            background-color: #fff;
            padding: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .search-bar {
            margin: 30px 0;
            text-align: center;
        }

        .search-bar input {
            padding: 10px;
            font-size: 18px;
            width: 60%;
            max-width: 400px;
            border-radius: 25px;
            border: 1px solid #ddd;
        }

        .search-bar button {
            padding: 10px 20px;
            background-color: #ff6f61;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-left: 10px;
        }

        .search-bar button:hover {
            background-color: #ff5733;
        }

        .container {
            margin-top: 30px;
        }

        .product-card {
            background-color: #fff;
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 12px 12px 0 0;
        }

        .product-card .card-body {
            padding: 15px;
            text-align: center;
        }

        .product-card .card-title {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .product-card .price {
            color: #ff6f61;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }

        .product-card .btn {
            background-color: #ff6f61;
            border: none;
            color: white;
            padding: 8px 15px;
            border-radius: 25px;
            margin-top: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-card .btn:hover {
            background-color: #ff5733;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .search-bar input {
                width: 80%;
            }

            .product-card {
                margin-bottom: 20px;
            }
        }

        @media (max-width: 576px) {
            .product-card {
                margin-bottom: 15px;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="#">Beauty Essentials</a>
    </div>
</nav>

<!-- Search Bar -->
<div class="search-bar">
    <input type="text" id="searchInput" class="form-control" placeholder="Search for Beauty Products..." />
    <button type="button" class="btn" onclick="searchItems()">Search</button>
</div>

<!-- Products Grid -->
<div class="container">
    <h2 class="text-center mb-4">Shop Beauty Products</h2>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Foundation">
                <div class="card-body">
                    <h5 class="card-title">Flawless Foundation</h5>
                    <p class="price">$29.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Lipstick">
                <div class="card-body">
                    <h5 class="card-title">Matte Lipstick</h5>
                    <p class="price">$19.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Skincare">
                <div class="card-body">
                    <h5 class="card-title">Hydrating Skincare Set</h5>
                    <p class="price">$39.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Hair Serum">
                <div class="card-body">
                    <h5 class="card-title">Repairing Hair Serum</h5>
                    <p class="price">$24.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 5 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Eye Shadow">
                <div class="card-body">
                    <h5 class="card-title">Eyeshadow Palette</h5>
                    <p class="price">$22.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 6 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Nail Polish">
                <div class="card-body">
                    <h5 class="card-title">Nail Polish Set</h5>
                    <p class="price">$14.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 7 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Blush">
                <div class="card-body">
                    <h5 class="card-title">Rosy Blush</h5>
                    <p class="price">$18.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>

        <!-- Product 8 -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card product-card">
                <img src="https://via.placeholder.com/400x250" alt="Perfume">
                <div class="card-body">
                    <h5 class="card-title">Floral Perfume</h5>
                    <p class="price">$49.99</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function searchItems() {
        const query = document.getElementById('searchInput').value;
        alert('Searching for: ' + query);
        // Add search functionality here (e.g., filter products based on the search query)
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
