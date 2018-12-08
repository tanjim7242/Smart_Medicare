package com.mlab.endpoint.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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

import com.mlab.endpoint.Model.DistributorVO;
import com.mlab.endpoint.Model.OthersInfoVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.Registration;
import com.mlab.endpoint.interfaces.DropDownMenuData;
import com.mlab.endpoint.interfaces.SystemSettings;

@Controller
public class SystemSettingsController {

	@Autowired
	private DropDownMenuData menuData;

	@Autowired
	private SystemSettings systemSettings;

	@Autowired
	private Registration caseRegistration;
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(PosController.class);

	


}
