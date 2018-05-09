package com.jwt.controller;

import com.jwt.model.Customer;
import com.jwt.service.CustomerService;
import com.jwt.service.ProductService;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

	private static final Logger logger = Logger.getLogger(CustomerController.class);

	@Autowired
	private CustomerService customerService;


	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Customer cust = new Customer();
		model.addObject("customer", cust);
		model.setViewName("registeration");
		return model;
	}

	@RequestMapping(value = "/registeration", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Customer customer) {
		if (customer.getId() == 0) {
			customerService.AddCustomer(customer);
		} else {
			customerService.updateCustomer(customer);
		}
		return new ModelAndView("redirect:/");
	}
	
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	 public String login() {
		 return "login";
	 }

}