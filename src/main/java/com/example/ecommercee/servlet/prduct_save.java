package com.example.ecommercee.servlet;
import com.example.ecommercee.config.FactoryConfiguration;
import com.example.ecommercee.entity.Product;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
@WebServlet(name = "saveProduct", value = "/saveProduct")
public class prduct_save extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String description = req.getParameter("description");
        String category =req.getParameter("category");
        String quantity = req.getParameter("quantity");

        Part filePart = req.getPart("productImage");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }


        filePart.write(uploadPath + File.separator + fileName);


        Session session = FactoryConfiguration.getInstance().getSession();
        session.beginTransaction();

        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setPrice(Double.parseDouble(price));
        product.setQty(Integer.parseInt(quantity));
        product.setCategory(category);
        product.setImageUrl(fileName);

        session.save(product);
        session.getTransaction().commit();
        session.close();

        resp.sendRedirect("admin.jsp");
    }

}