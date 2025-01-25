package com.example.ecommercee.dao;

import com.example.ecommercee.config.FactoryConfiguration;
import com.example.ecommercee.dto.UserDTO;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.*;

public class UserDAO {

        // Method to register a new user
        public boolean registerUser(UserDTO user) {
            System.out.println(user.getEmail());
            try {
                Session session = FactoryConfiguration.getInstance().getSession();
                Transaction transaction = session.beginTransaction();
                session.save(user);
                transaction.commit();
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

        }

        // Method to authenticate user during login
        public boolean authenticateUser(String email, String password) {
            Session session = FactoryConfiguration.getInstance().getSession();
            try {
                session.beginTransaction();
                String query = "FROM User WHERE email = :email AND password = :password";
                UserDTO user = (UserDTO) session.createQuery(query)
                        .setParameter("email", email)
                        .setParameter("password", password)
                        .uniqueResult();
                session.getTransaction().commit();
                return user != null;  // If user is found, login is successful
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }