
<%@ page import="java.util.List" %>
<%@ page import="com.example.ecommercee.dto.ProductDTO" %>
<%@ page import="com.example.ecommercee.dto.ProductDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Item Display</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Include SweetAlert2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.2/dist/sweetalert2.min.css" rel="stylesheet">

    <!-- Include SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.2/dist/sweetalert2.min.js"></script>

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

        .item-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .item-card:hover {
            transform: scale(1.05);
            box-shadow: 0 3px 5px rgba(0,0,0,0.1);
        }

        /* Updated Image Size */
        .item-image {
            height: 200px;  /* Set a fixed height */
            width: 50%;    /* Ensure the width is 100% */
            object-fit: cover;  /* Ensures the image fits without stretching */
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

    </style>
</head>
<body class="bg-light">

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
            </ul>
        </div>
    </div>
</nav>
<br>
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

<div class="row row-cols-1 row-cols-md-3 g-4">
    <%
        List<ProductDTO> datalist = (List<ProductDTO>) request.getAttribute("products");

        if (!datalist.isEmpty()) {
            for (ProductDTO item : datalist) {
                System.out.println(item.getImageUrl());
    %>
    <div class="col">
        <div style="height: fit-content" class="card item-card h-100 shadow-sm">
            <img src="images/<%=item.getImageUrl()%>" style="height: 250px;width: 70%;display: flex;align-items: center;justify-content:center"
                 class="card-img-top item-image"
                 alt="<%=item.getName()%>" >
            <div class="card-body">
                <h5 class="card-title"><%=item.getName()%></h5>
                <p class="card-text">
                    <strong>Price:</strong> LKR <%=item.getPrice()%><br>
                    <strong>Available:</strong> <%=item.getCategory()%>
                </p>
                <p class="text-muted small"><%=item.getDescription()%></p>
            </div>

            <div class="card-footer">
                <button onclick="addToCart(alert('Add to Cart'))" class="btn btn-primary w-100">Add to Cart</button>
            </div>
        </div>
    </div>
    <%
        }
    } else {
    %>
    <div class="col-12">
        <div class="alert alert-info text-center" role="alert">
            No items available at the moment.
        </div>
    </div>
    <%
        }
    %>
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

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="jquery-3.7.1.min.js"></script>
<script>
    function addToCart(itemCode) {
        $.ajax({
            url: "new-add-cart",
            method: "POST",
            data: {
                itemCode: itemCode
            },
            success: function(response) {
                if (response.status === 'success') {
                    // Show success toast/alert
                    alert('Item added to cart successfully!', 'success');
                } else {
                    // Show error toast/alert
                    alert(response.message || 'Failed to add item to cart.', 'danger');
                }
            },
            error: function() {
                // Show error toast/alert
                alert('Failed to add item to cart.', 'danger');
            }
        });
    }
</script>
</body>
</html>
