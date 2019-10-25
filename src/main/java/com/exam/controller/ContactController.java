package com.exam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.ContactUs;
import com.exam.service.ContactUsService;

@Controller
public class ContactController {

	@Autowired
	JavaMailSender javaMailSender;
	
	@Autowired
	ContactUsService contactUsService;

	@RequestMapping("/contactUs")
	public ModelAndView contactController() {

		return new ModelAndView("contact/contact");
	}

	@RequestMapping(value = "/massageSend")
	public ModelAndView sendmassage(@ModelAttribute("contactUs") ContactUs contactUs) {

		System.out.println(contactUs);
		contactUsService.sendMassage(contactUs);

		return new ModelAndView("redirect:/contactUs");
	}

	@RequestMapping("/contactAdmin")
	public ModelAndView contactControllerAdmin(Map<String, Object> map) {
		map.put("allMassage", contactUsService.getAll());
		return new ModelAndView("contact/contractadmin", map);
	}

	@RequestMapping("/replymessage/{email}")
	public ModelAndView replysms(@PathVariable("email") String email, Map<String, String> map) {

		map.put("email", email);
		return new ModelAndView("contact/replymessage", map);
	}
	
	@RequestMapping("/replymassage")
	public ModelAndView sendEmail(@RequestParam("email") String email, @RequestParam("sub") String sub,
			@RequestParam("body") String body, Map<String, String> map) {		
		SimpleMailMessage massage = new SimpleMailMessage();
		massage.setTo(email);
		massage.setSubject(sub);
		massage.setText(body);
		System.out.println("OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK");
		javaMailSender.send(massage);
		map.put("massage", "Email Send SuccessFull");
		return new ModelAndView("contact/replymessage", map);
	}

}
