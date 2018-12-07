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

           <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                          <h4 class="page-title">Prescrition</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->


                <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <!-- <div class="panel-heading">
                                <h4>Invoice</h4>
                            </div> -->
                            <div class="panel-body">
                                <div class="clearfix">
                                    <div class="pull-left">
                                        <h3 class="text-right"><i class="mdi mdi-radar"></i>SmartCare</h3>
                                    </div>
                                    <div class="pull-right">
                                        <h6>QR CODE <br>
                                            <strong>2015-04-23654789</strong>
                                        </h6>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                
                                    <div class="col-12">
                                    <c:forEach items="${doctordetials}" var="report">
                                        <div class="pull-left m-t-30">
                                            <address>
                                                <strong>${report.firstname}${report.middlename}${report.lastname}</strong><br>
                                              ${report.specialty}<br>
                                              ${report.descriptionprofessionalStatement}<br>
                                                <abbr title="Phone">${report.phone}</abbr>${report.BMDCRegNo}
                                            </address>
                                        </div>
                                        	</c:forEach>
                                        
                                        <div class="pull-right m-t-30">
                                          <c:forEach items="${patient}" var="report">
                                             <div class="pull-left m-t-70">
                                          
                                            <address>
                                                <strong>${report.firstname}${report.middlename}${report.lastname}</strong><br>
                                                795 Folsom Ave, Suite 600<br>
                                                San Francisco, CA 94107<br>
                                                <abbr title="Phone">P:</abbr> (123) 456-7890
                                            </address>
                                        </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                
                                
                                <div class="m-h-50"></div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table-responsive">
                                            <table class="table m-t-30">
                                                <thead>
                                                <tr>
                                                    <th>Type</th>
                                                    <th>Medicine Name </th>
                                                    <th>MG/ML</th>
                                                    <th>Duration</th>
                                                    <th>Days</th>
                                                    <th>Comment</th>
                                               	</tr>
								</thead>
								<tbody>
									<c:forEach items="${medicine}" var="report">
										<tr>
												<td>${report.medicine_type}</td>
												<td>${report.medicine_name}</td>
												<td>${report.medicine_mg}</td>
												<td>${report.medicine_dose}</td>
													<td>${report.medi_duration}</td>
												<td>${report.medi_comments}</td>
										<td>		 
						
							</div>
					
  
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
                                
                              <!--   <div class="row">
                                    <div class="col-6">
                                        <div class="clearfix m-t-40">
                                            <h5 class="small text-inverse">PAYMENT TERMS AND POLICIES</h5>

                                         
                                        </div>
                                    </div> -->
                              
                                <hr>
                                <div class="d-print-none">
                                    <div class="text-right">
                                        <a href="javascript:window.print()" class="btn btn-dark waves-effect waves-light"><i class="fa fa-print"></i></a>
                                        <a href="#" class="btn btn-primary waves-effect waves-light">Submit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
	
	
 
            
                </div>
                </div>


     

  
<%@ include file="../javascript.jsp"%>
	 
</html>
