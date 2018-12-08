package com.mlab.endpoint.interfaces;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;

import com.mlab.endpoint.Model.DistributorVO;
import com.mlab.endpoint.Model.OthersInfoVO;
import com.mlab.endpoint.Model.UserVO;
import com.mlab.endpoint.exception.ServiceException;

public interface SystemSettings {
	
	public String createUser(UserVO userVO) throws ServiceException, NoSuchAlgorithmException, InvalidKeySpecException; 
	
	public String getPassword(String userName)throws ServiceException;
	
	public UserVO getUserByUserName(String userName)throws ServiceException;
	
	public void updatepassword(String userName,String password)throws  ServiceException;

	public UserVO validateUser(UserVO userVO)throws ServiceException;

	public List<UserVO> getAllUsers() throws ServiceException;

	public String UpdateUserInfor(UserVO userVO, String actionuser)
			throws ServiceException, NoSuchAlgorithmException,
			InvalidKeySpecException;

	public String UpdateUserType(UserVO userVO, String actionuser)
			throws ServiceException, NoSuchAlgorithmException,
			InvalidKeySpecException;

	public String UpdateUserPassword(UserVO userVO, String actionuser)
			throws ServiceException, NoSuchAlgorithmException,
			InvalidKeySpecException; 
	
	
 
}
