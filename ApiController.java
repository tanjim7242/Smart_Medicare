package com.mlab.endpoint.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="rest")
public class ApiController {
	
	private static final Logger logger = LoggerFactory.getLogger(ApiController.class);
	  
	 @RequestMapping(value = "/showAssetRegistrationForm", method = RequestMethod.GET)
		public List<String> home( Model model) {
		 List<String> datas=new ArrayList<>();
		 
			 logger.info("Showing Asset regisgration form ");
			 
			 datas.add("Hello 1");
			 datas.add("Hello 2");
			 datas.add("Hello 3");
			
			return datas;
		}

}
