
package com.mlab.endpoint.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.ProductVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.CustomerInformation;
import com.mlab.endpoint.interfaces.ProductInformationView;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;
import com.mlab.endpoint.util.Ranumber;;

public class CustomerInformationImpl implements CustomerInformation {
	private static final Logger logger = LoggerFactory.getLogger(CustomerInformationImpl.class);

	private static final String Null = null;
	

	private StoredProcJdbcDao storedProcJdbcDao;

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}

	@Override
	public ArrayList<CustomerVO> checkCustomer(int customerId, String mobileNumber,String cid)
			throws ServiceException {
		// TODO Auto-generated method stub
		
		List<HashMap<String, Object>> resultSet = null;
		List<String> values = new ArrayList<String>();
		values.add(Integer.toString(customerId));
		values.add(mobileNumber);
		values.add(cid);
		
		
		
		ArrayList<CustomerVO> customerList = new ArrayList<CustomerVO>();
		
		try 
		{ 			
			resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Customer_By_Mobile_ID, values);
		} catch (StoredProcException e) 
		{
			throw new ServiceException(e.getMessage(), e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (resultSet != null) {
			
			
				try
				{
            	
            	for (Iterator<HashMap<String, Object>> iterator = resultSet
						.iterator(); iterator.hasNext();) {
					HashMap<?, ?> map = iterator.next();
				
					CustomerVO info = new CustomerVO();
					
					//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
					//info.setBarcode(String.valueOf(map.get("profileId")));
					//CategoryNo,CategoryName,Description
	
					
					//'customer_id,mobile,customer_identificationumber
					
					
					//customer_id,customertype,customer_name,customer_identificationumber,email,phone,mobile,status,createdby,editedby,createdate,lasteditdate
					
					info.setCustomerName(String.valueOf(map.get("customer_name")));
					info.setCid(String.valueOf(map.get("customer_id")));
					info.setCustomeridentificationo(String.valueOf(map.get("customer_identificationumber")));
					info.setMobileNumber(String.valueOf(map.get("mobile")));
					info.setCustomerAddress(String.valueOf(map.get("address")));
					info.setCustomertype(String.valueOf(map.get("customertype")));
					
						
					
					//'ProductNo,ProductCode,Description,Barcode,UnitPrice,StocksOnHand,CategoryNo,supplieruid,warrenty,createby,createdate,customerid

					customerList.add(info);

            	}
            } catch (Exception e) {
            	logger.info("Error"+e.getMessage());
                throw new ServiceException(e.getMessage(), e);
            }

		
		}

		logger.info("Returing Customer query List : " + customerList);

		System.out.println("Customer List:"+customerList);

		return customerList;

	}

	@Override
	public String createCustomer(CustomerVO customerVO, int customerId,
			String actionuser) throws ServiceException {
		// TODO Auto-generated method stub
		
		
		
	List<String> values = new ArrayList<String>();
		
		values.add(customerVO.getMobileNumber());
		values.add(customerVO.getCustomerName());
		values.add(customerVO.getCustomeridentificationo());
		values.add(customerVO.getCustomerAddress());
		values.add(customerVO.getEmail());
		values.add(customerVO.getCustomertype());
		values.add(String.valueOf(customerId));
		values.add(actionuser);
		
		
		String res=null;
		try {
			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Customer, values);
			  	
			  	logger.info("Customer Created Successfully by:"+actionuser +"with customer ID:"+customerId);

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;

		
		
	}

	@Override
	public ArrayList<CustomerVO> getListofCustomer(int customerId)
			throws ServiceException {
		// TODO Auto-generated method stub

		
		List<HashMap<String, Object>> resultSet = null;
		List<String> values = new ArrayList<String>();
		values.add(Integer.toString(customerId));
		
		ArrayList<CustomerVO> customerList = new ArrayList<CustomerVO>();
		
		try 
		{ 			
			resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Get_LIST_OF_CUSTOMER, values);
		} catch (StoredProcException e) 
		{
			throw new ServiceException(e.getMessage(), e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (resultSet != null) {
			
			
				try
				{
            	
            	for (Iterator<HashMap<String, Object>> iterator = resultSet
						.iterator(); iterator.hasNext();) {
					HashMap<?, ?> map = iterator.next();
				
					CustomerVO info = new CustomerVO();
					
					//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
					//info.setBarcode(String.valueOf(map.get("profileId")));
					//CategoryNo,CategoryName,Description
	
					
					//'customer_id,mobile,customer_identificationumber
					
					
					//customer_id,customertype,customer_name,customer_identificationumber,email,phone,mobile,status,createdby,editedby,createdate,lasteditdate
					
					info.setCustomerName(String.valueOf(map.get("customer_name")));
					info.setCid(String.valueOf(map.get("customer_id")));
					info.setCustomeridentificationo(String.valueOf(map.get("customer_identificationumber")));
					info.setMobileNumber(String.valueOf(map.get("mobile")));
					info.setCustomerAddress(String.valueOf(map.get("address")));
					info.setCustomertype(String.valueOf(map.get("customertype")));
					
						
					
					//'ProductNo,ProductCode,Description,Barcode,UnitPrice,StocksOnHand,CategoryNo,supplieruid,warrenty,createby,createdate,customerid

					customerList.add(info);

            	}
            } catch (Exception e) {
            	logger.info("Error"+e.getMessage());
                throw new ServiceException(e.getMessage(), e);
            }

		
		}

		logger.info("Returing Customer query List : " + customerList);

		System.out.println("Customer List:"+customerList);

		return customerList;
		
	}

	@Override
	public String GetRandomNumber() throws ServiceException {
		// TODO Auto-generated method stub

		String randomnumber=Null;
		
		Ranumber.GetRanOne();
		Ranumber.GetRanTwo();
		Ranumber.GetRanThree();
		Ranumber.GetRanFour();
				
		return (Ranumber.GetRanOne()+Ranumber.GetRanTwo()+Ranumber.GetRanThree()+Ranumber.GetRanFour());
	}
	
		


}


