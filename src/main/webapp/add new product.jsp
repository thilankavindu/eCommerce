<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
        }

        .container {
            margin-top: 40px;
        }

        .form-container {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        .form-container .form-control {
            margin-bottom: 10px;
        }

        .form-container .btn-submit {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 10px 20px;
            width: 100%;
        }

        .form-container .btn-submit:hover {
            background-color: #0056b3;
        }

        .form-container .form-label {
            font-weight: bold;
        }

        /* Image Preview Style */
        .img-preview {
            width: 100%;
            height: auto;
            margin-top: 10px;
            max-height: 200px;
            object-fit: contain;
        }

        .img-upload-wrapper {
            display: flex;
            justify-content: center;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .container {
                margin-top: 20px;
            }
        }
    </style>
</head>

<body>

<!-- Container -->
<div class="container">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addProductModalLabel">Add New Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="saveProduct" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="productName" class="form-label">Product Name</label>
                        <input name="name" type="text" class="form-control" id="productName" required>
                    </div>
                    <div class="mb-3">
                        <label for="productDes" class="form-label">Product Description</label>
                        <input name="description" type="text" class="form-control" id="productDes" required>
                    </div>
                    <div class="mb-3">
                        <label for="productImage" class="form-label">Product Image</label>
                        <input  type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
                    </div>
                    <div class="mb-3">
                        <label for="productCategory" class="form-label">Category</label>
                        <select name="category" class="form-control" id="productCategory">
                            <option value="electronics">Electronics</option>
                            <option value="fashion">Fashion</option>
                            <option value="home_living">Home & Living</option>
                            <option value="beauty">Beauty</option>
                        </select>
                    </div>                    <div class="mb-3">
                        <label for="productPrice" class="form-label">Price</label>
                        <input name="price" type="number" class="form-control" id="productPrice" min="0" step="0.01" required>
                    </div>
                    <div class="mb-3">
                        <label for="productQuantity" class="form-label">Quantity</label>
                        <input name="quantity" type="number" class="form-control" id="productQuantity" min="1" required>
                    </div>
                    <button type="submit" class="btn btn-primary" >Add Product</button>
                </form>

            </div>
        </div>
    </div></div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    // Image preview function
    function previewImage(event) {
        const reader = new FileReader();
        reader.onload = function () {
            const output = document.getElementById('imgPreview');
            output.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    }
</script>
</body>

</html>
