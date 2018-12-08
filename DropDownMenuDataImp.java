package com.mlab.endpoint.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.DropDownMenuData;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

public class DropDownMenuDataImp implements DropDownMenuData{
	
	private StoredProcJdbcDao storedProcJdbcDao;
	private static final Logger logger = LoggerFactory.getLogger(SystemSettingsImp.class);

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}

	@Override
	public Map<String, String> getRoles() throws ServiceException {
		ResultSet resultSet = null;
		List<String> values = new ArrayList<String>();
		Map<String, String> roles = new LinkedHashMap<String, String>();
		roles.put("", "select a value");

		try {
			resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_role, values);
		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		if (resultSet != null) {
			try {

				while (resultSet.next()) {
					roles.put(resultSet.getString("role_id"), resultSet.getString("role_name"));
				}
			} catch (SQLException e) {
				throw new ServiceException(e.getMessage(), e);
			}
		}

		return roles;

	}


}
