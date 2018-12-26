package com.mlab.endpoint.util;

import java.util.Arrays;

public class Constants {
	
	public static final String create_user="{call create_user(?,?,?,?,?,?,?,?)}";
	public static final String Update_User_Info="{call Update_User_Info(?,?,?,?,?,?,?)}";
	public static final String Update_User_Type="{call Update_User_Type(?,?,?,?)}";
	public static final String Update_User_Password="{call Update_User_Password(?,?,?,?)}";
	
	public static final String get_role="{call get_role()}";
	public static final String get_password="{call get_password(?)}";
	public static final String get_user_by_name="{call get_user_by_name(?)}";
	public static final String validate_user_login="{call validate_user_login(?,?)}";
	public static final String reset_password="{call reset_password(?,?)}";
	public static final String get_All_users="{call get_AllUsers()}";    
	
	
	//##############################
	
	public static final String Get_ProductCategory="{call get_productcategory(?)}";
	
	public static final String get_apprometlistbydortorid="{call get_apprometlistbydortorid(?)}";
	
	public static final String get_doctorlist="{call get_doctorlist()}";
	
	public static final String Search_apprometnid="{call Search_apprometnid(?)}";
	public static final String Get_DoctorDetails="{call Get_DoctorDetails(?)}";
	public static final String Create_ProductCategory="{call CreateCategory(?,?,?,?,?)}";
	public static final String Create_Product="{call CreateProduct(?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String Get_ProductList="{call get_productlist(?)}";
	public static final String UpdateStockIn_Product="{call UpdateStockIn_Product(?,?,?,?,?,?)}";
	public static final String Customer_By_Mobile_ID="{call get_CustomerbyMobile_ID(?,?,?)}";
	public static final String Get_LIST_OF_CUSTOMER="{call get_CustomerList(?)}";
	public static final String Create_Customer="{call Create_Customer(?,?,?,?,?,?,?,?)}";
	
	public static final String Get_AllRoleNameByMap="{call get_role()}";
	
	
	public static final String Create_Patient_Registation="{call Create_Patient_Registation(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String Create_Patient_Comfirm_approment="{call Create_Patient_Comfirm_approment(?,?,?,?,?,?)}";
			
	public static final String Create_Doctor_Registation="{call Create_Doctor_Registation(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	
	public static final String Create_Clinic_Registation="{call Create_Clinic_Registation(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String Create_Pharmcy_Registation="{call Create_Pharmcy_Registation(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	
	public static final String Create_Medicine_Registation="{call Create_Medicine_Registation(?,?,?,?,?,?,?,?,?)}";
	
	public static final String Create_Test_Registation="{call Create_Test_Registation(?,?,?,?,?)}";
	
	
	public static final String Get_Medicine_Registation="{call get_Micine_Registation(?,?,?)}";
	
	public static final String Get_Test_Registation="{call Get_Test_Registation(?,?,?)}";
	
	public static final String Create_Advice_Registation="{call Create_Advice_Registation(?,?,?,?)}";
	
	public static final String Get_Advice_Registation="{call Get_Advice_Registation(?,?,?)}";
	
	
	public static final String Create_Prescrition="{call Create_Prescrition(?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	

	public static final String Create_Contact="{call Create_Contact(?,?,?,?,?)}";
	
	
public static  String getConvertionDate( String inv)
	
	{
		StringBuffer ostr = new StringBuffer();
		
		char finalval;
		
		//logger.info("Calling Date"+inv);
		
		
		//StringUtils.isBlank(str)
		
		
		
		if (inv ==null )
		{
			
			return " ";
		}
		else
		{
		for (int i = 0;i < inv.length(); i++)
		{
			finalval=inv.charAt(i);
			String valueOfchar = String.valueOf(finalval);
			
			
			if ( valueOfchar.equals("0"))
			  {
				
				ostr.append("০");
			  }
			
			else if ( valueOfchar.equals("1"))
		  {
			
			ostr.append("১");
		  }
		else if(valueOfchar.equals("2"))
		
		{
			
			ostr.append("২");
			
		}
		else if(valueOfchar.equals("3"))
			
		{
			
			ostr.append("৩");
			
		}
		
		else if(valueOfchar.equals("4"))
			
		{
			
			ostr.append("৪");
			
		}
		
		
else if(valueOfchar.equals("5"))
			
		{
			
			ostr.append("৫");
			
		}
		
else if(valueOfchar.equals("6"))
	
{
	
	ostr.append("৬");
	
}
		
else if(valueOfchar.equals("7"))
	
{
	
	ostr.append("৭");
	
}
		
else if(valueOfchar.equals("8"))
	
{
	
	ostr.append("৮");
	
}
		
else if(valueOfchar.equals("9"))
	
{
	
	ostr.append("৯");
	
}
else
{
	ostr.append(valueOfchar);
}
		
 }
		}
		
		
	//logger.info("Return Date"+ostr.toString());
		
		return ostr.toString();
	}
	
}
