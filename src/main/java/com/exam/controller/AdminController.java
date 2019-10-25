package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.AdminLogin;

@Controller
public class AdminController {

	@RequestMapping(value = "/adminlogin")
	public ModelAndView adminlogin(@ModelAttribute("adminLogin") AdminLogin adminLogin) {
		
		if(adminLogin.getEmail().equals("mmjitu2019@gmail.com") && adminLogin.getPassword().equals("123")) {
			
			return new ModelAndView	("/admin");
		}
		
		return new ModelAndView	("/index");
	}
	
	@RequestMapping(value = "/adminHome")
	public ModelAndView adminHome() {
		
			
			return new ModelAndView	("/admin");
		
	}
	
}
