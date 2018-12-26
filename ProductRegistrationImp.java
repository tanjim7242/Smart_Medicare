package com.mlab.endpoint.Service;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.Registration;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.NumberUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class ProductRegistrationImp implements Registration {

    private static final Logger logger = LoggerFactory.getLogger(ProductRegistrationImp.class);
    @Value("${upload.folder}")
    private String ATTACHMENT_FOLDER;
    
    @Value("${thirdpartyurl}")
    private String tigeriturlval;


    @Value("${bioupload.folder}")
    private String BIOATTACHMENT_FOLDER;

    
    private StoredProcJdbcDao storedProcJdbcDao;

    public StoredProcJdbcDao getStoredProcJdbcDao() {
        return storedProcJdbcDao;
    }

    public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
        this.storedProcJdbcDao = storedProcJdbcDao;
    }

    


    //getting clause name for case table law update
    
    

    


    //getting clause name for case table law update



    
    
//getting clause name for case table law update
    
    


    
//getting clause name for case table law update


    


    
    
    
    
    
    
    
    

    
    
    
    
    
//token:needtoadd



}
