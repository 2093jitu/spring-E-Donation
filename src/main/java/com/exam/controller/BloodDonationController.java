package com.exam.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.BloodDonation;

import com.exam.service.BloodDonationService;

@Controller
public class BloodDonationController {

	@Autowired
	BloodDonationService bloodDonationService;

	@Autowired
	public JavaMailSender javaMailSender;

	@InitBinder
	public void dataInitBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "lastBloodDonateDate", new CustomDateEditor(format, false));

	}

	@RequestMapping(value = "/bloodDonation")
	public ModelAndView show(Map<String, Object> map) {

		map.put("blooddetaile", bloodDonationService.getAll());
		System.out.println(bloodDonationService.getAll().get(0));
		return new ModelAndView("/blood/blooddonation", map);
	}

	@PostMapping(value = "/blooddonation")
	public String create(Model m, @Valid @ModelAttribute("bloodDonation") BloodDonation bloodDonation,
			BindingResult bindingResult) {
		System.out.println(bloodDonation);

		if (bindingResult.hasErrors()) {

			return "redirect:/bloodDonation";
		}
		bloodDonationService.save(bloodDonation);

		return "redirect:/bloodDonation";
	}

	@RequestMapping(value = "/bloodsearch")
	public ModelAndView bloodSearch(@ModelAttribute("searchbloodGroup") String searchbloodGroup,
			Map<String, Object> map) {
		System.out.println(searchbloodGroup);
		map.put("blooddetaile", bloodDonationService.getBySearch(searchbloodGroup));

		return new ModelAndView("/blood/bloodsearchresult", map);
	}

	// admin work

	@RequestMapping(value = "/adminbloodDonation")
	public ModelAndView adminshow(Map<String, Object> map) {

		map.put("blooddetaile", bloodDonationService.getAll());
		System.out.println(bloodDonationService.getAll().get(0));
		return new ModelAndView("/blood/blooddonationaadmin", map);
	}

	@RequestMapping(value = "/bloodstatuschange/{id}/{statusblood}")
	public ModelAndView statageChange(@PathVariable("id") int id, @PathVariable("statusblood") String statusblood,
			Map<String, Object> map) {
		map.put("donationList", bloodDonationService.getAll());
		System.out.println(id + "    " + statusblood);
		bloodDonationService.updateStatus(id, statusblood);
		return new ModelAndView("redirect:/adminbloodDonation", map);
	}

	@RequestMapping(value = "/deleteBloodDonation/{id}")
	public ModelAndView deleteBloodDonation(@PathVariable("id") int id, Map<String, Object> map) {
		bloodDonationService.delete(id);
		map.put("donationList", bloodDonationService.getAll());
		System.out.println(id);
		return new ModelAndView("redirect:/adminbloodDonation");
	}

	//go to email page
	@RequestMapping(value = "/sendemailform/{email}")
	public ModelAndView showemailsendpage(@PathVariable("email") String email, Map<String, String> map) {
		map.put("email", email);

		return new ModelAndView("blood/sendemailform", map);
	}
	
	// send Email
		@RequestMapping("/sendEmail")
		public ModelAndView sendEmail(@RequestParam("email") String email, @RequestParam("sub") String sub,
				@RequestParam("body") String body, Map<String, String> map) {
			bloodDonationService.statesChangeByEmail(email);
			SimpleMailMessage massage = new SimpleMailMessage();
			massage.setTo(email);
			massage.setSubject(sub);
			massage.setText(body);
			System.out.println("OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
			javaMailSender.send(massage);
			map.put("massage", "Email Send SuccessFull");
			return new ModelAndView("blood/sendemailform", map);
		}

}
