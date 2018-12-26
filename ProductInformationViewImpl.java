
package com.mlab.endpoint.Service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.ProductVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.Model.PasswordHashingUtil;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.ProductInformationView;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

public class ProductInformationViewImpl implements ProductInformationView {
	private static final Logger logger = LoggerFactory.getLogger(ProductInformationViewImpl.class);

	private StoredProcJdbcDao storedProcJdbcDao;

	public StoredProcJdbcDao getStoredProcJdbcDao() {
		return storedProcJdbcDao;
	}

	public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
		this.storedProcJdbcDao = storedProcJdbcDao;
	}

	@Override
	public ArrayList<ProductVO> getProductCategory(int customerId) throws ServiceException {
			List<HashMap<String, Object>> resultSet = null;
			List<String> values = new ArrayList<String>();
			values.add(Integer.toString(customerId));
			
			ArrayList<ProductVO> productCategoryList = new ArrayList<ProductVO>();
			
			try {
				resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Get_ProductCategory, values);
			} catch (StoredProcException e) 
			{
				throw new ServiceException(e.getMessage(), e);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (resultSet != null) {
				
				
					try
					{
	            	
	            	for (Iterator<HashMap<String, Object>> iterator = resultSet
							.iterator(); iterator.hasNext();) {
						HashMap<?, ?> map = iterator.next();
					
						ProductVO info = new ProductVO();
						
						//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
						//info.setBarcode(String.valueOf(map.get("profileId")));
						//CategoryNo,CategoryName,Description
		
						info.setCategoryNo(String.valueOf(map.get("CategoryNo")));
						info.setCategoryName(String.valueOf(map.get("CategoryName")));
						info.setCategoryDescription(String.valueOf(map.get("Description")));
						info.setCatstatus(String.valueOf(map.get("catstatus")));

						productCategoryList.add(info);

	            	}
	            } catch (Exception e) {
	            	logger.info("Error"+e.getMessage());
	                throw new ServiceException(e.getMessage(), e);
	            }

			
			}

			logger.info("returning Product Category data : " + productCategoryList);

			System.out.println("Product List:"+productCategoryList);

			return productCategoryList;
		}
	
	
	//get appromet list
	
	@Override
	public ArrayList<ProductVO> getDoctorApprometlist(String Id) throws ServiceException {
			List<HashMap<String, Object>> resultSet = null;
			List<String> values = new ArrayList<String>();
			values.add(Id);
			
			
			
			ArrayList<ProductVO> apprometview = new ArrayList<ProductVO>();
			
			try {
				
				System.out.println("Dotor Id"+values);
				
				resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.get_apprometlistbydortorid, values);
			} catch (StoredProcException e) 
			{
				throw new ServiceException(e.getMessage(), e);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (resultSet != null) {
				
				
					try
					{
	            	
	            	for (Iterator<HashMap<String, Object>> iterator = resultSet
							.iterator(); iterator.hasNext();) {
						HashMap<?, ?> map = iterator.next();
					
						ProductVO info = new ProductVO();
						
						//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
						//info.setBarcode(String.valueOf(map.get("profileId")));
						//CategoryNo,CategoryName,Description
						
						info.setUserName(String.valueOf(map.get("username")));
						info.setDay(String.valueOf(map.get("day")));
						info.setDate(String.valueOf(map.get("date")));
						info.setTime(String.valueOf(map.get("time")));
						info.setFirstname(String.valueOf(map.get("first_name")));
						info.setMiddlename(String.valueOf(map.get("middle_name")));
						
						
						info.setUuId(String.valueOf(map.get("doctorid")));
						info.setPatientid(String.valueOf(map.get("username")));
						info.setAppromentid(String.valueOf(map.get("Id")));
						
						
					//	info.setTime(String.valueOf(map.get("time")));
						//info.setTime(String.valueOf(map.get("time")));
						
						
		

						apprometview.add(info);

	            	}
	            } catch (Exception e) {
	            	logger.info("Error"+e.getMessage());
	                throw new ServiceException(e.getMessage(), e);
	            }

			
			}

			logger.info("returning Product Category data : " + apprometview);

			System.out.println("Product List:"+apprometview);

			return apprometview;
		}
	
	
	//
	
	
	
	
	@Override
	public ArrayList<ProductVO> getallDoctor() throws ServiceException {
			List<HashMap<String, Object>> resultSet = null;
			List<String> values = new ArrayList<String>();
			//values.add(Integer.toString(customerId));
			
			ArrayList<ProductVO> alldoctorlist = new ArrayList<ProductVO>();
			
			try {
				resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.get_doctorlist, values);
			} catch (StoredProcException e) 
			{
				throw new ServiceException(e.getMessage(), e);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (resultSet != null) {
				
				
					try
					{
	            	
	            	for (Iterator<HashMap<String, Object>> iterator = resultSet
							.iterator(); iterator.hasNext();) {
						HashMap<?, ?> map = iterator.next();
					
						ProductVO info = new ProductVO();
						
						//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
						//info.setBarcode(String.valueOf(map.get("profileId")));
						//CategoryNo,CategoryName,Description
						
						
						
						info.setUuId(String.valueOf(map.get("doctorrid")));
						info.setFirstname(String.valueOf(map.get("first_name")));
						info.setLastname(String.valueOf(map.get("middle_name")));
						info.setMiddlename(String.valueOf(map.get("last_name")));
						info.setMiddlename(String.valueOf(map.get("last_name")));
						
						info.setPhone(String.valueOf(map.get("phoneno")));
						
						info.setEmail(String.valueOf(map.get("email")));
					
						
						
						
						

						alldoctorlist.add(info);

	            	}
	            } catch (Exception e) {
	            	logger.info("Error"+e.getMessage());
	                throw new ServiceException(e.getMessage(), e);
	            }

			
			}

			logger.info("returning Product Category data : " + alldoctorlist);

			System.out.println("Product List:"+alldoctorlist);

			return alldoctorlist;
		}

	@Override
	public ArrayList<ProductVO> Get_DoctorDetails(String Id) throws ServiceException {
			List<HashMap<String, Object>> resultSet = null;
			List<String> values = new ArrayList<String>();
			values.add(Id);
			
			ArrayList<ProductVO> alldoctorlist = new ArrayList<ProductVO>();
			
			try {
				resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Get_DoctorDetails, values);
			} catch (StoredProcException e) 
			{
				throw new ServiceException(e.getMessage(), e);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (resultSet != null) {
				
				
					try
					{
	            	
	            	for (Iterator<HashMap<String, Object>> iterator = resultSet
							.iterator(); iterator.hasNext();) {
						HashMap<?, ?> map = iterator.next();
					
						ProductVO info = new ProductVO();
						
						//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
						//info.setBarcode(String.valueOf(map.get("profileId")));
						//CategoryNo,CategoryName,Description
						
						
						
						info.setUuId(String.valueOf(map.get("doctorrid")));
						info.setSpecialty(String.valueOf(map.get("specialty")));
						info.setTitle(String.valueOf(map.get("title")));
						info.setBMDCRegNo(String.valueOf(map.get("BMDCRegNo")));
						info.setDescriptionprofessionalStatement(String.valueOf(map.get("descriptionprofessionalStatement")));
						
						info.setDegreeothespecification(String.valueOf(map.get("degreeothespecification")));
						info.setOthertranning(String.valueOf(map.get("othertranning")));
						
						info.setEmail(String.valueOf(map.get("email")));
					
						
						
						
						

						alldoctorlist.add(info);

	            	}
	            } catch (Exception e) {
	            	logger.info("Error"+e.getMessage());
	                throw new ServiceException(e.getMessage(), e);
	            }

			
			}

			logger.info("returning Product Category data : " + alldoctorlist);

			System.out.println("alldoctorlistt:"+alldoctorlist);

			return alldoctorlist;
		}

	
	
	
	
	
	
	
	

	@Override
	public String createProductCategory(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException {
		// TODO Auto-generated method stub
		
	List<String> values = new ArrayList<String>();
		
		values.add(productVO.getCategoryName());
		values.add(productVO.getCatstatus());
		values.add(productVO.getCategoryDescription());
		values.add(String.valueOf(customerId));
		values.add(actionuser);
		
		
		String res=null;
		try {
			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_ProductCategory, values);
			  	logger.info("Product Category Created Successfully by:");

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;

		
		
		
	}

	
	@Override
	public String createProduct(ProductVO productVO, int customerId,
			String actionuser) throws ServiceException 
	{
		// TODO Auto-generated method stub
		
	List<String> values = new ArrayList<String>();
		
		values.add(productVO.getCategoryNo());
		values.add(productVO.getBarcode());
		values.add(productVO.getProductCode());
		values.add(productVO.getProductname());
		values.add(productVO.getProductDescription());		
		values.add(productVO.getUnitPrice());
		values.add(productVO.getStocksOnHand());
		values.add(productVO.getSupplieruid());
		values.add(productVO.getProductwarrenty());
		values.add(String.valueOf(customerId));
		values.add(actionuser);
		
		
		String res=null;
		try {
			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Product, values);
			  	logger.info("Product Category Created Successfully by:");

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;

		

		
		
			}

	@Override
	public ArrayList<ProductVO> getProductList(int customerId)
	
			throws ServiceException {
		// TODO Auto-generated method stub
		
		
		List<HashMap<String, Object>> resultSet = null;
		List<String> values = new ArrayList<String>();
		values.add(Integer.toString(customerId));
		
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		try {
			resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Get_ProductList, values);
		} catch (StoredProcException e) 
		{
			throw new ServiceException(e.getMessage(), e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (resultSet != null) {
			
			
				try
				{
            	
            	for (Iterator<HashMap<String, Object>> iterator = resultSet
						.iterator(); iterator.hasNext();) {
					HashMap<?, ?> map = iterator.next();
				
					ProductVO info = new ProductVO();
					
					//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
					//info.setBarcode(String.valueOf(map.get("profileId")));
					//CategoryNo,CategoryName,Description
	
					info.setProductNo(String.valueOf(map.get("ProductNo")));
					
					info.setProductCode(String.valueOf(map.get("ProductCode")));
					info.setProductDescription(String.valueOf(map.get("Description")));
					info.setBarcode(String.valueOf(map.get("Barcode")));
					info.setUnitPrice(String.valueOf(map.get("UnitPrice")));
					info.setStocksOnHand(String.valueOf(map.get("StocksOnHand")));
					info.setCategoryNo(String.valueOf(map.get("CategoryNo")));
					info.setSupplieruid(String.valueOf(map.get("supplieruid")));
					info.setProductwarrenty(String.valueOf(map.get("warrenty")));
					info.setCategoryName(String.valueOf(map.get("CategoryName")));
					info.setCategoryNo(String.valueOf(map.get("CategoryNo")));
					
					
					
					//'ProductNo,ProductCode,Description,Barcode,UnitPrice,StocksOnHand,CategoryNo,supplieruid,warrenty,createby,createdate,customerid

					productList.add(info);

            	}
            } catch (Exception e) {
            	logger.info("Error"+e.getMessage());
                throw new ServiceException(e.getMessage(), e);
            }

		
		}

		logger.info("returning Product Category data : " + productList);

		System.out.println("Product List:"+productList);

		return productList;
		
		
	}

	@Override
	public String StackIn(ProductVO productVO, int customerId, String actionuser)
			throws ServiceException {
		
		// TODO Auto-generated method stub
		
		int stockInH=Integer.valueOf( productVO.getStocksOnHand())+Integer.valueOf(productVO.getNewquantity());
		int newstock=Integer.valueOf(productVO.getTotalstock());
		if (newstock==stockInH)
			
		{

			List<String> values = new ArrayList<String>();
				
				values.add(productVO.getProductNo());
				values.add(productVO.getProductCode());
				values.add(productVO.getNewquantity());
				values.add(String.valueOf(stockInH));
				values.add(String.valueOf(customerId));
				values.add(actionuser);
				
				
				String res=null;
				try {
					  	
						res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.UpdateStockIn_Product, values);
					  	

				} catch (StoredProcException e) {
					throw new ServiceException(e.getMessage(), e);
				}

				return res;


			
		}
		else
		{
		 return "invalid total Stock";	
		}
					
		
	
	}
	//role name
	
	public Map<String, String> getRoleNamesByMap(String customerId,String actionUser) throws ServiceException {
        List<HashMap<String, Object>> resultSet = null;
        List<String> values = new ArrayList<String>();
      
        Map<String, String> policy = new HashMap<>();
       //policy.put(" ", "None");

        
       // bcountryId,basecountryname
        
        try {
            resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Get_AllRoleNameByMap, values);
        } catch ( Exception e) {
            throw new ServiceException(e.getMessage(), e);
        }

        if (resultSet != null)
        {
            try {
         
            
            	
            	for (Iterator<HashMap<String, Object>> iterator = resultSet
        						.iterator(); iterator.hasNext();) 
            	{
        				
            		
            		    HashMap<?, ?> map = iterator.next();
        					String roleId=String.valueOf(map.get("role_id"));
        					String roleName=String.valueOf(map.get("role_name"));
        					
        					
        					policy.put(roleId,roleName );
            	}
            	
            }catch(Exception e)
            {
            	logger.info("Error In Get All Roles List By Map:"+e.getMessage());
            }
        }

      
        System.out.println("Get ole"+policy);
        return policy;
    }
    
//doctor departmetn list
	
	@Override
	public  Map<String,String> getAssetFamilyMap()
	 {
	  
	 Map<String,String> AssetFamilyList=new HashMap<>();

	
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" Allergy &amp Immunology", "Allergy &amp Immunology ");
	   AssetFamilyList.put(" Anesthesia", "Anesthesia ");
	   AssetFamilyList.put(" Cardiology (Heart, Cardiac Surgery, Cardiovascular, Hypertension, Blood Pressure)", "Cardiology (Heart, Cardiac Surgery, Cardiovascular, Hypertension, Blood Pressure) ");
	   AssetFamilyList.put(" Colorectal Surgery (Surgery of Anal Canal, Rectum, etc.)", "Colorectal Surgery (Surgery of Anal Canal, Rectum, etc.) ");
	   AssetFamilyList.put(" Dentistry (Dental, Orthodontics, Maxillofacial Surgery, Scaling)", "Dentistry (Dental, Orthodontics, Maxillofacial Surgery, Scaling) ");
	   AssetFamilyList.put(" Dermatology (Skin, Venereology, Sexual, Hair, Allergy)", "Dermatology (Skin, Venereology, Sexual, Hair, Allergy) ");
	   AssetFamilyList.put(" Endocrinology (Diabetes, Hormones, Thyroid, etc.)<", "Endocrinology (Diabetes, Hormones, Thyroid, etc.)< ");
	   AssetFamilyList.put(" ENT (Ear, Nose &amp; Throat, Otorhinolaryngology)", "ENT (Ear, Nose &amp; Throat, Otorhinolaryngology) ");
	   AssetFamilyList.put(" Gastroenterology (Stomach, Pancreas and Intestine)", "Gastroenterology (Stomach, Pancreas and Intestine) ");
	   AssetFamilyList.put(" General Physician (All or any common diseases and health issues)", "General Physician (All or any common diseases and health issues) ");
	   AssetFamilyList.put(" General Surgery (Incision, Operation)", "General Surgery (Incision, Operation) ");
	   AssetFamilyList.put(" Allergy &amp; Immunology", "Allergy &amp; Immunology ");
	   AssetFamilyList.put(" Gynaecologic Oncology (Cancer of Female Reproductive System)", "Gynaecologic Oncology (Cancer of Female Reproductive System) ");
	   AssetFamilyList.put(" Gynaecology and Obstetrics (Pregnancy, Menstrual, Uterus, Female)", "Gynaecology and Obstetrics (Pregnancy, Menstrual, Uterus, Female) ");
	   AssetFamilyList.put(" Haematology (Blood related diseases)", "Haematology (Blood related diseases) ");
	   AssetFamilyList.put(" Hepato-Biliary- Pancreatic Surgery", "Hepato-Biliary- Pancreatic Surgery ");
	   AssetFamilyList.put(" Hepatology (Liver, Gallbladder, Biliary system)", "Hepatology (Liver, Gallbladder, Biliary system) ");
	   AssetFamilyList.put(" nfectious Diseases", "nfectious Diseases ");
	   AssetFamilyList.put(" Infertility", "Infertility ");
	   AssetFamilyList.put(" Medicine (All Diseases of Adults)", "Medicine (All Diseases of Adults) ");
	   AssetFamilyList.put(" Neonatology (New Born Issues)", "Neonatology (New Born Issues) ");
	   AssetFamilyList.put(" Nephrology (Kidney, Ureter, Urinary Bladder)", "Nephrology (Kidney, Ureter, Urinary Bladder) ");
	   AssetFamilyList.put("Neuromedicine (Brain, Spinal Cord, Nerve)", "Neuromedicine (Brain, Spinal Cord, Nerve)");
	   AssetFamilyList.put(" Nutritionist (Food, Diet, Weight Management)", "Nutritionist (Food, Diet, Weight Management) ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" Anesthesia", "Anesthesia ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	   AssetFamilyList.put(" specialty", "specialty ");
	return AssetFamilyList;
	   
	  
	 } 
	 
	
	@Override
	public  Map<String,String> getGenderMap()
	 {
	  
	 Map<String,String> AssetFamilyList=new HashMap<>();

	
	  
	 
	   AssetFamilyList.put(" Male", "Male ");
	   AssetFamilyList.put(" female", "female ");
	   AssetFamilyList.put(" Others", "Others ");
	return AssetFamilyList;
	   
	  
	 } 
	
	
	@Override
	public  Map<String,String> getDayMap()
	 {
	  
	 Map<String,String> day=new HashMap<>();

	
	  
	 
	 day.put(" Saturday", "Saturday ");
	 day.put(" Sunday", "Sunday ");
	 day.put(" Monday", "Monday ");
	  day.put(" Tusday", "Tusday ");
	 day.put(" Wednesday", "Wednesday ");
	 day.put(" Trusday", "Trusday ");
	 day.put("Friday", "Friday ");
	
	return day;
	   
	  
	 } 
	 
	

	
//patient registation system 
	
	
	@Override
	public String createpatientregis(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException {
		// TODO Auto-generated method stub
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
	List<String> values = new ArrayList<String>();
	String attachmentuuid = UUID.randomUUID().toString();
		
		values.add(productVO.getFirstname());
		values.add(productVO.getMiddlename());
		values.add(productVO.getLastname());
		values.add(productVO.getGender());
		values.add(productVO.getUserName());
		
	
	
		try {
			values.add(hashUtil.generateStorngPasswordHash(productVO.getCurrentPassword()));
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
			return "Error:"+e1.getMessage();
			// TODO Auto-generated catch block
			
		} catch (InvalidKeySpecException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return "Error:"+e1.getMessage();
		}
		values.add(productVO.getBirthday());
		values.add(productVO.getEmail());
		values.add(productVO.getPhone());

	
		
	
		
	
		//values.add(productVO.getCatstatus());
	//	values.add(productVO.getRolename());
		values.add(productVO.getHomeadressone());
		
		values.add(productVO.getDristict());
		values.add(productVO.getThana());
		values.add(productVO.getPost());
		
		values.add(productVO.getCatstatus());
	//	values.add(productVO.getCategoryDescription());
		values.add(String.valueOf(customerId));
		values.add(productVO.getCategoryName());
		values.add(attachmentuuid);
		values.add(productVO.getBarcode());
		//values.add(productVO.getAge());
	//	values.add(attachmentuuid);
		
		
		String res=null;
		try {
			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Patient_Registation, values);
			  	logger.info("Product Category Created Successfully by:");

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;

		
		
		
	}

	
	@Override
	public List<HashMap<String, Object>>  createMedicine(String mditype,String medicinename,String medicinmg,String medicindose,String medicinduration,String medicincomments,String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		// TODO Auto-generated method stub
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
	List<String> values = new ArrayList<String>();
	String attachmentuuid = UUID.randomUUID().toString();
	values.add(mditype);
	values.add(medicinename);
	values.add(medicinmg);
	values.add(medicindose);
	values.add(medicinduration);
	values.add(medicincomments);
	values.add(appromentid);
	values.add(uuId);
	values.add(patientid);
	
		
	
		
	String res1=null;
		try {
			System.out.println(values);
			  	res1=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Medicine_Registation, values); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}
		
		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Medicine_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	//get Medicine 
	
	
	
	@Override
	public List<HashMap<String, Object>>  GetMedicine(String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		// TODO Auto-generated method stub
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();

		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Medicine_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	
	
	
//create test
	//createAdvice
	
	@Override
	public List<HashMap<String, Object>>  createTest(String test,String testdis,String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		// TODO Auto-generated method stub
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
	List<String> values = new ArrayList<String>();
	String attachmentuuid = UUID.randomUUID().toString();
	values.add(test);
	values.add(testdis);
	values.add(appromentid);
	values.add(uuId);
	values.add(patientid);
	
		
	
		
	String res1=null;
		try {
			System.out.println(values);
			  	res1=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Test_Registation, values); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}
		
		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Test_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	
	//get Test
	
	@Override
	public List<HashMap<String, Object>>  GetTest(String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		// TODO Auto-generated method stub
		
		
		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Test_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	
	
	
	
	
	//advice
	
	@Override
	public List<HashMap<String, Object>>  createAdvice(String advice,String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		// TODO Auto-generated method stub
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
	List<String> values = new ArrayList<String>();
	String attachmentuuid = UUID.randomUUID().toString();
	
	values.add(advice);
	values.add(appromentid);
	values.add(uuId);
	values.add(patientid);
	
		
	
		
	String res1=null;
		try {
			System.out.println(values);
			  	res1=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Advice_Registation, values); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}
		
		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Advice_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	
	//get advice 
	
	

	@Override
	public List<HashMap<String, Object>>  GetAdvice(String appromentid,String uuId,String patientid)
    
			throws ServiceException {
		
		
		List<String> values1 = new ArrayList<String>();

		List<HashMap<String, Object>> res=null;
		try {
		
values1.add(appromentid);

values1.add(uuId);
values1.add(patientid);	
			  	res=storedProcJdbcDao.callStoredProcForMap(Constants.Get_Advice_Registation, values1); 
			  	logger.info("Product Category Created Successfully by:");

		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}


		return res;

		
		
		
	}
	
	
	
	
	
	
	
	@Override
	public String createappronetappronet(ProductVO productVO, int customerId,String actionuser)
			throws ServiceException {
		// TODO Auto-generated method stub
		
		
		PasswordHashingUtil hashUtil = new PasswordHashingUtil();
	List<String> values = new ArrayList<String>();
		
		values.add(productVO.getDay());
		values.add(productVO.getDate());
		values.add(productVO.getTime());
		values.add(productVO.getReason());
		values.add(productVO.getDoctorname());
		values.add(actionuser);
	
		
	
		
		String res=null;
		try {
			  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Patient_Comfirm_approment, values);
			  	logger.info("Product Category Created Successfully by:");

		} catch (StoredProcException e) {
			throw new ServiceException(e.getMessage(), e);
		}

		return res;

		
		
		
	}

	
	
	
	//Doctor registation system 
	
	
		@Override
		public String createDoctorRegistation(ProductVO productVO, int customerId,String actionuser)
				throws ServiceException {
			// TODO Auto-generated method stub
			PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		
		String attachmentuuid = UUID.randomUUID().toString();
			
			values.add(productVO.getFirstname());
			values.add(productVO.getMiddlename());
			values.add(productVO.getLastname());
			values.add(productVO.getGender());
			values.add(productVO.getUserName());
		
			try {
				values.add(hashUtil.generateStorngPasswordHash(productVO.getCurrentPassword()));
			} catch (NoSuchAlgorithmException e1) {
				e1.printStackTrace();
				return "Error:"+e1.getMessage();
				// TODO Auto-generated catch block
				
			} catch (InvalidKeySpecException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "Error:"+e1.getMessage();
			}
			values.add(productVO.getTitle());
			values.add(productVO.getSpecialty());
			values.add(productVO.getBMDCRegNo());
			
			values.add(productVO.getEmail());
			values.add(productVO.getPhone());
			values.add(productVO.getThana());
			values.add(productVO.getDescriptionprofessionalStatement());
			
			values.add(productVO.getDegreeothespecification());
			values.add(productVO.getOthertranning());
			values.add(productVO.getCreated_by());
			values.add(productVO.getCreate_date());
			
			values.add(String.valueOf(customerId));
			
			values.add(actionuser);
			values.add(attachmentuuid);
		//	values.add(productVO.getBarcode());
			
			
			String res=null;
			try {
				  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Doctor_Registation, values);
				  	logger.info("Product Category Created Successfully by:");

			} catch (StoredProcException e) {
				throw new ServiceException(e.getMessage(), e);
			}

			return res;

			
			
			
		}
	
		//
		@Override
		public String Create_Prescrition(ProductVO productVO, int customerId,String actionuser)
				throws ServiceException {
			// TODO Auto-generated method stub
			PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		
		String attachmentuuid = UUID.randomUUID().toString();
		values.add(productVO.getPatient_cc());
		values.add(productVO.getPatient_weight());
		values.add(productVO.getPatient_bp());
		values.add(productVO.getOex());
		values.add(productVO.getPd());
		//	values.add(actionuser);
			values.add(attachmentuuid);
		//	values.add(productVO.getBarcode());
			
			values.add(productVO.getMditype());
			values.add(productVO.getMedicinename());
			values.add(productVO.getMedicinmg());
			values.add(productVO.getMedicindose());
			values.add(productVO.getOex());
			values.add(productVO.getPd());
			values.add(productVO.getAppromentid());
			
			
			String res=null;
			try {
				  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Prescrition, values);
				  	logger.info("Product Category Created Successfully by:");

			} catch (StoredProcException e) {
				throw new ServiceException(e.getMessage(), e);
			}

			return res;

			
			
			
		}
	
		//create contact 
		
		@Override
		public String Create_Contact(ProductVO productVO, int customerId,String actionuser)
				throws ServiceException {
			// TODO Auto-generated method stub
			PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
		
			String attachmentuuid = UUID.randomUUID().toString();
			values.add(productVO.getFirstname());
		
			values.add(productVO.getEmail());
			values.add(productVO.getPhone());
			values.add(productVO.getSubject());
			values.add(productVO.getTestdis());
			
			
			System.out.println("Meaagae"+productVO.getTestdis());
			
			String res=null;
			try {
				  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Contact, values);
				  	logger.info("Product Category Created Successfully by:");

			} catch (StoredProcException e) {
				throw new ServiceException(e.getMessage(), e);
			}

			return res;

			
			
			
		}
	
	
		
		//pharmacy regsitation
		
		
		@Override
		public String createppharmacyregistaiton(ProductVO productVO, int customerId,String actionuser)
				throws ServiceException {
			// TODO Auto-generated method stub
			PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
			
		values.add(productVO.getFirstname());
		values.add(productVO.getMiddlename());
		values.add(productVO.getLastname());
		values.add(productVO.getGender());
		values.add(productVO.getUserName());
	
		try {
			values.add(hashUtil.generateStorngPasswordHash(productVO.getCurrentPassword()));
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
			return "Error:"+e1.getMessage();
			// TODO Auto-generated catch block
			
		} catch (InvalidKeySpecException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return "Error:"+e1.getMessage();
		}
//		values.add(productVO.getBirthday());
		values.add(productVO.getEmail());
		values.add(productVO.getPhone());
		values.add(productVO.getHomeadressone());
		values.add(productVO.getDristict());
		
		
		values.add(productVO.getThana());
		values.add(productVO.getPost());
		values.add(productVO.getBMDCRegNo());
		values.add(productVO.getBarcode());
		
		values.add(productVO.getCategoryName());
		//values.add(productVO.getCatstatus());
	//	values.add(productVO.getRolename());
		
		values.add(productVO.getCatstatus());
	//	values.add(productVO.getCategoryDescription());
		values.add(String.valueOf(customerId));
		
		values.add(actionuser);
		
			
			
			String res=null;
			try {
				  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Pharmcy_Registation, values);
				  	logger.info("Product Category Created Successfully by:");

			} catch (StoredProcException e) {
				throw new ServiceException(e.getMessage(), e);
			}

			return res;

			
			
			
		}
		
		
		
		
		
		
		
		//clinic registation
		
		
		
		@Override
		public String createclinicregistaiton(ProductVO productVO, int customerId,String actionuser)
				throws ServiceException {
			// TODO Auto-generated method stub
			PasswordHashingUtil hashUtil = new PasswordHashingUtil();
		List<String> values = new ArrayList<String>();
			
			values.add(productVO.getFirstname());
			values.add(productVO.getMiddlename());
			values.add(productVO.getLastname());
			values.add(productVO.getGender());
			values.add(productVO.getUserName());
		
			try {
				values.add(hashUtil.generateStorngPasswordHash(productVO.getCurrentPassword()));
			} catch (NoSuchAlgorithmException e1) {
				e1.printStackTrace();
				return "Error:"+e1.getMessage();
				// TODO Auto-generated catch block
				
			} catch (InvalidKeySpecException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "Error:"+e1.getMessage();
			}
	//		values.add(productVO.getBirthday());
			values.add(productVO.getEmail());
			values.add(productVO.getPhone());
			values.add(productVO.getHomeadressone());
			values.add(productVO.getDristict());
			
			
			values.add(productVO.getThana());
			values.add(productVO.getPost());
			values.add(productVO.getBMDCRegNo());
			values.add(productVO.getBarcode());
			
			values.add(productVO.getCategoryName());
			//values.add(productVO.getCatstatus());
		//	values.add(productVO.getRolename());
			
			values.add(productVO.getCatstatus());
		//	values.add(productVO.getCategoryDescription());
			values.add(String.valueOf(customerId));
			
			values.add(actionuser);
			
			
			
			String res=null;
			try {
				  	res=storedProcJdbcDao.callStoredProcForListInsertUpdate(Constants.Create_Clinic_Registation, values);
				  	logger.info("Product Category Created Successfully by:");

			} catch (StoredProcException e) {
				throw new ServiceException(e.getMessage(), e);
			}

			return res;

			
			
			
		}

		@Override
		public String Create_Prescrition(String Id) throws ServiceException {
			// TODO Auto-generated method stub
			return null;
		}
		
		//scarchbylatestapprometn id 
		
		
		@Override
		public ArrayList<ProductVO> Scarchappromentid(String userName) throws ServiceException {
				List<HashMap<String, Object>> resultSet = null;
				List<String> values = new ArrayList<String>();
				values.add(userName);
				
				ArrayList<ProductVO> alldlist = new ArrayList<ProductVO>();
				
				try {
					resultSet = storedProcJdbcDao.callStoredProcForMap(Constants.Search_apprometnid, values);
				} catch (StoredProcException e) 
				{
					throw new ServiceException(e.getMessage(), e);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				if (resultSet != null) {
					
					
						try
						{
		            	
		            	for (Iterator<HashMap<String, Object>> iterator = resultSet
								.iterator(); iterator.hasNext();) {
							HashMap<?, ?> map = iterator.next();
						
							ProductVO info = new ProductVO();
							
							//info.setBarcode(Integer.parseInt(String.valueOf(map.get("profileId"))));
							//info.setBarcode(String.valueOf(map.get("profileId")));
							//CategoryNo,CategoryName,Description
							
							info.setAppromentid(String.valueOf(map.get("Id")));
							info.setUuId(String.valueOf(map.get("doctorid")));
							info.setTime(String.valueOf(map.get("time")));
							info.setDate(String.valueOf(map.get("date")));
							info.setStatus(String.valueOf(map.get("status")));
							info.setDay(String.valueOf(map.get("day")));
							info.setUserName(String.valueOf(map.get("username")));
							info.setUuId(String.valueOf(map.get("doctorid")));
							info.setFirstname(String.valueOf(map.get("first_name")));
							info.setLastname(String.valueOf(map.get("middle_name")));
							info.setMiddlename(String.valueOf(map.get("last_name")));
							info.setMiddlename(String.valueOf(map.get("last_name")));
							
							info.setPhone(String.valueOf(map.get("phoneno")));
							
							info.setEmail(String.valueOf(map.get("email")));
							
							info.setUuId(String.valueOf(map.get("doctorid")));
							info.setSpecialty(String.valueOf(map.get("specialty")));
							info.setTitle(String.valueOf(map.get("title")));
							info.setBMDCRegNo(String.valueOf(map.get("BMDCRegNo")));
							info.setDescriptionprofessionalStatement(String.valueOf(map.get("descriptionprofessionalStatement")));
							
							info.setDegreeothespecification(String.valueOf(map.get("degreeothespecification")));
							info.setOthertranning(String.valueOf(map.get("othertranning")));
							
							info.setEmail(String.valueOf(map.get("email")));
							
							info.setTest(String.valueOf(map.get("test")));
							info.setTestdis(String.valueOf(map.get("testdis")));
							info.setMditype(String.valueOf(map.get("medicine_type")));
							
							
						
							
//							info.setUuId(String.valueOf(map.get("doctorrid")));
//							info.setSpecialty(String.valueOf(map.get("specialty")));
//							info.setTitle(String.valueOf(map.get("title")));
//							info.setBMDCRegNo(String.valueOf(map.get("BMDCRegNo")));
//							info.setDescriptionprofessionalStatement(String.valueOf(map.get("descriptionprofessionalStatement")));
//							
//							info.setDegreeothespecification(String.valueOf(map.get("degreeothespecification")));
//							info.setOthertranning(String.valueOf(map.get("othertranning")));
//							
//							info.setEmail(String.valueOf(map.get("email")));
						
							
							
							  
							

							alldlist.add(info);

		            	}
		            } catch (Exception e) {
		            	logger.info("Error"+e.getMessage());
		                throw new ServiceException(e.getMessage(), e);
		            }

				
				}

				logger.info("returning Product Category data : " + alldlist);

				System.out.println("alldoctorlistt:"+alldlist);

				return alldlist;
			}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		


}


