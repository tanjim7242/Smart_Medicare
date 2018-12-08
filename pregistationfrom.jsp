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

</head>



        <div class="wrapper">
            <div class="container">

               
                <!-- Page-Title -->
                <%-- <h4 class="text-success counter">${title}</h4>
                 --%> <a href="${pageContext.request.contextPath}/product/pregistationfrom.do" class="btn btn-primary waves-effect waves-light m-t-10">
					${btntitle}
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
                                       <label for="inputdefault">First Name</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="First Name" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="first_name_error"/>
								    </div>      
                                   
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Middle Name</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="Middle" />	
										
										<form:errors path="productCode" class="text-danger" name="middle_name_error"/>
								    </div>      
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Last Name</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="Last Name" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="last_name_error"/>
								    </div>      
                                
                                
							    <div class="form-group">
                                       <label for="inputdefault">User Name</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="User Name" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="user_name_error"/>
								    </div>      
                                
                             
                             
                                 <div class="form-group">
                                       <label for="inputdefault">Password</label>
									    
		  								<form:input type="password" class="form-control" path="productCode"
										placeholder="Password" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="password_name_error"/>
								    </div>    
	
    							    
								 
                               </div>
                                 
                             
                              <div class="col-md-4">
                               
                                <div class="form-group">
                                       <label for="inputdefault">Email</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="Email" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="email_name_error"/>
								    </div>   
								    
								                            
                            
                               <div class="form-group">
                                       <label for="inputdefault">Phone/Mobile</label>
									    
		  								<form:input type="text" class="form-control" path="productCode"
										placeholder="Phone/ Mobile No" required="true"/>	
										
										<form:errors path="productCode" class="text-danger" name="phone_name_error"/>
								    </div>      
								        
                                       
	   
                            
    
                                  <div class="form-group">
                                       <label for="inputdefault">User Role </label>
									    
		  								                <form:select class="form-control" id="roleName" path="productCode">
                                                            <form:options items="${roleNames}" />
                                                        </form:select>
		  							<form:errors path="productCode" class="text-danger" name="role_manager_error"/>
								 </div> 	      
	
                             
                             
                             
                             
                                  <div class="form-group">
                                       <label for="inputdefault">Line Manager/Supervisor</label>
									    
		  								                <form:select class="form-control" id="lineManager" path="productCode">
                                                            <form:options items="${employeeNames}" />
                                                        </form:select>
		  							<form:errors path="productCode" class="text-danger" name="line_manager_error"/>
								 </div> 	      
	
                                  
	
                               </div>
                            <div class="col-md-4">
                               
                               <div class="form-group">
                                       <label for="inputdefault">Department</label>
									    
		  								                <form:select class="form-control" id="departmentName" path="productCode">
                                                            <form:options items="${departmentNames}" />
                                                        </form:select>
		  							<form:errors path="productCode" class="text-danger" name="department_Name_error"/>
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
                               
  									<input type="submit" class="btn btn-primary" value="Save " />
  									
  									
        						</form:form>
                
                         
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript.jsp"%>
	 
</html>

   