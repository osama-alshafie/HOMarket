package com.jwt.dao;

import com.jwt.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProducttDAOImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void AddProduct(Product product) {
        sessionFactory.getCurrentSession().save(product);
    }

    @Override
    public void updateProduct(Product product) {
        sessionFactory.getCurrentSession().update(product);

    }

    @Override
    public void deleteProduct(int id) {


        Product product = (Product) sessionFactory.getCurrentSession().load(
                Product.class, id);

        if (null != product) {
            this.sessionFactory.getCurrentSession().delete(product);
        }

    }

    @Override
    public List<Product> getAllProducts() {
        Query q = sessionFactory.getCurrentSession().createQuery("from Product");
        List<Product> allProducts = (List<Product>) q.list();
        return allProducts;
    }

    @Override
    public Product getProductById(int productId) {
        return (Product) sessionFactory.getCurrentSession().get(Product.class, productId);
    }
}