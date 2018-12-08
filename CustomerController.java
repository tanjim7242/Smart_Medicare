package com.mlab.endpoint.controller;

 
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mlab.endpoint.Model.User;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.testInterface;

@Controller
public class CustomerController {
	
	@Autowired
	private testInterface tInterface;
	
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	@ModelAttribute("user")
	public User constructUser() {
		return new User();
	}
	 
	 
	 @RequestMapping(method = RequestMethod.POST,value = "/register")
	    public String processRegistration(@ModelAttribute("user") User user,
	    		ModelMap model) throws ServiceException {
	         
	        
	        System.out.println("username: " + user.getUsername());
	        System.out.println("password: " + user.getPassword());
	        System.out.println("email: " + user.getEmail()); 
	        System.out.println("profession: " + user.getProfession());
	        
	        tInterface.testInsert(user);
	        
	        String email=tInterface.getAll(user.getUsername());
	        
	         System.out.println(email); 
	         
	        return "RegistrationSuccess";
	    }
	 
	 
	



/*	 @RequestMapping(value = "/createlog", method = RequestMethod.POST)
	    public String AddeditVictiminformationWc(
	    		@RequestParam(value = "eventid") String victimId, 
	    		@RequestParam(value = "hostname") String cid, Model model) throws ServiceException {

	    	logger.info("Entering into add edit vitim information");
	        
	    	logger.info("Selected Victim Id of->" + victimId + "--Selected CaseBasicId->" + cid);

	        return "editvictimInfoByIdWc";
	    }
*/


}
