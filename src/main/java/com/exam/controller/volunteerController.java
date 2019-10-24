package com.exam.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Volunteer;
import com.exam.service.VolunteerSercice;

@Controller
public class volunteerController {

	@Autowired
	VolunteerSercice VolunteerSercice;

	@InitBinder
	public void dataInitBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(format, false));

	}

	@RequestMapping(value = "/volunteer")
	public ModelAndView showVolunteerPage(Map<String, Object> map) {
		map.put("allVolunteer", VolunteerSercice.getAll());
		return new ModelAndView("/volunteer/volunteerTeam", map);
	}

	@RequestMapping(value = "/saveVolunteer", method = RequestMethod.POST)
	public ModelAndView addVolunteer(@ModelAttribute("volunteer") Volunteer volunteer) {
		System.out.println(volunteer);
		VolunteerSercice.save(volunteer);
		return new ModelAndView("redirect:/volunteer");
	}

	@RequestMapping(value = "/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Integer id, Map<String, Object> map) {
		System.out.println(id + "okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
		VolunteerSercice.delete(id);
		map.put("allVolunteer", VolunteerSercice.getAll());
		return new ModelAndView("redirect:/volunteer", map);
	}
	
	@RequestMapping(value = "/edit/{id}")
	public ModelAndView editshow(@PathVariable("id") int id, Map<String , Object> map) {
		Volunteer volunteer =VolunteerSercice.getById(id);
		map.put("allVolunteer", volunteer);
		System.out.println(id+"okkkkkkkkkkkkkkkkkkkk");
		System.out.println(volunteer);
		return new ModelAndView("/volunteer/editVolunteer",map);
	}
	
	@RequestMapping("/updateVolunteer")
	public ModelAndView editSava(@ModelAttribute ("volunteer") Volunteer volunteer ,Map<String , Object> map) {
		VolunteerSercice.update(volunteer);
		map.put("allVolunteer", VolunteerSercice.getAll());
		return new ModelAndView("redirect:/volunteer", map);
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView serch(@ModelAttribute("search") String search ,Map<String, Object> map ) {
		System.out.println(search);		
		map.put("allVolunteer", VolunteerSercice.getByName(search));
		return new ModelAndView("/volunteer/searchResult", map);
	}
}
