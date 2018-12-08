package com.mlab.endpoint.Service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mlab.endpoint.Model.DistributorVO;
import com.mlab.endpoint.Model.OthersInfoVO;
import com.mlab.endpoint.Model.PasswordHashingUtil;
import com.mlab.endpoint.Model.UserVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.interfaces.SystemSettings;
import com.mlab.endpoint.util.Constants;

public class SystemSettingsImp implements SystemSettings {
	
	private static final Logger logger = LoggerFactory.getLogger(SystemSettingsImp.class);

	private StoredProcJdbcDao storedProcJdbcDao;

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}

	@Override
	public String createUser(UserVO userVO) throws ServiceException, NoSuchAlgorithmException, InvalidKeySpecException {
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		values.add(userVO.getFirstName());
		values.add(userVO.getMiddleName());
		values.add(userVO.getLastName());
		values.add(userVO.getUsername());
		values.add(hashUtil.generateStorngPasswordHash(userVO.getPassword()));
		values.add(userVO.getBatId());
		values.add(userVO.getPhoneNo());
		values.add(userVO.getType());
		String res=null;
		try {
			  	logger.info("Creatin new Battalion : " + userVO);

			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.create_user, values);
		 

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;
		
	}
	
	@Override
	public String UpdateUserInfor (UserVO userVO, String actionuser) throws ServiceException, NoSuchAlgorithmException, InvalidKeySpecException {
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		
		values.add(userVO.getFirstName());
		values.add(userVO.getLastName());
		values.add(userVO.getMiddleName());
		values.add(userVO.getPhoneNo());
		values.add(userVO.getUuid());
		values.add(userVO.getUsername());
		values.add(actionuser);
		
		String res=null;
		try {
			  logger.info("Updating User Details Information: " + values);

			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Update_User_Info, values);
		 

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;
		
	}

	@Override
	public String UpdateUserType (UserVO userVO, String actionuser) throws ServiceException, NoSuchAlgorithmException, InvalidKeySpecException {
	
		List<String> values = new ArrayList<String>();
		values.add(userVO.getType());
		values.add(userVO.getUuid());
		values.add(userVO.getUsername());
		values.add(actionuser);
		
		String res=null;
		try {
			  logger.info("Updating User Battalion : " + values);

			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Update_User_Type, values);
		 

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;
		
	}


	
	@Override
	public String UpdateUserPassword (UserVO userVO, String actionuser) throws ServiceException, NoSuchAlgorithmException, InvalidKeySpecException {
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		values.add(userVO.getUuid());
		values.add(userVO.getUsername());
		values.add(actionuser);
	  try {
				values.add(hashUtil.generateStorngPasswordHash(userVO.getPassword()));
			} catch (NoSuchAlgorithmException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InvalidKeySpecException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		String res=null;
		try {
			  logger.info("Updating User Password : " + values);

			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Update_User_Password, values);
		 

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;
		
	}


	
	
/*
	@Override
	public List<UserVO> getAllUsers() throws ServiceException {
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		List<UserVO> userDetailsList  = new ArrayList<UserVO>(); 
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_battalions_details, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					BattalionVO infoVO=new BattalionVO();
					
					 infoVO.setBattalionName(resultSet.getString("bat_name"));
					 infoVO.setArea(resultSet.getString("bat_area"));
					 infoVO.setContactNo(resultSet.getString("bat_contno"));
					 infoVO.setDistrict(resultSet.getString("DistrictName")); 
					
					userDetailsList .add(infoVO);
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		return userDetailsList ;

	}

*/

	@Override
	public String getPassword(String userName) throws ServiceException {
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		 String password=new String();
		 values.add(userName);
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_password, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					 
					 
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		return password;

	}

	@Override
	public UserVO getUserByUserName(String userName) throws ServiceException {
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		UserVO user=new UserVO();
		 values.add(userName);
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_user_by_name, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					
					user.setFirstName(resultSet.getString("first_name"));
					user.setMiddleName(resultSet.getString("middle_name"));
					user.setLastName(resultSet.getString("last_name"));
					user.setPhoneNo(resultSet.getString("phoneno"));
					 user.setUsername(resultSet.getString("username"));
					 user.setBattalionName(resultSet.getString("batName"));
					 
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		return user;
	}

	
	@Override
	public List<UserVO> getAllUsers() throws ServiceException {
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		List<UserVO> userDetailsList  = new ArrayList<UserVO>(); 
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_All_users, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					UserVO user=new UserVO();
					
					user.setFirstName(resultSet.getString("first_name"));
					user.setMiddleName(resultSet.getString("middle_name"));
					user.setLastName(resultSet.getString("last_name"));
					user.setPhoneNo(resultSet.getString("phoneno"));
					user.setUsername(resultSet.getString("username"));
					user.setBattalionName(resultSet.getString("batName"));
					user.setType(resultSet.getString("role_name"));
					user.setRoleId(resultSet.getString("role_id"));
					user.setUuid(resultSet.getString("uuid"));
					user.setBatId(resultSet.getString("bat_id"));
					userDetailsList.add(user);
					
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		logger.info("Userlist:"+userDetailsList);
		return userDetailsList;
	}
	
	@Override
	public void updatepassword(String uuid, String password) throws ServiceException {
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		  values.add(uuid);
		  
		  try {
				values.add(hashUtil.generateStorngPasswordHash(password));
			} catch (NoSuchAlgorithmException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InvalidKeySpecException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.reset_password, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		  
		
	}

	@Override
	public UserVO validateUser(UserVO userVO) throws ServiceException {
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		UserVO user=new UserVO();
		 values.add(userVO.getUsername());
		 try {
			values.add(hashUtil.generateStorngPasswordHash(userVO.getPassword()));
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvalidKeySpecException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.validate_user_login, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					
					user.setFirstName(resultSet.getString("first_name"));
					user.setMiddleName(resultSet.getString("middle_name"));
					user.setLastName(resultSet.getString("last_name"));
					user.setDesignation(resultSet.getString("designation"));
					 user.setUsername(resultSet.getString("username"));
					 user.setBattalionId(resultSet.getString("bat_id"));
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		return user;
	}
	
}
