<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>Wecome to home page</h1>

              <a href="${pageContext.request.contextPath}/login"><i class="md md-invert-colors-on"></i>Login</a>
                 

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<html lang="en">

<!-- Mirrored from dotthemes.com/html/mediclab-demo/mediclab/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Mar 2018 20:09:56 GMT -->
<head>
    <!-- Meta tags -->
	<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Title  -->
    <title>MedicLab - Medical &amp; Health HTML Template</title>

    <!-- Favicon  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/hometheme/img/favicon.ico">

    <!-- ===================== All CSS Files ===================== -->
   <%--  <link href="${pageContext.request.contextPath}/resources/hometheme/css/bootstrap.min.css" rel="stylesheet"
      type="text/css" />
  <link href="${pageContext.request.contextPath}/resources/hometheme/css/style.css" rel="stylesheet"
      type="text/css" />
        
      <link href="${pageContext.request.contextPath}/resources/hometheme/css/responsive.css" rel="stylesheet"
      type="text/css" />
       <link href="${pageContext.request.contextPath}/resources/hometheme/css/animate.css" rel="stylesheet"
      type="text/css" />
  
      
          <link href="${pageContext.request.contextPath}/resources/hometheme/css/font-awesome.min.css" rel="stylesheet"
      type="text/css" />
      
          <link href="${pageContext.request.contextPath}/resources/hometheme/css/icofont.css" rel="stylesheet"
      type="text/css" />
      
          <link href="${pageContext.request.contextPath}/resources/hometheme/css/magnific-popup.css" rel="stylesheet"
      type="text/css" />  --%>
 
 
 <%@ include file="css_home.jsp"%>
 <%@ include file="javascript_home.jsp"%>

    <!--[if IE]>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

  

</head>

<body style="overflow-y: visible;">
    <!-- preloader start -->
    <div id="preloader"></div>
    <!-- /.end preloader -->
   <!--  ===================== Header Area Start ===================== -->
    <header class="header_area">
        <!-- Top Header Area Start -->
        <div class="top_header_area hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <!--  Top Quote Area Start -->
                        <div class="top_quote hidden-sm">
                            <p>Welcome to SmartCare - Medical &amp; Health Care</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <!--  Top Right Area Start -->
                        <div class="top_right_area hidden-sm">
                            <p><i class="fa fa-ambulance"></i> Emergency Call 01778881844</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Header Area  End -->

      <!-- Main Header Area Start -->
        <div class="main_header_area area1">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-12">
                        <!-- Logo Area -->
                        <div class="logo_area">
                            <a href="index.html"><img src="${pageContext.request.contextPath}/resources/hometheme/img/logo.png" alt="Logo"></a>
                        </div>
                    </div>

                    <div class="col-md-9 col-12">
                        <!-- Menu Area -->
                        <div class="main_menu_area">
                            <div class="mainmenu">
                            
                            
                                <nav>
                                    <ul id="nav">
                                        <li><a href="index.html">Home</a>
                                           
                 
                                        </li>
                                        <li class="hidden-md-down current_page_item"><a href="about-us.html">About Us</a></li>
                                        <li><a href="#"> Patient pages<i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                            <ul class="sub-menu">
                                              
                                                <li><a href="${pageContext.request.contextPath}/patient/registation.mjpa">Patient Registration</a></li>
                                              <li>  <a href="${pageContext.request.contextPath}/login"><i class="md md-invert-colors-on"></i>Patient Login</a></li>
                                              
                                            
                                                <li><a href="#">Gallery Pages<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                                    <ul class="sub-menu">
                                                        <li><a href="gallery-4-column.html">Four Column</a></li>
                                                        <li><a href="gallery-3-column.html">Three Column</a></li>
                                                        
                                                    </ul>
                                                </li>
                                               
                                            </ul>
                                        </li>
                                        <li><a href="#">Services<i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                            <ul class="sub-menu">
                                             
                                                   <li><a href="#">Medicine Delivery<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                                    <ul class="sub-menu">
                                                        <li><a href="${pageContext.request.contextPath}/pharmacy/pharmacyRegistation">pharmacy Registration</a></li>
                                                      <li>  <a href="${pageContext.request.contextPath}/login"><i class="md md-invert-colors-on"></i>Pharmacy Login</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                   <li><a href="#">Clinic Service<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                                    <ul class="sub-menu">
                                                        <li><a href="${pageContext.request.contextPath}/clinic/clinicRegistation">Clinic Registration</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/login">Clinic Login</a></li>
                                                        
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Doctors<i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                            <ul class="sub-menu">
                                                <li><a href="${pageContext.request.contextPath}/login">Doctors Login</a></li>
                                                <li><a href="${pageContext.request.contextPath}/doctor/doctorregistation">Doctors Registration</a></li>
                                                <li><a href="doctor-details.html">Doctors Details</a></li>
                                            </ul>
                                        </li>
                                       
                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- mainmenu end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Header Area End -->
    </header>

    
</body>
<%@ include file="javascript_home.jsp"%>

</html>