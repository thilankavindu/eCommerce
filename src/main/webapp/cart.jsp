<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
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
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .cart-container {
            margin-top: 50px;
        }

        .cart-item {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }

        .cart-item img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item-details {
            margin-left: 15px;
        }

        .cart-item-details h5 {
            margin-bottom: 5px;
        }

        .cart-item-details .price {
            font-size: 1.2rem;
            color: #e74c3c;
            font-weight: bold;
        }

        .cart-item-quantity input {
            width: 60px;
            text-align: center;
        }

        .total-price {
            font-size: 1.5rem;
            font-weight: bold;
            color: #27ae60;
        }

        .btn-checkout {
            background: linear-gradient(90deg, rgba(255, 99, 71, 1) 0%, rgba(255, 69, 0, 1) 100%);
            color: white;
            width: 100%;
            padding: 12px;
            border-radius: 25px;
        }

        .btn-checkout:hover {
            background-color: #ff5733;
        }

        .cart-footer {
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
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

<div class="container cart-container">
    <h2 class="text-center mb-4">Your Shopping Cart</h2>

    <!-- Cart Item 1 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/SSSSSSSSSSSSSS.jpeg" alt="Wireless Headphones">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Smart Watch Men Women Bluetooth</h5>
            <p>Multifunctional Smart Watch Men Women Bluetooth Connected Phone Music Fitness Sports Bracelet Sleep Monitor Y68 Smartwatch D20
                .</p>
            <div class="price">LKR1999.00</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="1" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">LKR1999.0</div>
        </div>
    </div>

    <!-- Cart Item 2 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/KKKK.jpeg" alt="Smartphone Case">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Gray Carpet for Living Room </h5>
            <p>Gray Carpet for Living Room Plush Rug Bed Room Floor Fluffy Mats Anti-slip Home Decor Rugs Soft Velvet Carpets Kids Room Blanket</p>
            <div class="price">LKR2600.0</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="2" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">LKR2600.0</div>
        </div>
    </div>

    <!-- Cart Item 3 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/MMMM.jpeg" alt="Bluetooth Speaker">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Face Neck Lift Beauty Device</h5>
            <p>Face Neck Lift Beauty Device EMS Facial Massager LED Light Therapy Double Chin Remover Skin Rejuvenation Tightening Anti Wrinkle</p>
            <div class="price">LKR5000.0</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="1" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">LKR5000.0</div>
        </div>
    </div>

    <!-- Total and Checkout Section -->
    <div class="cart-footer">
        <div class="total-price">
            Total: <span>LKR9599.0</span>
        </div>
        <button class="btn btn-checkout">Proceed to Checkout</button>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>

</html>
