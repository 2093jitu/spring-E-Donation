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
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.exam.commerz.SSLCommerz;
import com.exam.commerz.Utility.ParameterBuilder;
import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
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

	@Autowired
	SimpleReportFiller simpleReportFiller;

	@Autowired
	private ServletContext servletContext;

	@InitBinder
	public void dataInitBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		binder.registerCustomEditor(Date.class, "date", new CustomDateEditor(format, false));

	}

	@InitBinder
	public void date(WebDataBinder binder) {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		binder.registerCustomEditor(Date.class, "createdate", new CustomDateEditor(format, false));

	}

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

	// for sine Up

	@RequestMapping(value = "/createdonationsinup")
	public ModelAndView sinupdcreatedonationpage(@ModelAttribute("donationRege") DonationRege donationRege,
			Map<String, Boolean> map) {
		System.out.println(donationRege);
		boolean reg = loninOrRegeDaoService.isEmailAlreadyInUse(donationRege.getEmail(), "DonationRege");

		boolean massage = false;

		if (reg != true) {

			loninOrRegeDaoService.save(donationRege);

		} else {

			massage = true;
			map.put("massage", massage);
			System.out.println(massage);
			return new ModelAndView("donatelist/loginorsinup", map);
		}

		return new ModelAndView("donatelist/loginorsinup");
	}

	// after login
	@RequestMapping(value = "/createdonationlogin")
	public ModelAndView logindcreatedonationpage(@RequestParam("email") String email,
			@RequestParam("password") String password, Map<String, Object> map) {

		if (loninOrRegeDaoService.login(email, password).size() == 1) {
			System.out.println(email + " : " + password);
			map.put("donationList", donationService.getByEmail(email));
			map.put("email", email);
			return new ModelAndView("donatelist/rearchResultDonation", map);

		} else {

			return new ModelAndView("donatelist/loginorsinup");

		}

	}

	@RequestMapping("/searchredirect")
	public ModelAndView redirectpage() {

		return new ModelAndView("/donatelist/rearchResultDonation");
	}

	// create new Donation
	@PostMapping(value = "/createdonation")
	public ModelAndView create(@Valid @ModelAttribute("donation") Donation donation,
			@RequestParam("imageFile") MultipartFile[] files, @RequestParam("imageFile2") MultipartFile[] files2,
			Map<String, Object> map) {

		// start

		System.out.println(files.length);
		System.out.println(files2.length);

		String uploadDir = "E:\\26-10-2019\\project\\Spring-eDonation\\src\\main\\resources\\static\\img\\teammemberpic";
		String uploadDir2 = "E:\\26-10-2019\\project\\Spring-eDonation\\src\\main\\resources\\static\\img\\teammemberpic";
		// ---------------------------------------------------
		StringBuilder fileNames = new StringBuilder();
		StringBuilder fileNames2 = new StringBuilder();

		Path fileNameAndPath = null;
		Path fileNameAndPath2 = null;

		try {
			for (MultipartFile file : files) {
				fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
				fileNames.append(file.getOriginalFilename());

				Files.write(fileNameAndPath, file.getBytes());
			}
		} catch (IOException e) {

		}

		try {
			for (MultipartFile file : files2) {
				fileNameAndPath2 = Paths.get(uploadDir2, file.getOriginalFilename());
				fileNames2.append(file.getOriginalFilename());

				Files.write(fileNameAndPath2, file.getBytes());
			}
		} catch (IOException e) {

		}

		System.out.println("File name path -------------" + fileNames);
		System.out.println("File name path -------------" + fileNames2);

		Donation don = new Donation();
		don.setImg(fileNames.toString());
		don.setFullName(donation.getFullName());
		don.setAccountno(donation.getAccountno());
		don.setAddress(donation.getAddress());
		don.setBankname(donation.getBankname());
		don.setbKashAcc(donation.getbKashAcc());
		don.setContact(donation.getContact());
		don.setCreatedate(donation.getCreatedate());
		don.setDescription(donation.getDescription());
		don.setEmail(donation.getEmail());
		don.setNeedammount(donation.getNeedammount());
		don.setDocument(fileNames2.toString());

		// end

		donationService.save(don);
		map.put("email", donation.getEmail());
		map.put("donationList", donationService.getByEmail(donation.getEmail()));

		return new ModelAndView("/donatelist/rearchResultDonation", map);
	}

	@RequestMapping(value = "/deletedonationbyuser/{id}/{email}")
	public ModelAndView donationDeleteByUser(@PathVariable("id") int id, @PathVariable String email,
			Map<String, Object> map) {
		donationService.delete(id);

		map.put("email", email);
		map.put("donationList", donationService.getByEmail(email));

		return new ModelAndView("/donatelist/rearchResultDonation");

	}

	// searchresult
	@RequestMapping("/createresult")
	public ModelAndView createresult() {

		return new ModelAndView("/donatelist/createresult");
	}

	// Donation User Show Admin
	@RequestMapping(value = "/donationUser")
	public ModelAndView showDonationUserAdmin(Map<String, Object> map) {

		map.put("allUser", loninOrRegeDaoService.allDonationUser());

		return new ModelAndView("/donatelist/donationuser", map);
	}

	// delete user
	@RequestMapping(value = "/deleteUser/{id}")
	public ModelAndView deleteUser(@PathVariable("id") int id) {

		loninOrRegeDaoService.deleteUser(id);

		return new ModelAndView("redirect:/donationUser");
	}

	// payment page
	@RequestMapping(value = "/paymentPage")
	public ModelAndView paymentPage() {

		return new ModelAndView("/donatelist/payment");
	}

	// payment form submit

	@RequestMapping(value = "/paymentsubmit")
	public ModelAndView getformvalue(HttpServletRequest req) {

		String cus_name = req.getParameter("cus_name");

		String cus_mobile = req.getParameter("cus_mobile");

		String cus_email = req.getParameter("cus_email");

		String cus_address = req.getParameter("cus_address");

		String cus_country = req.getParameter("cus_country");

		String city = req.getParameter("city");

		String cus_state = req.getParameter("cus_state");

		String currency = req.getParameter("currency");

		String total_amount = req.getParameter("total_amount");

		String Card_Number = req.getParameter("Card_Number");

		String Card_Name = req.getParameter("Card_Name");

		String expiryDate = req.getParameter("expiryDate");

		Map<String, String> postData = ParameterBuilder.constructRequestParameters();
		try {
			SSLCommerz sslCommerz = new SSLCommerz("idbbi5db1cc5bae8cc", "idbbi5db1cc5bae8cc@ssl", true);
			String result = sslCommerz.initiateTransaction(postData, true);
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("");
	}

	@GetMapping(value = "/ssl-success-page")
	public ModelAndView successUrl() {
		System.out.println("::::::::::::::::::::::::::::::::ok:::::::::::::::::::::::::::::::::::::::::::");

		return new ModelAndView("/donatelist/success");
	}

	// report start
	@GetMapping("/alldonationreport")
	public String pdf(HttpServletResponse response) {
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("donationall.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("donationall.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/donationall.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"donationall.pdf\"");
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

	// paramiter
	@PostMapping("/donationbyname")
	public String showbloodReportparamitter(HttpServletResponse response, HttpServletRequest req) {

		String name = req.getParameter("fullName");
		System.out.println("value =============" + name);
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("donationByName.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();
			parameters.put("fullName", name);

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("donationByName.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/donationByName.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"donationByName.pdf\"");
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
