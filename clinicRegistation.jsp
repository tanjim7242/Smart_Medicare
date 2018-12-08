<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title><spring:message code="title.app"/></title>


<%@ include file="css_home.jsp"%>
 <%@ include file="javascript_home.jsp"%>

</head>
 <%@ include file="homeheader.jsp"%> 


        <div class="wrapper">
            <div class="container">
          <%--   background-image: src("${pageContext.request.contextPath}/resources/theme/img/websitebg.png"); --%>
   			
                <h4 class="text-success counter" align="center">Clinic Registration Form</h4>
                <!-- Page-Title -->
                <%-- <h4 class="text-success counter">${title}</h4>
                 <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					${btntitle} --%>
				</a>  
					    
	
					    
                <div class="row">
               
                    <div class="col-sm-12">
                    
                    
                    <div class="box-body">
			<div class="form-group">
			
			<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" 
                                aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
			<strong>${msg}</strong>
		</div>
		</c:if>
		</div>
		</div>
		
                    
                    
  
                        <div class="card-box">
							              
                                   <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"	commandName="${productVOval}">
                                   
                                   
                              	<div class="row">                               
      
	
                              <div class="col-md-4">
                                  <div class="form-group">
                                       <label for="inputdefault">Clinic  Name</label>
									    
		  								<form:input type="text" class="form-control" path="firstname"
										placeholder="First Name" required="true"/>	
										
										<form:errors path="firstname" class="text-danger" name="first_name_error"/>
								    </div>      
                                   
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Clinic Oner frist  Name</label>
									    
		  								<form:input type="text" class="form-control" path="middlename"
										placeholder="Middle" />	
										
										<form:errors path="middlename" class="text-danger" name="middle_name_error"/>
								    </div>      
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Clinic Oner frist Last Name</label>
									    
		  								<form:input type="text" class="form-control" path="lastname"
										placeholder="Last Name" required="true"/>	
										
										<form:errors path="lastname" class="text-danger" name="last_name_error"/>
								    </div>      
                                
                                   <div class="form-group">
                                       <label for="inputdefault">Gender </label>
									    
		  								                <form:select class="form-control" id="roleName" path="gender">
                                                            <form:options items="${genderlsit}" />
                                                        </form:select>
		  							<form:errors path="gender" class="text-danger" name="genderr_error"/>
								 </div> 
                                
							    <div class="form-group">
                                       <label for="inputdefault">User Name</label>
									    
		  								<form:input type="text" class="form-control" path="userName"
										placeholder="User Name" required="true"/>	
										
										<form:errors path="userName" class="text-danger" name="user_name_error"/>
								    </div>      
                                
                             
                             
	
    							    
								 
                               </div>
                                 
                             
                              <div class="col-md-4">
                              
                              
                                 <div class="form-group">
                                       <label for="inputdefault">Password</label>
									    
		  								<form:input type="password" class="form-control" path="currentPassword"
										placeholder="Password" required="true"/>	
										
										<form:errors path="currentPassword" class="text-danger" name="password_name_error"/>
								    </div>    
                           
                   
                     
                   
                               
                                <div class="form-group">
                                       <label for="inputdefault">Email</label>
									    
		  								<form:input type="text" class="form-control" path="email"
										placeholder="Email" required="true"/>	
										
										<form:errors path="email" class="text-danger" name="email_name_error"/>
								    </div>   
								    
								                            
                            
                               <div class="form-group">
                                       <label for="inputdefault">Phone/Mobile</label>
									    
		  								<form:input type="text" class="form-control" path="phone"
										placeholder="Phone/ Mobile No" required="true"/>	
										
										<form:errors path="phone" class="text-danger" name="phone_name_error"/>
								    </div>      
								        
                                       
	   
                            
                             
                             
                             
                                 
                               <div class="form-group">
                                       <label for="inputdefault">Address</label>
									    
		  								<form:input type="text" class="form-control" path="homeadressone"
										placeholder="Phone/ Mobile No" required="true"/>	
										
										<form:errors path="homeadressone" class="text-danger" name="phone_name_error"/>
								    </div>      
								        	 
								        	    
                               <div class="form-group">
                                       <label for="inputdefault">District</label>
									    
		  								<form:input type="text" class="form-control" path="dristict"
										placeholder="District" required="true"/>	
										
										<form:errors path="dristict" class="text-danger" name="phone_name_error"/>
								    </div>        
	
                                  
	
                               </div>
                            <div class="col-md-4">
                               
                              	        	    
                               <div class="form-group">
                                       <label for="inputdefault">Thana</label>
									    
		  								<form:input type="text" class="form-control" path="thana"
										placeholder="Thana" required="true"/>	
										
										<form:errors path="thana" class="text-danger" name="phone_name_error"/>
								    </div>           
	 
	    						<div class="form-group">
                                       <label for="inputdefault">Post Office</label>
									    
		  								<form:input type="text" class="form-control" path="post"
										placeholder="Post Office" required="true"/>	
										
										<form:errors path="post" class="text-danger" name="phone_name_error"/>
								    </div>   
								    
								    
								    <div class="form-group">
                                       <label for="inputdefault">Clinic Registation number</label>
									    
		  								<form:input type="text" class="form-control" path="BMDCRegNo"
										placeholder="Pharmacy Registation number" required="true"/>	
										
										<form:errors path="BMDCRegNo" class="text-danger" name="phone_name_error"/>
								    </div> 
								    <div class="form-group">
                                       <label for="inputdefault">Post Office</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="Phone/ Mobile No" />	
										
										<form:errors path="productCode" class="text-danger" name="phone_name_error"/>
								    </div>         
	 
	                           <%-- 
                                  <div class="form-group">
                                       <label for="inputdefault">Division</label>
									    
		  								                <form:select class="form-control" id="divisionName" path="productCode">
                                                            <form:options items="${divisionNames}" />
                                                        </form:select>
		  							<form:errors path="productCode" class="text-danger" name="division_Name_error"/>
								 </div> 	      
     --%>
    						 <div class="form-group">
                                       <label for="inputdefault">Picture</label>
									    
										<form:input type="file" class="form-control" path="productCode" />
                                    									
										<form:errors path="productCode" class="text-danger" name="attachmentId_name_error"/>
								    </div>      
								
	                				
                               </div>
                               
                               <div class="send-button">
								<button type="submit" value="submit ">Registation</button>
							</div>
							
							 
  								<!--	 <input type="submit" class="btn btn-primary"  align="center" value="submit " />
  									
  	 <input type="submit" style="background-color:;margin-left:auto;margin-right:auto;display:block;margin-top:22%;margin-bottom:0%"> -->
 

        						</form:form>
                <%-- 
                          <div class="send-button" >
							 
								<a href="${pageContext.request.contextPath}/login" target="_parent"><button>Login !</button></a>
								
							</div> --%>
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript_home.jsp"%>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
	 
</html>

   