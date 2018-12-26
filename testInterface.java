package com.mlab.endpoint.interfaces;

import com.mlab.endpoint.Model.User;
import com.mlab.endpoint.exception.ServiceException;

public interface testInterface {
	
	public void testInsert(User user) throws ServiceException;
	
 

	 String getAll(String userName) throws ServiceException;

}
