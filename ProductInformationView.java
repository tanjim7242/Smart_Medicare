package com.mlab.endpoint.interfaces;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.ProductVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.exception.ServiceException;

public interface ProductInformationView {

	public ArrayList<ProductVO> getProductCategory(int customerId)
			throws ServiceException;
	
	public String createProductCategory(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException;
	

	public String createProduct(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException;
	
	
	
	public ArrayList<ProductVO> getProductList(int customerId)
			throws ServiceException;
	
	public String StackIn(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException;

	Map<String, String> getRoleNamesByMap(String customerId, String actionUser) throws ServiceException;

	String createpatientregis(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	Map<String, String> getAssetFamilyMap();

	Map<String, String> getGenderMap();

	String createDoctorRegistation(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	String createppharmacyregistaiton(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	String createclinicregistaiton(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	

	ArrayList<ProductVO> getallDoctor() throws ServiceException;


	ArrayList<ProductVO> Get_DoctorDetails(String Id) throws ServiceException;

	String createappronetappronet(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	Map<String, String> getDayMap();

	

	ArrayList<ProductVO> getDoctorApprometlist(String Id) throws ServiceException;

	
	String Create_Prescrition(String Id) throws ServiceException;

	String Create_Prescrition(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	List<HashMap<String, Object>> createMedicine(String mditype, String medicinename, String medicinmg, String medicindose,
			String medicinduration, String medicincomments, String appromentid, String uuId, String patientid)
			throws ServiceException;

	List<HashMap<String, Object>> createTest(String test, String testdis, String appromentid, String uuId,
			String patientid) throws ServiceException;

	List<HashMap<String, Object>> createAdvice(String advice, String appromentid, String uuId, String patientid)
			throws ServiceException;

	List<HashMap<String, Object>> GetMedicine(String appromentid, String uuId, String patientid)
			throws ServiceException;

	List<HashMap<String, Object>> GetTest(String appromentid, String uuId, String patientid) throws ServiceException;

	
	List<HashMap<String, Object>> GetAdvice(String appromentid, String uuId, String patientid) throws ServiceException;

	ArrayList<ProductVO> Scarchappromentid(String userName) throws ServiceException;

	String Create_Contact(ProductVO productVO, int customerId, String actionuser) throws ServiceException;

	
	
}
