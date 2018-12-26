/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlab.endpoint.security;

import com.mlab.endpoint.Model.PasswordHashingUtil;
import com.mlab.endpoint.Model.User;
import com.mlab.endpoint.Service.UserService;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Collection;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

/**
 *
 * @author ADMIN
 */
@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

    private UserService userService;
    PasswordHashingUtil hashUtil = new PasswordHashingUtil();

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = (String) authentication.getCredentials();
        
       
        User user = userService.loadUserByUsername(username);
        
        if (user == null) {
            throw new BadCredentialsException("Username not found.");
        }
        
     try {
				if( ! PasswordHashingUtil.validatePassword(password, user.getPassword())){
					 
					 throw new BadCredentialsException("Wrong password.");
				 }
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvalidKeySpecException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			 
	/*	
		if (!password.equals(user.getPassword())) {
            throw new BadCredentialsException("Wrong password.");
        }
*/
        
     //   hashUtil.validatePassword(originalPassword, storedPassword)
        
        Collection<? extends GrantedAuthority> authorities = user.getAuthorities();

        return new UsernamePasswordAuthenticationToken(user, password, authorities);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
