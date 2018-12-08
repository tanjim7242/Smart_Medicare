package com.mlab.endpoint.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mlab.endpoint.interfaces.Report;
import com.mlab.endpoint.interfaces.SystemSettings;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SystemSettings systemSettings;

	@Autowired
	private Report report;

	@RequestMapping(value = "/")
	public String home() {
		
		return "home2";
	}
	

    

	@RequestMapping(value = "/login")
	public String Login() {
//		logger.info("Welcome home! The client locale is {}.", locale);
//
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//
//		String formattedDate = dateFormat.format(date);
//
//		model.addAttribute("serverTime", formattedDate);

		return "redirect:/login/user-login";
	}
	

	
	@RequestMapping(value = "/patient/home")
	public String patientHome(HttpSession session,Model model) {
		
		
		if (session == null) {logger.info("Error: Invalid Request Session:->");return "login";}
		
		if (session.getAttribute("username")==null){return "login";}
		
		int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
		

		
		return "patient/dashboard";
	}

	@RequestMapping(value = "/admin/dashbord")
	public String dashbroad(HttpSession session,Model model) {
		if (session == null) {logger.info("Error: Invalid Request Session:->");return "login";}
		
		if (session.getAttribute("username")==null){return "login";}   
		
		int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
		return "admin/dashboard";
	}
	

	@RequestMapping(value = "/doctor/home")
	public String Doctor_home(HttpSession session,Model model) {
		if (session == null) {logger.info("Error: Invalid Request Session:->");return "login";}
		
		if (session.getAttribute("username")==null){return "login";}   
		int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);

		return "doctor/dashboard";
	}
	


	@RequestMapping(value = "/pharmacy/home")
	public String pharmacy_home(HttpSession session,Model model) {
		
		if (session == null) {logger.info("Error: Invalid Request Session:->");return "login";}
		
		if (session.getAttribute("username")==null){return "login";}   
		int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);

		return "pharmacy/dashboard";
	}

	

	@RequestMapping(value = "/clinic/home")
	public String clinic_home(HttpSession session,Model model) {

		if (session == null) {logger.info("Error: Invalid Request Session:->");return "login";}
		
		if (session.getAttribute("username")==null){return "login";}   
		int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
		
		return "clinic/dashboard";
	}
	
	


	
	
	//
//	@RequestMapping(value = "/", method = RequestMethod.POST)
//	public String validateUser(@ModelAttribute("userVO") UserVO userVO, Locale locale, Model model,HttpSession session)
//			throws ServiceException {
//
//		String returnPage = "";
//		 
//		systemSettings.validateUser(userVO);
//		session.setAttribute("user_designation", userVO.getDesignation());
//		session.setAttribute("user_battalion_id", userVO.getBattalionId());
//		model.addAttribute("user_designation", userVO.getDesignation());
//
//		userVO.setDesignation("admin");
//		if (userVO.getDesignation() == "admin") {
//			 
//			returnPage = "redirect:/viewDashBoard";
//		} else if (userVO.getDesignation() == "super admin") {
//
//			returnPage = "redirect:/allCase";
//		} else if (userVO.getDesignation() == "batallion"){
//			returnPage = "redirect:/allCase";
//		}
//
//		return returnPage;
//	}
//	
//	@RequestMapping(value = "/logoutUser", method = RequestMethod.GET)
//	public String logoutUser(@ModelAttribute("userVO") UserVO userVO, Locale locale, Model model,HttpSession session)
//			throws ServiceException {
//
//		 session.invalidate();
//		 
//		return "login";
//	}

}
