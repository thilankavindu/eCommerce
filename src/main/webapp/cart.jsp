<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
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

<div class="container cart-container">
    <h2 class="text-center mb-4">Your Shopping Cart</h2>

    <!-- Cart Item 1 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/main-image-3.jpeg" alt="Wireless Headphones">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Wireless Headphones</h5>
            <p>High-quality sound with noise-canceling features.</p>
            <div class="price">$35.00</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="1" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">$35.00</div>
        </div>
    </div>

    <!-- Cart Item 2 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/main-image-2.jpeg" alt="Smartphone Case">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Smartphone Case</h5>
            <p>Durable and stylish case for your smartphone.</p>
            <div class="price">$15.00</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="2" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">$30.00</div>
        </div>
    </div>

    <!-- Cart Item 3 -->
    <div class="cart-item row">
        <div class="col-md-2">
            <img src="images/jbl.jpeg" alt="Bluetooth Speaker">
        </div>
        <div class="col-md-6 cart-item-details">
            <h5>Bluetooth Speaker</h5>
            <p>Portable speaker with excellent sound quality.</p>
            <div class="price">$50.00</div>
        </div>
        <div class="col-md-2 cart-item-quantity">
            <input type="number" class="form-control" value="1" min="1">
        </div>
        <div class="col-md-2 text-center">
            <div class="price">$50.00</div>
        </div>
    </div>

    <!-- Total and Checkout Section -->
    <div class="cart-footer">
        <div class="total-price">
            Total: <span>$115.00</span>
        </div>
        <button class="btn btn-checkout">Proceed to Checkout</button>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>

</html>
