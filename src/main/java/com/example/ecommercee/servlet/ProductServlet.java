package com.example.ecommercee.servlet;

import com.example.ecommercee.dao.ProductDAO;
import com.example.ecommercee.dto.ProductDTO;
import com.example.ecommercee.entity.Product;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String name = request.getParameter("productName");
        String imageUrl = request.getParameter("productImage"); // Assuming the image URL is passed
        double price = Double.parseDouble(request.getParameter("productPrice"));
        String category = request.getParameter("productCategory");
        String description = request.getParameter("productDescription");

        // Create Product object
        Product product = new Product(name, imageUrl, price, category, description);

        // ProductDAO object
        ProductDAO productDAO = new ProductDAO();

        // Add product to the database
        boolean isAdded = productDAO.addProduct(product);

        // Redirect to success or error page
        if (isAdded) {
            response.sendRedirect("add new product.jsp"); // Redirect to success page

        } else {
            response.sendRedirect("admin.jsp"); // Redirect to error page
        }
    }
}