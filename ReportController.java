package com.mlab.endpoint.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mlab.endpoint.Model.ActivityReportVO;
import com.mlab.endpoint.Model.ReportData;
import com.mlab.endpoint.Model.ReportRequestVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.ProductInformationView;
import com.mlab.endpoint.interfaces.Registration;
import com.mlab.endpoint.interfaces.Report;
import com.mlab.endpoint.interfaces.SearchResult;

@Controller
public class ReportController {

    private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
   
    @Value("${integration.username}")
    private String inusername;
    
    @Value("${token.val}")
    private String tokenval;
    
    
    @Autowired
    private Report report;

    @Autowired
    private SearchResult searchResult;

    @Autowired
    private Registration caseRegistration;

    @Autowired
    private ProductInformationView informationView;

    

    

    
    //bicharadin

    


    
    
    
    //police station base search for initial page loading..
    
    
    
    
    
    /// Search by District post 
    
    
    
    


    
    
    // Searching for date range wise- get method for menu click
    
    

    //Search Date Range options after search button click.
    

    
    
    //// search by entry date
    
// Searching for enty date range wise- get method for menu click
    
    

    //Search Date Range options after search button click.
    

    
    


    
  //  getAllCasesByCriminalRefNo


}
