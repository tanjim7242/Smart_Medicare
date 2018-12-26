package com.mlab.endpoint.interfaces;

import java.util.Map;

import com.mlab.endpoint.exception.ServiceException;

public interface DropDownMenuData {
	
	public Map<String, String> getRoles() throws ServiceException;

}
