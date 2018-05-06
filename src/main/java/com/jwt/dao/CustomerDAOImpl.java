package com.jwt.dao;

import com.jwt.model.Customer;
import com.jwt.model.Product;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void AddCustomer(Customer cust) {
        sessionFactory.getCurrentSession().save(cust);
    }

    @Override
    public void updateCustomer(Customer cust) {
        sessionFactory.getCurrentSession().update(cust);

    }

    @Override
    public void deleteCustomer(int id) {
        Customer customer = (Customer) sessionFactory.getCurrentSession().load(
                Customer.class, id);

        if (null != customer) {
            this.sessionFactory.getCurrentSession().delete(customer);
        }

    }

    @Override
    public List<Customer> getAllCustomers(Customer cust) {

        return sessionFactory.getCurrentSession().createQuery("from Customer")
                .list();
    }

    @Override
    public Customer getCustomerById(int custId) {
        return (Customer) sessionFactory.getCurrentSession().get(Customer.class, custId);

    }
}