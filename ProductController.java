package com.mlab.endpoint.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.TableView;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mlab.endpoint.Model.AttachedFile;
import com.mlab.endpoint.Model.ProductVO;
import com.mlab.endpoint.Model.SalesReport;
import com.mlab.endpoint.Model.ReportRequestVO;
import com.mlab.endpoint.Model.CustomerVO;
import com.mlab.endpoint.Service.CustomerInformationImpl;
import com.mlab.endpoint.Service.ProductRegistrationImp;
import com.mlab.endpoint.exception.ServiceException;
import com.mlab.endpoint.interfaces.ProductInformationView;
import com.mlab.endpoint.interfaces.Registration;
import com.mlab.endpoint.interfaces.DropDownMenuData;
import com.mlab.endpoint.util.Constants;

@Controller
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);


    
    @Autowired
    private Registration caseRegistration;
    
    @Autowired
    private ProductInformationView productinformationView;
    
    @Autowired
    private CustomerInformationImpl customerinformtion;
    
    
    @Value("${upload.folder}")
    private String uploadfilesothers;
    
    @Autowired
    private DropDownMenuData menuData;

    @ModelAttribute("SalesReport")
    private SalesReport constructComplainReport()
    {
     return new SalesReport();	
    }
    
   
    
    @ModelAttribute("attachedFile")
    private AttachedFile constractAttachedFile() {

        return new AttachedFile();
    }


    @ModelAttribute("customerVO")
    private CustomerVO constractCustomerVO() {

        return new CustomerVO();
    }
    

    @ModelAttribute("productVO")
    private ProductVO constractProductVO() {

        return new ProductVO();
    }
    

    
 @RequestMapping(value = " /product/manageproductcategory.do", method = RequestMethod.POST)
 public String ManageProductCategory(@ModelAttribute("productVO") ProductVO productVO, Locale locale, Model model,HttpSession session)
		throws ServiceException {
	 
	 
	 
			return "productsCategory";
    
}

 
 @RequestMapping(value = "/product/manageproductcategory.do", method = RequestMethod.GET)

 public String ManaageCat(@ModelAttribute("productVO") ProductVO productVO, Locale locale, Model model,HttpSession session)
		throws ServiceException {
	 
	 	model.addAttribute("title","Product Category");
	 	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
	 
	 return "productsCategory";
    
}

 
 @RequestMapping(value = "/product/createproductcategory.Do", method = RequestMethod.POST)
 public String CreateProductcategory(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException {
	 
	 
	 String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	 System.out.println("Entering here"+productVO);
	 int customerId=1;
	 String res= productinformationView.createProductCategory(productVO, customerId,actionuser);

	 System.out.println("Product category funtion return:"+res);
	 
	 
	 model.addAttribute("title","Product Category");

	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
     	model.addAttribute("msg", "Created Successfully");
     //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
 		return "managecategory";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
     	model.addAttribute("msg", res);
     	
		 return "managecategory";
		 
	 }
	 
    
}
 
 
 
 @RequestMapping(value = "/product/createproductcategory.do", method = RequestMethod.GET)
 public String CreateProductcategoryGET(Locale locale, Model model,HttpSession session)throws ServiceException {
	 	 
	 model.addAttribute("title","Product Category");
	 	//model.addAttribute("activityReport", productinformationView.getProductCategory(1));
	 
	 return "managecategory";
    
}
 
 
 
 
 
 
 @RequestMapping(value = "/product/CreateProduct.Do", method = RequestMethod.POST)
 public String CreateProduct(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException {
	 String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	 System.out.println("Create Product"+productVO);
	 
	 int customerId=1;
	 
	 String res= productinformationView.createProduct(productVO, customerId,actionuser);

	 System.out.println("Create Product:"+res);
	 
	 model.addAttribute("title","Create Product");
	 model.addAttribute("btntitle","Create Product");
	 model.addAttribute("actionval","/product/CreateProduct.Do");
	 model.addAttribute("methodval", "POST");
	 model.addAttribute("productVOval","productVO");


	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
     	model.addAttribute("msg", "Created Successfully");
     //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
 		return "createproduct";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
     	model.addAttribute("msg", res);
     	
		 return "createproduct";
		 
	 }
	 
    
}
 

 
 @RequestMapping(value = "/patient/registation.mjpa", method = RequestMethod.GET)
 public String CreatePatientRegistation_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
 {
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	 model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("title","Create Product");
    model.addAttribute("actionval","/patient/registation.mjpa");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	
	model.addAttribute("roleNames",productVO.getRoleNamesByMap(String.valueOf(customerId),actionuser));
	
	
	 return "registation";
	 
    
 	}
 
 @RequestMapping(value = "/patient/registation.mjpa", method = RequestMethod.POST)
 public String CreatePatientRegistation_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException {
	 
	 System.out.println("Entering here"+productVO);
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	 String res= productinformationView.createpatientregis(productVO, customerId,actionuser);
	// model.addAttribute("genderlsit", productinformationView.getGenderMap());
	 System.out.println("Product category funtion return:"+res);
	 
	 		System.out.println("Deskkk"+actionuser);
	 
	// Create_Patient_Registation
	 model.addAttribute("title","Product Category");
	 model.addAttribute("title","Create Product");
	    model.addAttribute("actionval","/patient/registation.mjpa");
		model.addAttribute("methodval", "POST");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("btntitle","Create Product");
		model.addAttribute("genderlsit", productinformationView.getGenderMap());
		
		
		

	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
     	model.addAttribute("msg", "Created Successfully");
     //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
    	model.addAttribute("genderlsit", productinformationView.getGenderMap());
 		return "registation";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
     	model.addAttribute("msg", res);
     	
		 return "registation";
		 
	 }
	 
    
}
 
	
 

 @RequestMapping(value = "/product/viewprodcutlist.do", method = RequestMethod.GET)
 public String ViewProductList_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
 {
	 
		model.addAttribute("productlist", productinformationView.getProductList(1));
		 
		return "viewproductlist";
	 
    
 	}
 
 

 

 
 

 
@RequestMapping(value = "/product/StockInProduct.Do", method = RequestMethod.GET)
 public String Product_StockIn_GET(@ModelAttribute("productVO") ProductVO productVO,
		 
		 @RequestParam("productno") String productNo,
		 @RequestParam("currentunitprice") String unitPrice,
		 @RequestParam("currentStock") String stockinHand,
		 @RequestParam("productname") String productName,
		 @RequestParam("productcode") String productcode,
		 @RequestParam("flg") String flg,
		 		 
		 Model model,HttpSession session)throws ServiceException
 		{
	 
			model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/product/StockInProduct.Do");
			model.addAttribute("methodval", "POST");
			
			model.addAttribute("productVOval","productVO");
			model.addAttribute("btntitle","Create Product");
			model.addAttribute("productNo",productNo);
			model.addAttribute("productName",productName);
			model.addAttribute("productcode",productcode);
			model.addAttribute("currentstock",stockinHand);
			model.addAttribute("currentprice",unitPrice);
			
	 return "stockin";
	 
    
 	}

   


@RequestMapping(value = "/product/StockInProduct.Do", method = RequestMethod.POST)
 public String Product_StockIn_POST(@ModelAttribute("productVO") ProductVO productVO,
		  Model model,HttpSession session)throws ServiceException
 		{ int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);

			System.out.println("Product NO"+productVO.getProductNo());
		
			System.out.println("It is entering here"+productVO);
			
			
			String res=productinformationView.StackIn(productVO, customerId, actionuser);
			
			
			
			 if (res.equals("Success"))
			 {
				model.addAttribute("css", "success");
		     	model.addAttribute("msg", "Created Successfully");
		     //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
		     	return "redirect:/product/viewprodcutlist.do";

			 }
			 else
			 {
				 
				model.addAttribute("css", "danger");
		     	model.addAttribute("msg", res);
		     	
				 return "stockin";
				 
			 }
			
			
			/*	model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/product/CreateProduct.Do");
			model.addAttribute("methodval", "POST");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("btntitle","Create Product");
		*/
			//redirect:// "viewproductlist";
			
			

    
 	}



@RequestMapping(value = "/customer/viewlistofcustomer.do", method = RequestMethod.GET)
public String Transection_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	model.addAttribute("title","Customer");
    model.addAttribute("actionval","/product/CreateProduct.Do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","customerVO");
	model.addAttribute("btntitle","Create Customer");
	model.addAttribute("customer","/customer/createcustomer.do");
	
	model.addAttribute("customerlist", customerinformtion.getListofCustomer(customerId));
		 
		return "viewlistcustomer";
	 
   
	}



@RequestMapping(value = "/customer/createcustomer.do", method = RequestMethod.GET)
public String createCustomer_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	
	model.addAttribute("title","Create Customer");
    model.addAttribute("actionval","/customer/createcustomer.do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("voName","customerVO");
	model.addAttribute("btntitle","Create Customer");
	model.addAttribute("customer","/customer/createcustomer.do");

	
		//model.addAttribute("productlist", productinformationView.getProductList(1));
		 
		return "createcustomer";
	 
   
}



@RequestMapping(value = "/customer/createcustomer.do", method = RequestMethod.POST)
public String createCustomer_POST(@ModelAttribute("customerVO") CustomerVO customerVO,Model model,HttpSession session)throws ServiceException
{
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	
	ModelAndView mv = new ModelAndView();
	 
	 logger.info("Entering Here"+customerVO);
	 
	 System.out.println("Here customerVO"+customerVO);
	 
	
	model.addAttribute("title","Create Customer");
    model.addAttribute("actionval","/customer/createcustomerInformation.do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("voName","customerVO");
	model.addAttribute("btntitle","Create Customer");
	model.addAttribute("customer","/customer/createcustomer.do");
	
	String mobileNumber=customerVO.getMobileNumber();
	
	String customeridentificationno=customerVO.getCustomeridentificationo();
	
	ArrayList<CustomerVO> customerdetails=customerinformtion.checkCustomer(customerId, mobileNumber, customeridentificationno);
	
	
	if(customerdetails.size()>0)
	{

		model.addAttribute("customerlist",customerdetails);
		return "viewlistcustomer";
	}
	
	else
	{
	
	///	System.out.println("RamNumber"+customerinformtion.GetRandomNumber());
		
		//model.addAttribute("customeridentificationnumber",customerinformtion.GetRandomNumber());
		
		model.addAttribute("mobileNo",mobileNumber);
		
		return "createcustomerinfo";
		
	}
	
	
	//model.addAttribute("productlist", productinformationView.getProductList(1));
		 
	 
   
}





@RequestMapping(value = "/customer/createcustomerInformation.do", method = RequestMethod.POST)
public String createCustomerInformation_POST(@ModelAttribute("customerVO") CustomerVO customerVO,Model model,HttpSession session)throws ServiceException
{
	
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
	ModelAndView mv = new ModelAndView();
	 
	 logger.info("Entering Here"+customerVO);
	 
	 System.out.println("Here customerVO"+customerVO);
	 
		model.addAttribute("username", actionuser);
	model.addAttribute("title","Create Customer");
    model.addAttribute("actionval","/customer/createcustomerInformation.do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("voName","customerVO");
	model.addAttribute("btntitle","Create Customer");
	model.addAttribute("customer","/customer/createcustomer.do");
		
	//model.addAttribute("productlist", productinformationView.getProductList(1));
	String res=customerinformtion.createCustomer(customerVO, customerId,actionuser);
	
	
	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
    	model.addAttribute("msg", "Created Successfully");
    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
    	return "redirect://POS/Transection.do";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
    	model.addAttribute("msg", res);
    	
    	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
		
		return "createcustomerinfo";
		 
	 }
	 

   
}




@RequestMapping(value = "/POS/Transection.do", method = RequestMethod.GET)

public String Transection_GET(Model model,HttpSession session)throws ServiceException
{ int customerId=1;
String actionuser=(String) session.getAttribute("username");

model.addAttribute("username", actionuser);
	
	ModelAndView mv = new ModelAndView();
	 
	
	model.addAttribute("title","Create Customer");
    model.addAttribute("actionval","/customer/createcustomerInformation.do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("voName","customerVO");
	model.addAttribute("btntitle","Create Customer");
	model.addAttribute("customer","/customer/createcustomer.do");
		
	return "checkout_viewproductlist";/*
	//model.addAttribute("productlist", productinformationView.getProductList(1));
	String res=customerinformtion.createCustomer(customerVO, customerId,actionuser);
	
	
	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
    	model.addAttribute("msg", "Created Successfully");
    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
    	return "checkout_viewproductlist";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
    	model.addAttribute("msg", res);
    	
    	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
		
		return "createcustomerinfo";
		 
	 }
*/	 

   
}

//doctor registation from

@RequestMapping(value = "/doctor/doctorregistation", method = RequestMethod.GET)
public String CreatePregistationfrom_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser); 
	
   model.addAttribute("actionval","/doctor/doctorregistation");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
   
	
	
	 return "doctorregistation";
	 
   
	}


@RequestMapping(value = "/doctor/doctorregistation", method = RequestMethod.POST)
public String CreatePregistationfrom_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
	 
		model.addAttribute("username", actionuser);
   model.addAttribute("actionval","/doctor/doctorregistation");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
   
	//model.addAttribute("productlist", productinformationView.getProductList(1));
	 String res= productinformationView.createDoctorRegistation(productVO, customerId,actionuser);
		
		
		 if (res.equals("Success"))
		 {
			model.addAttribute("css", "success");
	    	model.addAttribute("msg", "Created Successfully");
	    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
	    //	return "redirect://POS/Transection.do";
	    	
	    	return "doctorregistation";

		 }
		 else
		 {
			 
			model.addAttribute("css", "danger");
	    	model.addAttribute("msg", res);
	    	
	    //	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
			
			return "doctorregistation";
			 
		 }
		 

	 
   
	}



@RequestMapping(value = "/doctor/prescrition", method = RequestMethod.GET)
public String Createprescrition_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
String doctorid=(String) session.getAttribute("duuid");
	
	System.out.println("doctorid"+doctorid);
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		
		model.addAttribute("username", actionuser);
   model.addAttribute("actionval","/doctor/prescrition");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("username",productVO.getPatientid());
	model.addAttribute("doctorid",productVO.getUuId());
	model.addAttribute("appromentid",productVO.getAppromentid());
	
	
	 return "doctor/prescrition";
	 
   
	}


//contaxt 

@RequestMapping(value = "/contact", method = RequestMethod.GET)
public String CreateContact_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
String doctorid=(String) session.getAttribute("duuid");
	
	System.out.println("doctorid"+doctorid);
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		
		model.addAttribute("username", actionuser);
   model.addAttribute("actionval","/contact");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("username",productVO.getPatientid());
	model.addAttribute("doctorid",productVO.getUuId());
	model.addAttribute("appromentid",productVO.getAppromentid());
	
	
	 return "contact";
	 
   
	}


@RequestMapping(value = "/contact", method = RequestMethod.POST)
public String CreateContact_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	//String doctorid=(String) session.getAttribute("duuid");
//	String patient_id=(String) session.getAttribute("patient")
	
	//System.out.println("doctorid"+doctorid);
	model.addAttribute("username", actionuser);
   model.addAttribute("actionval","/contact");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	//model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(Id));

//model.addAttribute("productlist", productinformationView.getProductList(1));
 String res= productinformationView.Create_Contact(productVO, customerId,actionuser);
	
	
	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
    	model.addAttribute("msg", "Created Successfully");
    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
    //	return "redirect:/doctor/prescritionInvoic/"+ productVO.getPatientid()+"/" +productVO.getAppromentid()+"/" +productVO.getUuId();
    	
    	//return "doctor/prescrition";
    	 return "contact";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
    	model.addAttribute("msg", res);
    	
    //	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
		
    	 return "contact";
		 
	 }
	 
	
	
	 
   
	}







@RequestMapping(value ="/doctor/prescrition", method = RequestMethod.POST)
public String Createprescrition_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session
		
		
		)throws ServiceException
{
	
	 	int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		//String doctorid=(String) session.getAttribute("duuid");
	//	String patient_id=(String) session.getAttribute("patient")
		
		//System.out.println("doctorid"+doctorid);
		model.addAttribute("username", actionuser);
	   model.addAttribute("actionval","/doctor/appropitntlisttable");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
		model.addAttribute("genderlsit", productinformationView.getGenderMap());
		//model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(Id));
   
	//model.addAttribute("productlist", productinformationView.getProductList(1));
	 String res= productinformationView.Create_Prescrition(productVO, customerId,actionuser);
		
		
		 if (res.equals("Success"))
		 {
			model.addAttribute("css", "success");
	    	model.addAttribute("msg", "Created Successfully");
	    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
	    	return "redirect:/doctor/prescritionInvoic/"+ productVO.getPatientid()+"/" +productVO.getAppromentid()+"/" +productVO.getUuId();
	    	
	    	//return "doctor/prescrition";

		 }
		 else
		 {
			 
			model.addAttribute("css", "danger");
	    	model.addAttribute("msg", res);
	    	
	    //	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
			
			return "doctor/prescrition";
			 
		 }
		 

	 
   
	}




@RequestMapping(value = "/patient/prescritionInvoic/{patientid}/{Id}/{appromentid}/{docid}", method = RequestMethod.GET)
public String GetppatientprescritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
		 @PathVariable("patientid") String patientid,
		 @PathVariable("Id") String Id,
	       @PathVariable("appromentid") String appromentid,
	       @PathVariable("docid") String docid, HttpSession session)throws ServiceException
{
	 int customerId;
		String actionuser=(String) session.getAttribute("username");
		 
		model.addAttribute("username", actionuser);
		   model.addAttribute("actionval","/patient/prescritionInvoic");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
			model.addAttribute("genderlsit", productinformationView.getGenderMap());
			model.addAttribute("username",productVO.getPatientid());
			model.addAttribute("doctorid",productVO.getUuId());
			model.addAttribute("appromentid",productVO.getAppromentid());
			model.addAttribute("apromentid",productinformationView.Scarchappromentid(Id));
		model.addAttribute("patient",productinformationView.getDoctorApprometlist(docid));
		model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(docid));
		model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, docid, patientid));
		model.addAttribute("test",productinformationView.GetTest(appromentid, docid, patientid));
		model.addAttribute("advice",productinformationView.GetAdvice(appromentid, docid, patientid));

   
	
	
	 return "/patient/prescritionInvoic";
	 
   
	}

@RequestMapping(value = "/patient/dashboard", method = RequestMethod.GET)
public String GetdashboardcritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
		   HttpSession session)throws ServiceException
{
		int customerId;
		String actionuser=(String) session.getAttribute("username");
		 
		model.addAttribute("username", actionuser);
		   model.addAttribute("actionval","/patient/prescritionInvoic");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
			model.addAttribute("genderlsit", productinformationView.getGenderMap());
			model.addAttribute("username",productVO.getPatientid());
			model.addAttribute("doctorid",productVO.getUuId());
			model.addAttribute("appromentid",productVO.getAppromentid());
			/*model.addAttribute("apromentid",productinformationView.Scarchappromentid(Id));
		model.addAttribute("patient",productinformationView.getDoctorApprometlist(uuId));
		model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(uuId));
		model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, uuId, patientid));
		model.addAttribute("test",productinformationView.GetTest(appromentid, uuId, patientid));
		model.addAttribute("advice",productinformationView.GetAdvice(appromentid, uuId, patientid));*/
//	
   
	
	
	 return "/patient/dashboard";
	 
   
	}




@RequestMapping(value = "/pharmacy/prescritionInvoic", method = RequestMethod.GET)
public String GetpharmacyprescritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
		 HttpSession session)throws ServiceException
{
	int customerId;
	String actionuser=(String) session.getAttribute("username");
	 
	model.addAttribute("username", actionuser);
	   model.addAttribute("actionval","/patient/prescritionInvoic");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
		model.addAttribute("genderlsit", productinformationView.getGenderMap());
		model.addAttribute("username",productVO.getPatientid());
		model.addAttribute("doctorid",productVO.getUuId());
		model.addAttribute("appromentid",productVO.getAppromentid());
//		model.addAttribute("apromentid",productinformationView.Scarchappromentid(Id));
//	model.addAttribute("patient",productinformationView.getDoctorApprometlist(uuId));
//	model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(uuId));
//	model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, uuId, patientid));
//	model.addAttribute("test",productinformationView.GetTest(appromentid, uuId, patientid));
//	model.addAttribute("advice",productinformationView.GetAdvice(appromentid, uuId, patientid));
	
	//System.out.println("appromentid"+productinformationView.Scarchappromentid(Id));
	 return "/pharmacy/prescritionInvoic";
	 
   
	}




@RequestMapping(value = "/patient/prescritionlist", method = RequestMethod.GET)
public String GetprescritionlistcprescritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
	 HttpSession session)throws ServiceException
{
	 int customerId;
		String actionuser=(String) session.getAttribute("username");
		 
		model.addAttribute("username", actionuser);
		   model.addAttribute("actionval","/patient/prescritionlist");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
			model.addAttribute("genderlsit", productinformationView.getGenderMap());
			model.addAttribute("username",productVO.getPatientid());
			model.addAttribute("doctorid",productVO.getUuId());
			model.addAttribute("appromentid",productVO.getAppromentid());
		//model.addAttribute("patient",productinformationView.getDoctorApprometlist(actionuser));
		model.addAttribute("apromentid",productinformationView.Scarchappromentid(actionuser));
		
//			model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(uuId));
//			model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, uuId, patientid));
//			model.addAttribute("test",productinformationView.GetTest(appromentid, uuId, patientid));
//			model.addAttribute("advice",productinformationView.GetAdvice(appromentid, uuId, patientid));
//	
   
	
	
	 return "/patient/prescritionlist";
	 
   
	}




@RequestMapping(value = "/clinic/prescritionInvoic", method = RequestMethod.GET)
public String GetclinicprescritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
	 HttpSession session)throws ServiceException
{
	 int customerId;
		String actionuser=(String) session.getAttribute("username");
		 
		model.addAttribute("username", actionuser);
		   model.addAttribute("actionval","/clinic/prescritionInvoic");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
			model.addAttribute("genderlsit", productinformationView.getGenderMap());
			model.addAttribute("username",productVO.getPatientid());
			model.addAttribute("doctorid",productVO.getUuId());
			model.addAttribute("appromentid",productVO.getAppromentid());
//			model.addAttribute("patient",productinformationView.getDoctorApprometlist(uuId));
//			model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(uuId));
//			model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, uuId, patientid));
//			model.addAttribute("test",productinformationView.GetTest(appromentid, uuId, patientid));
//			model.addAttribute("advice",productinformationView.GetAdvice(appromentid, uuId, patientid));
//	
   
	
	
	 return "/clinic/prescritionInvoic";
	 
   
	}






@RequestMapping(value = "/doctor/prescritionInvoic/{patientid}/{appromentid}/{uuId}", method = RequestMethod.GET)
public String CreateprescritionInvoice_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
		 @PathVariable("patientid") String patientid,
	       @PathVariable("appromentid") String appromentid,
	       @PathVariable("uuId") String uuId, HttpSession session)throws ServiceException
{
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		 
		model.addAttribute("username", actionuser);
		   model.addAttribute("actionval","/doctor/prescrition");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
			model.addAttribute("genderlsit", productinformationView.getGenderMap());
			model.addAttribute("username",productVO.getPatientid());
			model.addAttribute("doctorid",productVO.getUuId());
			model.addAttribute("appromentid",productVO.getAppromentid());
			model.addAttribute("patient",productinformationView.getDoctorApprometlist(uuId));
			model.addAttribute("doctordetials",productinformationView.Get_DoctorDetails(uuId));
			model.addAttribute("medicine",productinformationView.GetMedicine(appromentid, uuId, patientid));
			model.addAttribute("test",productinformationView.GetTest(appromentid, uuId, patientid));
			model.addAttribute("advice",productinformationView.GetAdvice(appromentid, uuId, patientid));
	
   
	
	
	 return "doctor/prescritionInvoic";
	 
   
	}




@RequestMapping(value = "/doctor/appropitntlisttable", method = RequestMethod.GET)
public String CreateDoctorAppromemt_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{ int customerId=1;
String actionuser=(String) session.getAttribute("username");
model.addAttribute("username", actionuser);
	 
	String doctorid=(String) session.getAttribute("duuid");
	
	System.out.println("doctorid"+doctorid);
   model.addAttribute("actionval","/doctor/appropitntlisttable");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(doctorid));
	
	System.out.println("Doctor"+productinformationView.getDoctorApprometlist(doctorid));
   
	

	 return "doctor/appropitntlisttable";
	 
}
//mditype+"/"+medicinename+"/"+medicinmg+"/"+medicindose+"/"+medicinduration+"/"+medicincomments+"/"+appromentid+"/"+uuId+"/"+ patientid;


@RequestMapping(value = "/doctor/createmed/{mditype}/{medicinename}/{medicinmg}/{medicindose}/{medicinduration}/{medicincomments}/{appromentid}/{uuId}/{patientid}", method = RequestMethod.GET,produces="application/json")
     public @ResponseBody  List<HashMap<String, Object>> Get_Medicine_Responses(Locale locale,
       @ModelAttribute("ProductVO")  ProductVO productVO,
       Model model,
       @PathVariable("mditype") String mditype,
       @PathVariable("medicinename") String medicinename,
       @PathVariable("medicinmg") String medicinmg,
       @PathVariable("medicindose") String medicindose,
       @PathVariable("medicinduration") String medicinduration,
       @PathVariable("medicincomments") String medicincomments,
       @PathVariable("appromentid") String appromentid,
       @PathVariable("uuId") String uuId,
       @PathVariable("patientid") String patientid,
       
       HttpSession session)
      throws Exception {
      
  /* if (session.getAttribute("customerid")==null)
   {
                    throw new Exception(); 
   }   
   */
   
      //model.addAttribute("username",session.getAttribute("username").toString());
   
   String customerId;
   String actionuser=(String) session.getAttribute("username");

   
	model.addAttribute("username", actionuser);
   	String doctorid=(String) session.getAttribute("duuid");
   	
   	System.out.println("doctorid"+doctorid);
      model.addAttribute("actionval","/doctor/appropitntlisttable");
   	model.addAttribute("productVOval","productVO");
   	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
   	model.addAttribute("genderlsit", productinformationView.getGenderMap());
   	model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(doctorid));
   	
   	System.out.println("Doctor"+productinformationView.getDoctorApprometlist(doctorid));
      
   

   //System.out.println("UUID:"+uuid +"Pluginid:"+pluginid);
   
   List<HashMap<String, Object>> plugindetails = productinformationView.createMedicine(mditype,medicinename,medicinmg,medicindose,medicinduration,medicincomments,appromentid,uuId,patientid);
      
   System.out.println(plugindetails);

   
      //model.addAttribute("list",nessuessService.Get_Solutions(uuid,pluginid));
     
       //HttpHeaders responseHeaders = new HttpHeaders();
          // ...
         // return new ResponseEntity<>(plugindetails, responseHeaders, HttpStatus.OK);

      return plugindetails;
  //    return "customeradmin/nessues/solution";
     }




//testtable



@RequestMapping(value = "/doctor/createTest/{test}/{testdis}/{appromentid}/{uuId}/{patientid}", method = RequestMethod.GET,produces="application/json")
public @ResponseBody  List<HashMap<String, Object>> Get_Medicine_Responses(Locale locale,
  @ModelAttribute("ProductVO")  ProductVO productVO,
  Model model,
  @PathVariable("test") String test,
  @PathVariable("testdis") String testdis,
  @PathVariable("appromentid") String appromentid,
  @PathVariable("uuId") String uuId,
  @PathVariable("patientid") String patientid,
  
  HttpSession session)
 throws Exception {
 
/* if (session.getAttribute("customerid")==null)
{
               throw new Exception(); 
}   
*/

 //model.addAttribute("username",session.getAttribute("username").toString());

	
	System.out.println("Cheekkkkkkk");
String customerId;
String actionuser=(String) session.getAttribute("username");

model.addAttribute("username", actionuser);
	String doctorid=(String) session.getAttribute("duuid");
	
	System.out.println("doctorid"+doctorid);
 model.addAttribute("actionval","/doctor/appropitntlisttable");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(doctorid));
	
	System.out.println("Doctor"+productinformationView.getDoctorApprometlist(doctorid));
 


//System.out.println("UUID:"+uuid +"Pluginid:"+pluginid);

List<HashMap<String, Object>> plugindetails = productinformationView.createTest(test,testdis,appromentid,uuId,patientid);
 
System.out.println(plugindetails);


 //model.addAttribute("list",nessuessService.Get_Solutions(uuid,pluginid));

  //HttpHeaders responseHeaders = new HttpHeaders();
     // ...
    // return new ResponseEntity<>(plugindetails, responseHeaders, HttpStatus.OK);

 return plugindetails;
//    return "customeradmin/nessues/solution";
}


//advice




@RequestMapping(value = "/doctor/createAdvice//{advice}/{appromentid}/{uuId}/{patientid}", method = RequestMethod.GET,produces="application/json")
public @ResponseBody  List<HashMap<String, Object>> Get_Medicine_Responses(Locale locale,
  @ModelAttribute("ProductVO")  ProductVO productVO,
  Model model,
  
  @PathVariable("advice") String advice,
  @PathVariable("appromentid") String appromentid,
  @PathVariable("uuId") String uuId,
  @PathVariable("patientid") String patientid,
  
  HttpSession session)
 throws Exception {
 
/* if (session.getAttribute("customerid")==null)
{
               throw new Exception(); 
}   
*/

 //model.addAttribute("username",session.getAttribute("username").toString());

	
	System.out.println("Cheekkkkkkk");
	int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	model.addAttribute("username", actionuser);

	 
	String doctorid=(String) session.getAttribute("duuid");
	
	System.out.println("doctorid"+doctorid);
 model.addAttribute("actionval","/doctor/appropitntlisttable");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(doctorid));
	
	System.out.println("Doctor"+productinformationView.getDoctorApprometlist(doctorid));
 


//System.out.println("UUID:"+uuid +"Pluginid:"+pluginid);

List<HashMap<String, Object>> plugindetails = productinformationView.createAdvice(advice,appromentid,uuId,patientid);
 
System.out.println(plugindetails);


 //model.addAttribute("list",nessuessService.Get_Solutions(uuid,pluginid));

  //HttpHeaders responseHeaders = new HttpHeaders();
     // ...
    // return new ResponseEntity<>(plugindetails, responseHeaders, HttpStatus.OK);

 return plugindetails;
//    return "customeradmin/nessues/solution";
}





@RequestMapping(value ="/doctor/appropitntlisttable/{Id}", method = RequestMethod.POST)
public String CreateDoctorAppromemt_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session,
		 @PathVariable ("Id") String Id)throws ServiceException
{
	long serialVersionUID = 1L;
	int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	model.addAttribute("username", actionuser);

	   model.addAttribute("actionval","/doctor/appropitntlisttable");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("departmentlsit", productinformationView.getAssetFamilyMap());
		model.addAttribute("genderlsit", productinformationView.getGenderMap());
		model.addAttribute("appromentlist", productinformationView.getDoctorApprometlist(Id));
   
	//model.addAttribute("productlist", productinformationView.getProductList(1));
	 String res= productinformationView.createDoctorRegistation(productVO, customerId,actionuser);
		
		
		 if (res.equals("Success"))
		 {
			model.addAttribute("css", "success");
	    	model.addAttribute("msg", "Created Successfully");
	    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
	    //	return "redirect://POS/Transection.do";
	    	
	    	return "doctor/appropitntlisttable";

		 }
		 else
		 {
			 
			model.addAttribute("css", "danger");
	    	model.addAttribute("msg", res);
	    	
	    //	model.addAttribute("mobileNo",	customerVO.getMobileNumber());
			
			return "doctor/appropitntlisttable";
			 
		 }
		 

	 
   
	}






@RequestMapping(value = "/product/createproduct.Do", method = RequestMethod.GET)
public String CreateProductm_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{ int customerId=1;

String actionuser=(String) session.getAttribute("username");
model.addAttribute("username", actionuser);
	 
	model.addAttribute("title","Create Product");
   model.addAttribute("actionval","/product/CreateProduct.Do");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	
	 return "createproduct";
	 
   
	}

//appromient



@RequestMapping(value = "/patient/futureappointment", method = RequestMethod.GET)
public String CreatePatientfutureappointment_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
	model.addAttribute("title","Create Product");
   model.addAttribute("actionval","/patient/registation.mjpa");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	System.out.println("smart");
	
	
	
	 return "patient/futureappointment";
	 
//patient/futureappointment.jsp
	}





@RequestMapping(value = "/patient/confirmapproment/{id}", method = RequestMethod.GET)
public String CreatePatientconfirmappromentappointment_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session
		
		,@PathVariable("id") String id
		)throws ServiceException
{
	int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	model.addAttribute("username", actionuser);
	model.addAttribute("title","Create Product");
   model.addAttribute("actionval","/patient/confirmapproment");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	System.out.println("smart");
	model.addAttribute("days", productinformationView.getDayMap());
 //	model.addAttribute("doctordetails", productinformationView.Get_DoctorDetails(Id));
 	model.addAttribute("Id",id);

	
	
	 return "patient/confirmapproment";
	 
//patient/futureappointment.jsp
	}



@RequestMapping(value = "/patient/confirmapproment", method = RequestMethod.POST)
public String CreatePatientconfirmappromentappointment_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session
		
			)throws ServiceException
{
	 System.out.println("Entering here"+productVO);
	 int customerId=1;
		String actionuser=(String) session.getAttribute("username");
		model.addAttribute("username", actionuser);
		 
	 String res= productinformationView.createappronetappronet(productVO, customerId,actionuser);

	model.addAttribute("title","Create Product");
   model.addAttribute("actionval","/patient/confirmapproment");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	System.out.println("smart");
	model.addAttribute("days", productinformationView.getDayMap());
 //	model.addAttribute("doctordetails", productinformationView.Get_DoctorDetails(Id));

	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
    	model.addAttribute("msg", "Created Successfully");
    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
    	 return "patient/confirmapproment";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
    	model.addAttribute("msg", res);
    	
    	 return "patient/confirmapproment";	 
	 }
	 
	
	
	
	 
//patient/futureappointment.jsp
	}
//Pharmacy Registation

@RequestMapping(value = "/pharmacy/pharmacyRegistation", method = RequestMethod.GET)
public String CreatePharmacyRegistation_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
{ int customerId=1;
String actionuser=(String) session.getAttribute("username");
model.addAttribute("username", actionuser);
	model.addAttribute("genderlsit", productinformationView.getGenderMap());
	model.addAttribute("title","Create Product");
   model.addAttribute("actionval","/pharmacy/pharmacyRegistation");
	model.addAttribute("methodval", "POST");
	model.addAttribute("productVOval","productVO");
	model.addAttribute("btntitle","Create Product");
	
	model.addAttribute("roleNames",productVO.getRoleNamesByMap(String.valueOf(customerId),actionuser));
	
	
	 return "pharmacyRegistation";
	 
   
	}

@RequestMapping(value = "/pharmacy/pharmacyRegistation", method = RequestMethod.POST)
public String CreatePharmacyRegistation_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException {
	 
	
	int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	model.addAttribute("username", actionuser);
	 System.out.println("Entering here"+productVO);
	
	 String res= productinformationView.createppharmacyregistaiton(productVO, customerId,actionuser);

	 System.out.println("Product category funtion return:"+res);
	 
	// Create_Patient_Registation
	 model.addAttribute("title","Product Category");
	 model.addAttribute("title","Create Product");
	    model.addAttribute("actionval","/pharmacy/pharmacyRegistation");
		model.addAttribute("methodval", "POST");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("btntitle","Create Product");
		
		
		

	 if (res.equals("Success"))
	 {
		model.addAttribute("css", "success");
    	model.addAttribute("msg", "Created Successfully");
    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
		return "pharmacyRegistation";

	 }
	 else
	 {
		 
		model.addAttribute("css", "danger");
    	model.addAttribute("msg", res);
    	
		 return "pharmacyRegistation";
		 
	 }
	 
	 
}

	//Pharmacy Registation

	@RequestMapping(value = "/clinic/clinicRegistation", method = RequestMethod.GET)
	public String CreateclinicRegistation_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
	{ int customerId=1;
	String actionuser=(String) session.getAttribute("username");
	model.addAttribute("username", actionuser);
		model.addAttribute("genderlsit", productinformationView.getGenderMap());
		model.addAttribute("title","Create Product");
	   model.addAttribute("actionval","/clinic/clinicRegistation");
		model.addAttribute("methodval", "POST");
		model.addAttribute("productVOval","productVO");
		model.addAttribute("btntitle","Create Product");
		
		model.addAttribute("roleNames",productVO.getRoleNamesByMap(String.valueOf(customerId),actionuser));
		
		
		 return "clinicRegistation";
		 
	   
		}

	@RequestMapping(value = "/clinic/clinicRegistation", method = RequestMethod.POST)
	public String CreateclinicRegistation_POST(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException {
		 int customerId=1;
			String actionuser=(String) session.getAttribute("username");
			model.addAttribute("username", actionuser);
		 System.out.println("Entering here"+productVO);
		
		 String res= productinformationView.createclinicregistaiton(productVO, customerId,actionuser);

		 System.out.println("Product category funtion return:"+res);
		 
		// Create_Patient_Registation
		 model.addAttribute("title","Product Category");
		 model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/clinic/clinicRegistationn");
			model.addAttribute("methodval", "POST");
			model.addAttribute("productVOval","productVO");
			model.addAttribute("btntitle","Create Product");
			
			
			

		 if (res.equals("Success"))
		 {
			model.addAttribute("css", "success");
	    	model.addAttribute("msg", "Created Successfully");
	    //	model.addAttribute("activityReport", productinformationView.getProductCategory(1));
			return "clinicRegistation";

		 }
		 else
		 {
			 
			model.addAttribute("css", "danger");
	    	model.addAttribute("msg", res);
	    	
			 return "clinicRegistation";
			 
		 }
		 
	 
	 
	 
	}
	 
	 //doctor
		 
		 @RequestMapping(value ="/doctor/alldoctor", method = RequestMethod.GET)
		 public String CreateallDoctor_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,
				 HttpSession session)throws ServiceException
		 {
			 int customerId=1;
				String actionuser=(String) session.getAttribute("username");
				model.addAttribute("username", actionuser);
		 	model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/doctor/alldoctor");
		 	model.addAttribute("methodval", "POST");
		 	model.addAttribute("productVOval","productVO");
		 	model.addAttribute("btntitle","Create Product");
		 	System.out.println("doctor"+productinformationView.getallDoctor());
		 	model.addAttribute("activityReport", productinformationView.getallDoctor());
			
		
		 	
		 	
		 	
		 	 return "alldoctor";
		 	 
		 //patient/futureappointment.jsp
		 	}

 //doctor
		 
		 @RequestMapping(value ="/doctor/doctor-details/{Id}", method = RequestMethod.GET)
		 public String CreateallDoctordetails_GET(@ModelAttribute("productVO") ProductVO productVO,Model 
				 model,HttpSession session,
				 @PathVariable ("Id") String Id)throws ServiceException
		 {int customerId=1;
			String actionuser=(String) session.getAttribute("username");
			//String actionuser=(String) session.getAttribute("username");
			model.addAttribute("username", actionuser);
			model.addAttribute("username", actionuser);
		 	 
		 	model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/doctor/doctor-details");
		 	model.addAttribute("methodval", "POST");
		 	model.addAttribute("productVOval","productVO");
		 	model.addAttribute("btntitle","Create Product");
		 	System.out.println("smart");

		 	model.addAttribute("activityReport", productinformationView.getallDoctor());
		 	model.addAttribute("doctordetails", productinformationView.Get_DoctorDetails(Id));
		 	model.addAttribute("Id",Id);
		
		 	
		 	
		 	
		 	 return "doctor-details";
		 	 
		 //patient/futureappointment.jsp
		 	}
		 
		 @RequestMapping(value ="/doctor/doctorprofile", method = RequestMethod.GET)
		 public String CreateallDoctocProfile_GET(@ModelAttribute("productVO") ProductVO productVO,Model model,HttpSession session)throws ServiceException
		 {
			 int customerId=1;
				String actionuser=(String) session.getAttribute("username");
			//	String actionuser=(String) session.getAttribute("username");
				model.addAttribute("username", actionuser);
		 	model.addAttribute("title","Create Product");
		    model.addAttribute("actionval","/doctor/doctorprofile");
		 	model.addAttribute("productVOval","productVO");
		 	model.addAttribute("btntitle","Create Product");
		 	System.out.println("smart");
		 	model.addAttribute("activityReport", productinformationView.getallDoctor());
		 	
		 	
		 	
		 	 return "doctor/doctorprofile";
		 	 
		 //patient/futureappointment.jsp
		 	}
	 
   
}

	























