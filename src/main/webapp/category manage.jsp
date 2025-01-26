<%@ page import="com.example.ecommercee.entity.Category" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management - Admin Panel</title>
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

        .category-table {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .category-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .category-table table th,
        .category-table table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .category-table table th {
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

        .category-form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
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
            <a class="nav-link" href="add%20new%20product.jsp">Product Management</a>
            <a class="nav-link active" href="category%20management.jsp">Category Management</a>
            <a class="nav-link" href="user%20management.jsp">User Management</a>
            <a class="nav-link" href="#">Orders</a>
            <a class="nav-link" href="#">Settings</a>
            <a class="nav-link" href="#">Logout</a>
        </nav>
    </div>
</div>

<!-- Main Content -->
<body>

<header class="bg-light py-3 border-bottom">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <img src="images/toys-mania-42.png" alt="Toys Store Logo">
            </div>
            <nav class="d-flex flex-grow-1 justify-content-center align-items-center">
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link text-dark" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-dark" href="#">Users</a></li>
                    <li class="nav-item"><a class="nav-link text-dark" href="#">Category</a></li>
                    <li class="nav-item"><a class="nav-link text-dark" href="#">Products</a></li>
                    <li class="nav-item"><a class="nav-link text-dark" href="#">Orders</a></li>
                </ul>
            </nav>
            <div>
                <a href="admin_dashboard.jsp" class="text-dark"><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</header>

<main class="container my-5">
    <h2 class="mb-4">Category Management</h2>

    <div class="d-flex justify-content-end mb-3">
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Add Category</button>
    </div>

    <table class="table table-bordered">
        <thead class="table-dark">
        <tr>
            <th>Category Code</th>
            <th>Category Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            if (categories != null && !categories.isEmpty()) {
                for (Category category : categories) {
        %>
        <tr>
            <td><%= category.getId() %></td>
            <td><%= category.getName() %></td>
            <td><%= category.getDescription() %></td>
            <td>
                <button id="edit-btn" class="btn btn-sm btn-success"
                        data-bs-toggle="modal"
                        data-bs-target="#editCategoryModal"
                        data-id="<%= category.getId() %>"
                        data-name="<%= category.getName() %>"
                        data-description="<%= category.getDescription() %>">
                    <i class="bi bi-pencil"></i> Edit
                </button>
                <button id="delete-btn" class="btn btn-sm btn-danger"
                        data-bs-toggle="modal"
                        data-bs-target="#deleteCategoryModal"
                        data-id="<%= category.getId() %>">
                    <i class="bi bi-trash"></i> Delete
                </button>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4" class="text-center">No categories found</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</main>

<footer class="py-4">
    <div class="container">
        <p class="mb-0">&copy; 2025 Toys Store. All Rights Reserved.</p>
    </div>
</footer>

<!-- Add Category Modal -->
<div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addcategory" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="addCategoryModalLabel">Add Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="categoryName" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="categoryName" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <input type="text" class="form-control" id="description" name="description" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Add Category</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="editCategoryForm" action="updateCategory" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="editCategoryCode" class="form-label">Category Code</label>
                        <input type="text" class="form-control" id="editCategoryCode" name="id" required>
                    </div>
                    <div class="mb-3">
                        <label for="editCategoryName" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="editCategoryName" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="editDescription" class="form-label">Description</label>
                        <input type="text" class="form-control" id="editDescription" name="description" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Update Category</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Delete Category Modal -->
<div class="modal fade" id="deleteCategoryModal" tabindex="-1" aria-labelledby="deleteCategoryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="deleteCategory" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteCategoryModalLabel">Delete Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete this category?</p>
                    <input type="hidden" id="deleteCategoryCode" name="categoryCode">
                </div>
                <div class="modal-footer">
                    <form id="deleteCategoryForm" action="deleteCategory" method="post">
                        <input type="hidden" name="id" id="deleteCategoryId">
                        <button type="submit" class="btn btn-danger">Delete</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="JQ/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"></script>
<script>
    // Populate Edit Modal
    $(document).on('click', '#edit-btn', function () {
        const id = $(this).data('id');
        const name = $(this).data('name');
        const description = $(this).data('description');

        $('#editCategoryCode').val(id);
        $('#editCategoryName').val(name);
        $('#editDescription').val(description);
    });

    const deleteCategoryModal = document.getElementById('deleteCategoryModal');

    deleteCategoryModal.addEventListener('show.bs.modal', function (event) {
        const button = event.relatedTarget;
        const categoryCode = button.getAttribute('data-id');
        const deleteCategoryIdInput = document.getElementById('deleteCategoryCode');

        deleteCategoryIdInput.value = categoryCode;
    });

</script>
</body>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>

</html>
