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



<%@ include file="../css_paitent.jsp"%>
 <%@ include file="../javascript_home.jsp"%>

</head>
<%@ include file="../patient_header.jsp"%>

       <body>
          <div class="wrapper">
            <div class="container">
       
       <div class="main-part"> 
				<div class="container"> 
					<div class="written-part"> 
						<div class="imagems"> 
							<img src="${pageContext.request.contextPath}/resources/paitenttheme/images/appointment.png" />
						</div>
						<div class="heading"> 
							<h2> <b> Future Appointment</b>
								<div class="print pull-right"> 
									<a href="#"><div class="glyphicon glyphicon-print" title="Print"> </div></a>
								</div>
							</h2>
						</div>
						
						<div>
							<hr />
						</div>
						<div class="written-main"> 
							<h4> <b> myHealth Online is not to be use for urgent request. If you require immidiate medical attention or are having a <br /> MEDICAL EMERGENCY dial 911. </b></h4> <br />
							<h5> <b> please allow 3 business days for a response </b></h5> <br />
							<p>Choose who you would like to schedule an appointment with, and the preferend date and timr. You may also inter additional comments about your appointment request for the schedules to review </p> <br />
							<p>If you would like to make an appointment, please  <a href="#">Prescription Request</a> </p> <br />
							
						</div>
						
							<div class="last-box">
								<h3><b>From: Shahnewaz Siddique [100221887]</b></h3>
								<hr />
								<form class="Table-part">
										 <form:form action="${pageContext.request.contextPath}patient/futureappointment" method="post"	commandName="productVO">
												<label for="Want"> Want to See: </label>
												
												      <form:select class="form-control"  path="doctordeparmetname">
                                                            <form:options items="${genderlsit}" />
                                                        </form:select>
		  							<form:errors path="doctordeparmetname" class="text-danger" name="role_manager_error"/>
													<br >
													<br >
												<label for="Want"> Want to See: </label>
												
												   <form:select class="form-control"  path="doctorname">
                                                            <form:options items="${genderlsit}" />
                                                        </form:select>
		  							<form:errors path="doctorname" class="text-danger" name="role_manager_error"/>
													<br >
													<br >
												<div class="form-group">
													<label class="control-label col-sm-2" for="Reson">Reson for visit:</label>
														<form:input type="text" class="form-control" path="lastname"
										placeholder="Last Name" required="true"/>	
										
										<form:errors path="lastname" class="text-danger" name="last_name_error"/>
												 </div>
													<br />
													<br />
													
												<div class="form-inline">	
													<div class="form-group">
														<b>Preferred dates: </b>
														<label for="from">From:</label>
														<form:input type="text" class="form-control" path="lastname"
										placeholder="Last Name" required="true"/>	
										
										<form:errors path="lastname" class="text-danger" name="last_name_error"/>
													</div>
												
													<div class="form-group">
														<label for="dateto">----To:</label>
														<form:input type="text" class="form-control" path="lastname"
										placeholder="Last Name" required="true"/>	
										
										<form:errors path="lastname" class="text-danger" name="last_name_error"/>
													</div>
							
												</div>
												<br>
												<div class="form-inline">	
													<div class="form-group">
														<b>Limit times to: </b>
														<div class="checkbox">
															<label><input type="checkbox" name="remember"> All available</label>
														</div>
														<div class="checkbox">
															<label><input type="checkbox" name="remember"> Use my preferences</label>
														</div>
														<div class="checkbox">
															<label><input type="checkbox" name="remember"> Other</label>
														</div>
													</div>
												</div>
												<br />
											<textarea rows="10" cols="150" placeholder="Write something">
												
											</textarea>	
											<center> <button type="submit" class="btn btn-primary">Submit</button></center>
									</form:form>
							</div>
						</div>
					</div>
				</div>
				     </body>
<%@ include file="../javascript.jsp"%>
   
  
  </html>

   