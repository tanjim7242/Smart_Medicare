package com.mlab.endpoint.interfaces;

import java.util.ArrayList;
import java.util.Map;

import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.ProductVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.exception.ServiceException;

public interface CustomerInformation {

	public ArrayList<CustomerVO> checkCustomer(int customerId,String mobilenumber,String cid)
			throws ServiceException;
	
	public String createCustomer(CustomerVO customerVO, int customerId,String actionuser)
			throws ServiceException;
	
	public ArrayList<CustomerVO> getListofCustomer(int customerId)
			throws ServiceException;
	

	public String GetRandomNumber()throws ServiceException;
	

	
}
