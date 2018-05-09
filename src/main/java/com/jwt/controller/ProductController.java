package com.jwt.controller;

import com.jwt.model.Customer;
import com.jwt.model.Product;
import com.jwt.service.CustomerService;
import com.jwt.service.ProductService;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final Logger logger = Logger.getLogger(ProductController.class);
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String Products(ModelAndView model, Model models) {

		if (productService.getAllProducts() != null) {
			models.addAttribute("products", productService.getAllProducts());
		} else {
			logger.debug("it's empty");
		}

		return "product";
	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String Product() {
		return "product";
	}
	
	@RequestMapping(value = "/product-detail/{id}", method = RequestMethod.GET)
    public String ProductDetails(Model model, @PathVariable("id") int id) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "product-detail";
    }

}