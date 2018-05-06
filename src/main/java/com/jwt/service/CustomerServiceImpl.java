package com.jwt.service;

import com.jwt.dao.CustomerDao;
import com.jwt.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDaoDAO;


    @Override
    public void AddCustomer(Customer cust) {

        customerDaoDAO.AddCustomer(cust);
    }

    @Override
    public void updateCustomer(Customer cust) {
        customerDaoDAO.updateCustomer(cust);

    }

    @Override
    public void deleteCustomer(int id) {
        customerDaoDAO.deleteCustomer(id);
    }

    @Override
    public List<Customer> getAllCustomers(Customer cust) {
        return customerDaoDAO.getAllCustomers(cust);
    }

    @Override
    public Customer getCustomerById(int custId) {
        return customerDaoDAO.getCustomerById(custId);
    }
}
