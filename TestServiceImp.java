package com.mlab.endpoint.Service;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mlab.endpoint.Model.User;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.interfaces.testInterface;
import com.mlab.endpoint.util.Constants;

public class TestServiceImp implements testInterface {

	private StoredProcJdbcDao storedProcJdbcDao;

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}

	@Override
	public void testInsert(User user) throws ServiceException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getAll(String userName) throws ServiceException {
		// TODO Auto-generated method stub
		return null;
	}




}
