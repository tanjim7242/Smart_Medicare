package com.mlab.endpoint.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mlab.endpoint.Model.ReportRequestVO;
import com.mlab.endpoint.Model.SearchResultVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.SearchResult;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

public class SearchResultImp implements SearchResult{
	
	private static final Logger logger = LoggerFactory.getLogger(ProductInformationViewImpl.class);

	private StoredProcJdbcDao storedProcJdbcDao;

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}
}
