/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlab.endpoint.security;

import com.mlab.endpoint.Model.User;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

/**
 *
 * @author ADMIN
 */
@Component("successHandler")
public class SuccessHandler implements AuthenticationSuccessHandler {

    protected Log logger = LogFactory.getLog(this.getClass());

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
            HttpServletResponse response, Authentication authentication) throws IOException {
        handle(request, response, authentication);
        clearAuthenticationAttributes(request);
    }

    protected void handle(HttpServletRequest request,
            HttpServletResponse response, Authentication authentication) throws IOException {
        String targetUrl = determineTargetUrl(authentication);
        User userDetail = (User) authentication.getPrincipal();
        HttpSession session = request.getSession();
        session.setAttribute("user_designation", userDetail.getDesignation());
        session.setAttribute("customer_id", userDetail.getDistId());
        session.setAttribute("username", userDetail.getUsername());
        session.setAttribute("type", userDetail.getType());
        session.setAttribute("duuid", userDetail.getProfession());
System.out.println("Username"+userDetail.getUsername());

        if (response.isCommitted()) {
            logger.debug("Response has already been committed. Unable to redirect to " + targetUrl);
            return;
        }

        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    /**
     * Builds the target URL according to the logic defined in the main class
     * Javadoc.
     *
     * @param authentication
     * @return
     */
    protected String determineTargetUrl(Authentication authentication) {
        boolean isPatient = false;
        boolean isAdmin = false;
        boolean isDoctor = false;
        boolean isPharmacy=false;
        boolean isClinic=false;
        
        
     
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        OUTER:
        for (GrantedAuthority grantedAuthority : authorities) {
            switch (grantedAuthority.getAuthority()) {
                case "ROLE_USER":
                    isPatient = true;
                    
                   // set.
                    break OUTER;
                case "ROLE_ADMIN":
                    isAdmin = true;
                    break OUTER;
                case "ROLE_PATIENT":
                    isPatient = true;
                    break OUTER;
                case "ROLE_DOCTOR":
                    isDoctor = true;
                    break OUTER;
                case "ROLE_PHARMACY":
                    isPharmacy = true;
                    break OUTER;
                case "ROLE_CLINIC":
                    isClinic = true;
                    break OUTER;
            }
        }

        if (isPatient) {
        	//session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
            return "/patient/home";
        } else if (isAdmin) {
            return "/admin/dashbord";
        } else if (isDoctor) {
            return "/doctor/home";
        }
        else if (isPharmacy) {
            return "/pharmacy/home";
        }
        else if (isClinic) {
            return "/clinic/home";
        }
        else {
            throw new IllegalStateException();
        }
    }

    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) {
            return;
        }
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
    }

    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }
}
