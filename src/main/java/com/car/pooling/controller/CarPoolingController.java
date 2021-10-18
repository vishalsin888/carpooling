package com.car.pooling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarPoolingController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showSignPage(ModelMap model) {
		return "signup";
	}
	
	@RequestMapping(value = "/dashboard")
	public String afterLogin(ModelMap model) {
		return "users-dashboard";
	}
	
	/*
	 * @RequestMapping(value = "/getcabs", method = RequestMethod.GET) public String
	 * showCabs(ModelMap model) { return "allcabs"; }
	 */
	
	
	
}
