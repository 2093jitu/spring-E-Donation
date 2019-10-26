package com.exam.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Donation;
import com.exam.model.DonationRege;
import com.exam.service.DonationService;
import com.exam.service.LoninOrRegeDaoService;

@Controller
public class DonationController {
	@Autowired
	DonationService donationService;

	@Autowired
	LoninOrRegeDaoService loninOrRegeDaoService;

	@InitBinder
	public void dataInitBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "createdate", new CustomDateEditor(format, false));

	}

//	@GetMapping(value = "/causes")
//	public ModelAndView causes() {
//
//		return new ModelAndView("/causes/causes");
//
//	}

	

	@RequestMapping("/donationcurd")
	public String donationcurd(Map<String, Object> map) {
		map.put("donationList", donationService.getAll());
		return "/donatelist/donationcurd";
	}

	@RequestMapping("/details/{id}")
	public ModelAndView showDatails(@PathVariable("id") int id, Map<String, Object> map) {
		System.out.println(id);

		map.put("donationdetails", donationService.getById(id));
		System.out.println(donationService.getById(id));
		return new ModelAndView("/donatelist/donationdetails", map);
	}

	// Admin donation
	@RequestMapping("/admindonation")
	public String showAdmin(Map<String, Object> map) {
		map.put("donationList", donationService.getAll());
		return "/donatelist/admindonation";
	}

	@RequestMapping(value = "/statuschange/{id}/{status}")
	public ModelAndView donationHaid(@PathVariable("id") int id, @PathVariable("status") Boolean status,
			Map<String, Object> map) {
		map.put("donationList", donationService.getAll());
		System.out.println(id + "    " + status);
		donationService.updateStatus(id, status);
		return new ModelAndView("redirect:/admindonation");
	}

	@RequestMapping(value = "/deletedonation/{id}")
	public ModelAndView donationDelete(@PathVariable("id") int id) {
		Map<String, Object> map = new HashMap<>();
		List<Donation> donationList = donationService.getAll();
		map.put("donationList", donationList);

		donationService.delete(id);
		return new ModelAndView("redirect:/admindonation", map);

	}

	// login or regirdtration page show

	@RequestMapping("/loginorsinup")
	public ModelAndView loginOrrege() {

		return new ModelAndView("donatelist/loginorsinup");
	}
	
	//for sine Up

		@RequestMapping(value = "/createdonationsinup")
		public ModelAndView sinupdcreatedonationpage(@ModelAttribute("donationRege") DonationRege donationRege) {
			System.out.println(donationRege);
			loninOrRegeDaoService.save(donationRege);
			
			return new ModelAndView("donatelist/loginorsinup");
		}

	//after login 
	@RequestMapping(value = "/createdonationlogin")
	public ModelAndView logindcreatedonationpage(@RequestParam("email") String email,
			@RequestParam("password") String password, Map<String, Object> map) {

		if (loninOrRegeDaoService.login(email, password).size() == 1) {
			System.out.println(email + " : " + password);
			map.put("donationList", donationService.getByEmail(email));
			map.put("email", email);
			return new ModelAndView("donatelist/rearchResultDonation" ,map);
			
		} else {

			return new ModelAndView("donatelist/loginorsinup");

		}
		
	}
	
	@RequestMapping("/searchredirect")
	public ModelAndView redirectpage() {		
		
		return new ModelAndView("/donatelist/rearchResultDonation");
	}
	
	//create new Donation
	
	@PostMapping(value = "/createdonation")
	public ModelAndView create(Model m, @Valid @ModelAttribute("donation") Donation donation ,Map<String, Object> map) {
		System.out.println(donation);
		donationService.save(donation);
		map.put("email",donation.getEmail());
		map.put("donationList", donationService.getByEmail(donation.getEmail()));		

		return new ModelAndView("/donatelist/rearchResultDonation",map);
	}
	
	
	@RequestMapping(value = "/deletedonationbyuser/{id}/{email}")
	public ModelAndView donationDeleteByUser(@PathVariable("id") int id ,@PathVariable String email,Map<String, Object> map) {
		donationService.delete(id);
		
		map.put("email",email);
		map.put("donationList", donationService.getByEmail(email));	
		
		return new ModelAndView("/donatelist/rearchResultDonation");

	}
	
	
	
	//searchresult
	@RequestMapping("/createresult")
	public ModelAndView createresult() {		
		
		return new ModelAndView("/donatelist/createresult");
	}

}
