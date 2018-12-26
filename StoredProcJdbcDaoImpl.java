package com.mlab.endpoint.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;



//import com.endpoint.manager.common.HtmlUtil;




import com.itextpdf.text.pdf.PdfStructTreeController.returnType;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;

public class StoredProcJdbcDaoImpl implements StoredProcJdbcDao {

    private JdbcTemplate jdbcTemplate;

    @Override
    public Map<String, Object> callStoredProc(String procName,
            MapSqlParameterSource mapSqlParameterSource)
            throws StoredProcException {
        SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate)
                .withProcedureName(procName);
        //mapSqlParameterSource = HtmlUtil.escapeValues(mapSqlParameterSource);
        Map<String, Object> simpleJdbcCallResult = simpleJdbcCall.execute(mapSqlParameterSource);
        System.out.println(simpleJdbcCallResult);
        return simpleJdbcCallResult;

    }

    public ResultSet callStoredProcForList(String procCallSql, List<String> values) throws StoredProcException {
        Connection dbConnection = null;
        CallableStatement callableStatement = null;
        ResultSet rs = null;
        try {
            dbConnection = jdbcTemplate.getDataSource().getConnection();
            callableStatement = dbConnection.prepareCall(procCallSql);
            int i = 1;
            for (String value : values) {
                callableStatement.setString(i, value);
                i++;
            }

            rs = callableStatement.executeQuery();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rs;
    }


    
    

    public String callStoredProcForListInsertUpdate(String procCallSql, List<String> values) throws StoredProcException {
        Connection dbConnection = null;
        CallableStatement callableStatement = null;
        String rs = "0";
        int rsval=0;
        try {
            dbConnection = jdbcTemplate.getDataSource().getConnection();
            callableStatement = dbConnection.prepareCall(procCallSql);
            int i = 1;
            for (String value : values) {
            	System.out.println("Values"+value);
                callableStatement.setString(i, value);
                i++;
            }

            rsval = callableStatement.executeUpdate();
            dbConnection.close();
            
            return "Success";
            
            
           // rs=String.valueOf(rsval);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
               e.printStackTrace();
               return e.getMessage();
          //  return String.valueOf(rsval);
        }
        //return rs;
    }

    
    
    public List<HashMap<String, Object>> callStoredProcForMap(String procCallSql, List<String> values) throws Exception {
  		Connection dbConnection = null;
  		CallableStatement callableStatement = null;
  		ResultSet rs = null;
  		List<HashMap<String, Object>> list = null;
  		try {
  			dbConnection = jdbcTemplate.getDataSource().getConnection();
  			callableStatement = dbConnection.prepareCall(procCallSql);
  			int i = 1;
  			for (String value : values) {
  				callableStatement.setString(i, value);
  				i++;
  			}

  			rs = callableStatement.executeQuery();
  			list = resultSetToArrayList(rs);
  			
  		} catch (SQLException e) {
  			e.printStackTrace();
  		}finally{
  			
  			if(rs != null){
  				rs.close();
  			}
  			if(dbConnection != null)
  			{
  				dbConnection.close();
  			}	
  		}
  		return list;
  	}
  	
  	public List<HashMap<String, Object>> resultSetToArrayList(ResultSet rs) throws SQLException{
  		  ResultSetMetaData md = (ResultSetMetaData) rs.getMetaData();
  		  int columns = md.getColumnCount();
  		  ArrayList<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
  		  while (rs.next()){
  		     HashMap<String,Object> row = new HashMap<String,Object>(columns);
  		     for(int i=1; i<=columns; ++i){           
  		      row.put(md.getColumnName(i),rs.getObject(i));
  		     }
  		      list.add(row);
  		  }

  		 return list;
  		}

    
    
    
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

}
