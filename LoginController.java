/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlab.endpoint.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ADMIN
 */
@Controller
public class LoginController {

    @RequestMapping("/login/user-login")
    private String login(@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request,
			HttpServletResponse response,Model model) {
    	HttpSession session = request.getSession();
    	if (logout != null) {
        	
        	
        	Authentication auth = SecurityContextHolder.getContext()
    				.getAuthentication();
    		if (auth != null) 
    		{
    			new SecurityContextLogoutHandler().logout(request, response, auth);
    		}
    		
    		try{
    		session.invalidate(); 
    		}catch( Exception e)
    		{
    
    		}
            model.addAttribute("msg", "You've been logged out successfully.");
        }
        
        return "login";
    }

    @RequestMapping("/403")
    private String accesssDenied(Model model) {
        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            if (!(auth instanceof AnonymousAuthenticationToken)) {
                UserDetails userDetail = (UserDetails) auth.getPrincipal();
                model.addAttribute("username", userDetail.getUsername());
            }
        }

        return "403";
    }
}
