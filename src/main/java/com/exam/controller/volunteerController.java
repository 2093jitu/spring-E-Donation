package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.Volunteer;
import com.exam.service.VolunteerSercice;

@Controller
public class volunteerController {

	@Autowired
	VolunteerSercice VolunteerSercice;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;

	
	@Autowired
	private ServletContext servletContext;

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
	
	//report start
			@GetMapping("/allVolenter")
			public String pdf(HttpServletResponse response) {
				response.setContentType("application/pdf");
				try {
					SimpleReportExporter simpleExporter = new SimpleReportExporter();

					simpleReportFiller.setReportFileName("allvolenterreport.jrxml");
					simpleReportFiller.compileReport();

					Map<String, Object> parameters = new HashMap<>();

					simpleReportFiller.setParameters(parameters);
					simpleReportFiller.fillReport();
					simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

					simpleExporter.exportToPdf("allvolenterreport.pdf", "olonsoft");

					File file = new File("src/main/resources/reports/allvolenterreport.pdf");
					response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
					response.setHeader("Content-Length", String.valueOf(file.length()));
					response.setHeader("Content-Disposition", "inline; filename=\"allvolenterreport.pdf\"");
					Files.copy(file.toPath(), response.getOutputStream());
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return null;
			}
}
