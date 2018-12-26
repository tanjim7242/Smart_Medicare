package com.mlab.endpoint.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mlab.endpoint.Model.ActivityReportVO;
import com.mlab.endpoint.Model.ReportData;
import com.mlab.endpoint.Model.ReportRequestVO;
import com.mlab.endpoint.Model.SearchResultVO;
import com.mlab.endpoint.controller.ReportController;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.Report;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ReportImp implements Report {

    private StoredProcJdbcDao storedProcJdbcDao;
    private static final Logger logger = LoggerFactory.getLogger(ReportController.class);


    public StoredProcJdbcDao getStoredProcJdbcDao() {
        return storedProcJdbcDao;
    }

    public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
        this.storedProcJdbcDao = storedProcJdbcDao;
    }

    


    
    
    //token:needto add

    

// token:needtoAdd

   
   
   //token:needtoadd

	
	
/*	//lawId
	@Override	
	public List<CrimeReportVO> reportByLawName_AllCase_By_DateRangeByLawID(ReportRequestVO requestVO) throws ServiceException {
        ResultSet resultSet = null;
        List<String> values = new ArrayList<>();
     values.add(requestVO.getLawId());
     values.add(requestVO.getStartingDate());
     values.add(requestVO.getEndDate());
        
 
        
        List<CrimeReportVO> reportList = new ArrayList<>();
        logger.info(" Request for Report by Law Name details with following Param:"+ values);
        
        try {
            resultSet = storedProcJdbcDao.callStoredProcForList(Constants.ReportDetails_LawName_byDateRangeByBatID, values);
        } catch (StoredProcException e) {
            throw new ServiceException(e.getMessage(), e);
        }
        int count=0;

        if (resultSet != null) {
            try {

                while (resultSet.next()) {
                	
                	CrimeReportVO data = new CrimeReportVO();

                	// data.setTotalCaseNo(resultSet.getInt("totalcount"));
                    data.setBattalionName(resultSet.getString("BatName"));
                    data.setCompanyName(resultSet.getString("compName"));
                    data.setCaseNumber(resultSet.getString("caseno")); 
    				//data.setCaseDate(resultSet.getString("casedate"));
                    data.setCaseDate( Constants.getConvertionDate(resultSet.getString("casedate")));
            		
    				data.setLawName(resultSet.getString("case_law_name"));
    				data.setCaseDhara(resultSet.getString("case_dhara"));
    				data.setCaseSystemId(resultSet.getInt("case_systemid"));
    							
    				data.setTypeOfCrime(resultSet.getString("type_of_crime"));
    				data.setDistrict(resultSet.getString("district"));
    				data.setThanaName(resultSet.getString("policestationname"));

                    reportList.add(data);
                    logger.info("Database Response for Court Order Report by Time Range:"+ data);
                }
            } catch (SQLException e) {
                throw new ServiceException(e.getMessage(), e);
            }
        }

       
        
        return reportList;
    }
	*/
	
	
	
	//report by entry date range

	
	
/// Report for report by battalion ------------



	
	
// Battalion Reports Law wISE



	
//Battalion Reports Crime Type Wise



	

	
	
	
}
