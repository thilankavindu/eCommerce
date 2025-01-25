package com.example.ecommercee.dao;

import com.example.ecommercee.config.FactoryConfiguration;
import com.example.ecommercee.dto.ProductDTO;
import com.example.ecommercee.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class ProductDAO {
    private SessionFactory sessionFactory;

    public ProductDAO() {
        this.sessionFactory = (SessionFactory) FactoryConfiguration.getInstance();
    }

    // Add product to the database
    public boolean addProduct(Product product) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();

            // Save the product
            session.save(product);

            // Commit the transaction
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
    }
}