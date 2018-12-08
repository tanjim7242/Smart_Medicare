package com.mlab.endpoint.controller;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mlab.endpoint.Model.UserEditVo;
import com.mlab.endpoint.Model.UserVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.DropDownMenuData;
import com.mlab.endpoint.interfaces.SystemSettings;

@Controller
@RequestMapping("/usermanagement")
public class UserManagementController {

	@Autowired
	private SystemSettings systemSettings;

	@Autowired
	private DropDownMenuData menuData;

	@ModelAttribute("userVO")
	private UserVO constractUserVO() {

		return new UserVO();
	}
	
	@ModelAttribute("userEditVO")
	private UserEditVo constractUserEditVo(){
		
		return new UserEditVo();
	}

	private static final Logger logger = LoggerFactory.getLogger(UserManagementController.class);

	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	public String showEditUserForm(Model model) {

		
		logger.info("showing user edit page "); 
		try {
			model.addAttribute ("userlist", systemSettings.getAllUsers());
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "editUser";
	}
	
	@RequestMapping(value = "/getUser", method = RequestMethod.POST)
	public String getUser(RedirectAttributes model,@ModelAttribute("userEditVO") UserEditVo value  , HttpSession session) {

		try {
			
			  
			
			session.setAttribute("userName", value.getUserName());
			
		  UserVO user= systemSettings.getUserByUserName(value.getUserName());
		  
		  model.addFlashAttribute("user", user);
			 
		} catch (ServiceException e) {
			 
			e.printStackTrace();
		}

		return "redirect:/usermanagement/editUser";
	}
	

	@RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
	public String resetPassword(RedirectAttributes model,@ModelAttribute("userEditVO") UserEditVo value , HttpSession session ) {

		try {
			
			String userName=(String) session.getAttribute("userName");
			
			 
		   systemSettings.updatepassword(userName, value.getNewPassword()); 
		    
		} catch (ServiceException e) {
			 
			e.printStackTrace();
		}

		return "redirect:/usermanagement/editUser";
	}
	

    
    	

}
