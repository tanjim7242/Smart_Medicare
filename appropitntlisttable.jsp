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
   
                <!-- Page-Title -->
                <h3 class="text-success counter">${title}</h3>
                 	           <a href="#" class="btn btn-primary waves-effect waves-light m-t-10">
					               Appromet List
					              </a>  
					    
  				
                <div class="row">
               
               
                    <div class="col-sm-12">
  
                        <div class="card-box">
                       <table id="productcategory" class="table table-bordered table-hover">
								<thead >
									<tr>
										<th>Patient  Name</th>
										<th>Date</th>
										<th>Time</th>
										<th>Day</th>
										
										<th>Action</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${appromentlist}" var="report">
										<tr>
												<td>${report.userName}</td>
												<td>${report.date}</td>
												<td>${report.time}</td>
												<td>${report.day}</td>
										<td>		 
						   <li><a href="${pageContext.request.contextPath}/doctor/prescrition">Create Prescription</a>
						   </li>
						       <form:form action="${pageContext.request.contextPath}/doctor/prescrition"  method="GET"	commandName="${productVOval}">
						
						<form:input type="hidden"  class="form-control" path="doctorname" value="${report.day}"
										placeholder="doctorname" />	
										
									
										<form:input type="hidden"  class="form-control" path="uuId" value="${report.uuId}"
										placeholder="doctorname" />	
										
				
									
							<form:input type="hidden"  class="form-control" path="patientid" value="${report.patientid}"
										placeholder="doctorname" />	
										
									
							
							<form:input type="hidden"  class="form-control" path="appromentid" value="${report.appromentid}"
										placeholder="doctorname" />	
										
									
							
                                	
						<form:input type="hidden"  class="form-control" path="firstname" value="${report.firstname} ${report.middlename} ${report.lastname}"
										placeholder="doctorname" />	
									
                               <div class="send-button">
								<button  type="submit" value="submit ">Registation</button>
							</div>
					
  </form:form>
						   </td>
						   
						   
									
										</tr>
										

									</c:forEach>

								</tbody>
							</table>
							
                             </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
            

     

  
<%@ include file="../javascript.jsp"%>
	 
</html>
