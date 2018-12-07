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
                            <div class="btn-group pull-right">
                                <ol class="breadcrumb hide-phone p-0 m-0">
                                    <li class="breadcrumb-item"><a href="#">Minton</a></li>
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Welcome !</h4>
                        </div>
                    </div>
                </div>
             
                <!-- end page title end breadcrumb -->


                <div class="row">
                     
                     
                     
                     <c:forEach items="${apromentid}" var="report">
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-simple-chart text-right card-box">
                          <i class="mdi mdi-download text-pink"></i>
                              <li><a href="${pageContext.request.contextPath}/patient/prescritionInvoic/${report.userName}/${report.appromentid}/${report.appromentid}/${report.uuId}">see prescption</a>
                            
                        </div>
                    </div>
                    </c:forEach>
                    
      <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"	commandName="${productVOval}">
                
 	</form:form>


            </div>
                </div>
                </div>

  
<%@ include file="../javascript.jsp"%>
	 
</html>

<!-- <script type="text/javascript">

$( document ).ready(function()
		{
	var currentColor = localStorage.getItem('bgcolor');
	  console.log( "" );
	  window.location = "${pageContext.request.contextPath}/patient/confirmapproment/"+currentColor;

});
</script>
	  -->
