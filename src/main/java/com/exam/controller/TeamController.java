package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.TeamMember;
import com.exam.service.TeamMemberService;


@Controller
public class TeamController {

	@Autowired
	TeamMemberService teamMemberService;
	

	@Autowired
	SimpleReportFiller simpleReportFiller;

	
	@Autowired
	private ServletContext servletContext;


	@RequestMapping(value = "/jointeam")
	public String jointeam() {

		return "/team/jointeamupdate";
	}

	@RequestMapping("/fileUploadAir.htm")
	public String upload(Model model, @RequestParam("imageFile") MultipartFile[] files) {
		System.out.println(files.length);
		String uploadDir = "E:\\26-10-2019\\project\\Spring-eDonation\\src\\main\\resources\\static\\img\\teammemberpic";
		// ---------------------------------------------------
		StringBuilder fileNames = new StringBuilder();
		Path fileNameAndPath = null;
		try {
			for (MultipartFile file : files) {
				fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
				fileNames.append(file.getOriginalFilename());
				Files.write(fileNameAndPath, file.getBytes());
			}
		} catch (IOException e) {
			model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
		}

		System.out.println("File name path -------------" + fileNames);
		model.addAttribute("img", fileNames);
		return "/team/jointeamupdate";
	}

	@InitBinder
	public void dataInitBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "birthDate", new CustomDateEditor(format, false));

	}

	@PostMapping(value = "/join")
	public String create(Model m, @Valid @ModelAttribute("teamMember") TeamMember teamMember,
			BindingResult bindingResult) {

		System.out.println(teamMember);

		if (bindingResult.hasErrors()) {

			return "/team/jointeamupdate";
		}
		teamMemberService.save(teamMember);

		return "/team/jointeamupdate";
	}

	@RequestMapping("/teammember")
	public ModelAndView showTiemMember(Map<String, Object> map) {
		map.put("teammamber", teamMemberService.getAll());
		System.out.println(teamMemberService.getAll());
		return new ModelAndView("/team/teammember", map);
	}

	// admin panal
	@RequestMapping("/teammemberadmin")
	public ModelAndView teamMamberReq(Map<String, Object> map) {
		map.put("teammamber", teamMemberService.getAll());

		return new ModelAndView("/team/teamMamberAdmin", map);
	}

	// add team member
	@RequestMapping("/addteammember/{Team_Member}/{id}")
	public ModelAndView requestAccept(@PathVariable("Team_Member") String Team_Member, @PathVariable("id") int id) {
		System.out.println(Team_Member + " : " + id);
		teamMemberService.addToTeamMember(Team_Member, id);
		return new ModelAndView("redirect:/teammemberadmin");
	}

	@RequestMapping("/removeorcancalteammember/{id}")
	public ModelAndView deleteOrCencel(@PathVariable("id") int id) {
		System.out.println("Team_Member Id" + " : ==" + id);
		teamMemberService.delete(id);
		return new ModelAndView("redirect:/teammemberadmin");
	}
	
	//report
	
	@PostMapping("/teammemberbyname")
	public String showbloodReportparamitter(HttpServletResponse response ,HttpServletRequest req) {
		
		String fullName=req.getParameter("fullName");
		System.out.println("value =============" +fullName);
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("teammemberbyname.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();
			parameters.put("fullName", fullName);
			
			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("teammemberbyname.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/teammemberbyname.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"teammemberbyname.pdf\"");
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
