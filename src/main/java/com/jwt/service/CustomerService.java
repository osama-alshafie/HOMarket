package com.jwt.service;

import com.jwt.model.Customer;

import java.util.List;

public interface CustomerService {


	public void AddCustomer(Customer cust);

	public void updateCustomer(Customer cust);

	public void deleteCustomer(int id);

	public List<Customer> getAllCustomers(Customer cust);

	public Customer getCustomerById(int custId);
}
