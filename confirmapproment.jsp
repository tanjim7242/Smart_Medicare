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


<%@ include file="../css.jsp"%>
 

</head>
<%@ include file="../headerAndSideManu.jsp"%>


        <div class="wrapper">
            <div class="container">
          <%--   background-image: src("${pageContext.request.contextPath}/resources/theme/img/websitebg.png"); --%>
   			
                <h4 class="text-success counter" align="center">Confrim Approment</h4>
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
      
	
                              <div class="col-md-12">
                                 <div class="form-group">
                                       <label for="inputdefault">Days</label>
									    
		  								                <form:select class="form-control" id="roleName" path="day">
                                                            <form:options items="${days}" />
                                                        </form:select>
		  							<form:errors path="day" class="text-danger" name="genderr_error"/>
								 </div>     
                                   
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Date</label>
									    
		  								<form:input type="text" class="form-control" path="date"
										placeholder="Middle" />	
										
										<form:errors path="date" class="text-danger" name="middle_name_error"/>
								    </div>      
                                
                                  <div class="form-group">
                                       <label for="inputdefault">Time</label>
									    
		  								<form:input type="text" class="form-control" path="time"
										placeholder="time" required="true"/>	
										
										<form:errors path="time" class="text-danger" name="last_name_error"/>
								    </div>      
                                
                                  
                                
							    <div class="form-group">
                                       <label for="inputdefault">Reason</label>
									    
		  								<form:input type="text" class="form-control" path="reason"
										placeholder="reason" />	
										
										<form:errors path="reason" class="text-danger" name="user_name_error"/>
								    </div>      
                                
                             
                             
	 								  <div class="form-group">
                                     
									    
		  								<form:input type="hidden"  class="form-control" path="doctorname" value="${Id}"
										placeholder="doctorname" />	
										
										<form:errors path="doctorname" class="text-danger" name="user_name_error"/>
								    </div>      
                                
    							    
								 
                               </div>
                                 
                          ${Id}
                         
                               
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
  
  
 
<%@ include file="../javascript.jsp"%>
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

   