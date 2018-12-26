package com.mlab.endpoint.interfaces;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;

import com.mlab.endpoint.exception.StoredProcException;

public interface StoredProcJdbcDao {
	
public Map<String, Object> callStoredProc(String procName, MapSqlParameterSource mapSqlParameterSource) throws StoredProcException;
	
	public ResultSet callStoredProcForList(String procCallSql,List<String> values) throws StoredProcException;

	public String callStoredProcForListInsertUpdate(String procCallSql,List<String> values) throws StoredProcException;
	public List<HashMap<String, Object>> callStoredProcForMap(String procCallSql,List<String> values) throws StoredProcException, Exception;

	
}
