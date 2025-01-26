<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management - Admin Panel</title>
    <!-- Bootstrap CSS -->
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

        .user-table {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .user-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .user-table table th,
        .user-table table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .user-table table th {
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

        .btn-danger-custom {
            background-color: #dc3545;
            color: white;
            border-radius: 5px;
            padding: 8px 15px;
        }

        .btn-danger-custom:hover {
            background-color: #c82333;
        }

        .btn-add {
            background-color: #28a745;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
        }

        .btn-add:hover {
            background-color: #218838;
        }

        /* Modal Styles */
        .modal-header {
            background-color: #007bff;
            color: white;
        }

        .modal-footer .btn {
            background-color: #007bff;
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
            <a class="nav-link" href="#">Dashboard</a>
            <a class="nav-link" href="#">Product Management</a>
            <a class="nav-link" href="#">Category Management</a>
            <a class="nav-link active" href="#">User Management</a>
            <a class="nav-link" href="#">Orders</a>
            <a class="nav-link" href="#">Settings</a>
            <a class="nav-link" href="#">Logout</a>
        </nav>
    </div>
</div>

<!-- Main Content -->
<div class="main-content">
    <div class="container-fluid">
        <h2 class="mb-4">User Management</h2>

        <!-- Add User Button -->
        <button class="btn btn-add mb-3" data-bs-toggle="modal" data-bs-target="#addUserModal">Add New User</button>

        <!-- User List Table -->
        <div class="user-table">
            <h4>User List</h4>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>john@example.com</td>
                    <td>Admin</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-danger-custom">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>jane@example.com</td>
                    <td>User</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-danger-custom">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Mike Johnson</td>
                    <td>mike@example.com</td>
                    <td>Admin</td>
                    <td>
                        <button class="btn btn-custom">Edit</button>
                        <button class="btn btn-danger-custom">Delete</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="addUserForm">
                    <div class="mb-3">
                        <label for="userName" class="form-label">Name</label>
                        <input type="text" class="form-control" id="userName" required>
                    </div>
                    <div class="mb-3">
                        <label for="userEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="userEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="userRole" class="form-label">Role</label>
                        <select class="form-select" id="userRole" required>
                            <option value="Admin">Admin</option>
                            <option value="User">User</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-add" onclick="addUser()">Add User</button>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    // Add User Function
    function addUser() {
        const name = document.getElementById('userName').value;
        const email = document.getElementById('userEmail').value;
        const role = document.getElementById('userRole').value;
        console.log(`User added: ${name}, ${email}, ${role}`);

        // Close Modal
        document.getElementById('addUserForm').reset();
        $('#addUserModal').modal('hide');

        // Here you can add logic to send the data to the backend and refresh the user list.
    }
</script>

</body>

</html>
