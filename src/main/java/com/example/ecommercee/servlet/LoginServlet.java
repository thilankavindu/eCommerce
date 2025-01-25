package com.example.ecommercee.servlet;

import com.example.ecommercee.dao.UserDAO;
import com.google.protobuf.compiler.PluginProtos;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Authenticate user using UserDAO
        UserDAO userDAO = new UserDAO();
        boolean isAuthenticated = userDAO.authenticateUser(email, password);

        if (isAuthenticated) {
            // Create a session for the logged-in user
            HttpSession session = request.getSession();
            session.setAttribute("user", email);

            // Redirect to dashboard or home page
            response.sendRedirect("dashboard.jsp");
        } else {
            // If authentication fails, display error
            request.setAttribute("error", "Invalid email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}