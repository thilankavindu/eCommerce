

package com.example.ecommercee.servlet;

import com.example.ecommercee.config.FactoryConfiguration;
import com.example.ecommercee.dto.ProductDTO;
import com.example.ecommercee.entity.Product;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductCategoryServlet", value = "/item-display")
public class ProductDisplayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");

        if (category == null || category.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Category parameter is missing or invalid.");
            return;
        }

        // Use Hibernate to get products by category
        Session session = FactoryConfiguration.getInstance().getSession();
        try {
            session.beginTransaction();

            // HQL query to fetch products by category
            String hql = "FROM Product p WHERE p.category = :category";
            List<Product> products = session.createQuery(hql, Product.class)
                    .setParameter("category", category)  // Pass the category as a parameter
                    .getResultList();
            List<ProductDTO> productDTOS = new ArrayList<>() ;
            for(Product product:products){
                productDTOS.add(new ProductDTO(
                        product.getId(),
                        product.getName(),
                        product.getImageUrl(),
                        product.getPrice(),
                        product.getCategory(),
                        product.getDescription()

                ));
            }
            session.getTransaction().commit();
            System.out.println(products.isEmpty());
            // Set the products as a request attribute to be used in the JSP
            req.setAttribute("products", productDTOS);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("electronics.jsp");
            requestDispatcher.forward(req,resp);
//            req.getRequestDispatcher("electronics.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching products from the database.");
        } finally {
            session.close();
        }
    }
}
