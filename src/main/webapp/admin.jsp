<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - AliExpress</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        .sidebar {
            background-color: #343a40;
            color: white;
            width: 250px;
            padding-top: 20px;
            position: fixed;
            height: 100%;
        }

        .sidebar .nav-link {
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            text-decoration: none;
        }

        .sidebar .nav-link:hover {
            background-color: #495057;
        }

        .sidebar .nav-item.active .nav-link {
            background-color: #007bff;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }

        .dashboard-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            background-color: white;
        }

        .dashboard-card h4 {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .dashboard-card .card-body {
            display: flex;
            justify-content: space-around;
        }

        .dashboard-card .card-body .stat {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }

        .product-table {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .product-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .product-table table th,
        .product-table table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .product-table table th {
            background-color: #f8f9fa;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 8px 15px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
            color: white;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                position: relative;
                height: auto;
            }

            .main-content {
                margin-left: 0;
            }
        }
    </style>
</head>

<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="container-fluid">
        <h3 class="text-center text-white">Admin Panel</h3>
        <nav class="nav flex-column">
            <a class="nav-link active" href="#">Dashboard</a>
            <a class="nav-link" href="add%20new%20product.jsp">Product Management</a>
            <a class="nav-link" href="#">Category Management</a>
            <a class="nav-link" href="#">User Management</a>
            <a class="nav-link" href="#">Orders</a>
            <a class="nav-link" href="#">Settings</a>
            <a class="nav-link" href="#">Logout</a>
        </nav>
    </div>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Dashboard -->
    <div class="container-fluid">
        <h2 class="mb-4">Dashboard</h2>

        <!-- Dashboard Statistics Cards -->
        <div class="row">
            <div class="col-md-3">
                <div class="dashboard-card">
                    <h4>Total Products</h4>
                    <div class="card-body">
                        <div class="stat">150</div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card">
                    <h4>Total Categories</h4>
                    <div class="card-body">
                        <div class="stat">20</div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card">
                    <h4>Total Orders</h4>
                    <div class="card-body">
                        <div class="stat">320</div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="dashboard-card">
                    <h4>Total Users</h4>
                    <div class="card-body">
                        <div class="stat">450</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Management Table -->
        <div class="product-table">
            <h4>Product List</h4>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Stock</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Smartphone</td>
                    <td>$499.99</td>
                    <td>50</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-custom">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Laptop</td>
                    <td>$799.99</td>
                    <td>30</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-custom">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Smartwatch</td>
                    <td>$199.99</td>
                    <td>100</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-custom">Delete</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>

</html>
