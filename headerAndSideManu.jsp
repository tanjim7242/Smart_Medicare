<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<!-- saved from url=(0045)http://coderthemes.com/minton_1.4/green_hori/ -->
<html class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Infrastraucture">
        <meta name="author" content="Mechanixlab Lab">

        <link rel="shortcut icon" href="http://coderthemes.com/minton_1.4/green_hori/assets/images/favicon_1.ico">

        <title>MyApp</title>

       

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->


    <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<%@ include file="css.jsp"%>
<%@ include file="javascript.jsp"%>
    <body>


        <!-- Navigation Bar-->
        <header id="topnav">
        
            <div class="topbar-main">
                <div class="container">

                    <!-- Logo container-->
                    <div class="logo">
                        <a href="http://#m/minton_1.4/green_hori/index.html" class="logo"><i class="md md-equalizer"></i> <span>SmartCare</span> </a>
                    </div>
                    <!-- End Logo container-->

                    <div class="menu-extras">

                        <ul class="nav navbar-nav navbar-right pull-right">
                            <li>
                                <form role="search" class="navbar-left app-search pull-left hidden-xs">
                                     <input type="text" placeholder="Search..." class="form-control">
                                     <a href=""><i class="fa fa-search"></i></a>
                                </form>
                            </li>

                            <li class="dropdown">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile" data-toggle="dropdown" aria-expanded="true">${username}<!-- <img src="./theme/avatar-1.jpg" alt="user-img" class="img-circle"> --> </a>
                                <ul class="dropdown-menu">
                                   <!--  <li><a href="javascript:void(0)"><i class="ti-user m-r-5"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-settings m-r-5"></i> Settings</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-lock m-r-5"></i> Lock screen</a></li> -->
                                    <li><a href="javascript:formSubmit()">Logout</a></li>
                                </ul>
                            </li>
                        </ul>

                        <div class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </div>
                    </div>

                </div>
            </div>
            <!-- End topbar -->

 <security:authorize  access="hasAnyRole('ROLE_ADMIN' )">
     

            <!-- Navbar Start -->
            <div class="navbar-custom">
                <div class="container">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu active">
                            <a href="http://coderthemes.com/minton_1.4/green_hori/index.html"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>Product Category</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">Manage</a></li>
                              
                            </ul>
                        </li>




      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>Reports</a>
                            <ul class="submenu">
                                <li><a href="components-grid.html">View</a></li>
                               
                               
                            </ul>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div>
            </div>
            </div>
            
            
            </security:authorize>
            
            
            
            
             <security:authorize  access="hasAnyRole('ROLE_DOCTOR' )">
     

            <!-- Navbar Start -->
            <div class="navbar-custom">
                <div class="container">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu active">
                            <a href="http://coderthemes.com/minton_1.4/green_hori/index.html"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>Prescription</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/doctor/prescrition">Create Prescription</a></li>
                                  <li><a href="${pageContext.request.contextPath}/doctor/prescritionInvoic">Prescription View</a></li>
                              
                            </ul>
                        </li>
                         <li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>Appropient  List</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/doctor/appropitntlisttable">View Appropiment</a></li>
                              
                            </ul>
                        </li>
                         <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/doctor/doctorprofile"><i class="md md-invert-colors-on"></i>DOCTOR Profile</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/doctor/doctorprofile">Doctor Profile</a></li>
                              
                            </ul>
                        </li>
                         <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>DOCTOR</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">Manage DOCTOR</a></li>
                              
                            </ul>
                        </li>
                         <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>DOCTOR</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">Manage DOCTOR</a></li>
                              
                            </ul>
                        </li>
                        




      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>Doctor</a>
                            <ul class="submenu">
                                <li><a href="components-grid.html">View</a></li>
                               
                               
                            </ul>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div>
            </div>
            </div>
            
            
            </security:authorize>
            
            
            
            
            
                
             <security:authorize  access="hasAnyRole('ROLE_PATIENT' )">
     

            <!-- Navbar Start -->
            <div class="navbar-custom">
                <div class="container">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu active">
                            <a href="${pageContext.request.contextPath}/patient/dashboard"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>Apporiment</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/patient/confirmapproment">Comfirm Apporiment </a></li>
                                 <li><a href="${pageContext.request.contextPath}/patient/futureappointment">Create New Apporiment </a></li>
                              
                            </ul>
                        </li>



      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>PATIENT prescrition</a>
                            <ul class="submenu">
                                <li><a href="${pageContext.request.contextPath}/patient/prescritionInvoic">prescritionInvoic</a></li>
                                  <a href="${pageContext.request.contextPath}/patient/prescritionlist">All Prescrition</a>
                               
                            </ul>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div>
            </div>
            </div>
            
            
            </security:authorize>
            
            
            
             
                
             <security:authorize  access="hasAnyRole('ROLE_CLINIC')">
     

            <!-- Navbar Start -->
            <div class="navbar-custom">
                <div class="container">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu active">
                            <a href="http://coderthemes.com/minton_1.4/green_hori/index.html"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>Test</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/clinic/prescritionInvoic">View Test</a></li>
                              
                            </ul>
                        </li>
                        
                           <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>ROLE_CLINIC</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">ROLE_CLINIC</a></li>
                              
                            </ul>
                        </li>




      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>ROLE_CLINIC</a>
                            <ul class="submenu">
                                <li><a href="components-grid.html">ROLE_CLINIC</a></li>
                               
                               
                            </ul>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div>
            </div>
            </div>
            
            
            </security:authorize>
            
            
            
            
             
                
             <security:authorize  access="hasAnyRole('ROLE_PHARMACY' )">
     

            <!-- Navbar Start -->
            <div class="navbar-custom">
                <div class="container">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        <li class="has-submenu active">
                            <a href="http://coderthemes.com/minton_1.4/green_hori/index.html"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>PHARMACY Prescrition</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/pharmacy/prescritionInvoic">ROLE_PHARMACY</a></li>
                              
                            </ul>
                        </li>
 							<li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>ROLE_PHARMACY</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">ROLE_PHARMACY</a></li>
                              
                            </ul>
                        </li>




      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>ROLE_PHARMACY</a>
                            <ul class="submenu">
                                <li><a href="components-grid.html">ROLE_PHARMACY</a></li>
                               
                               
                            </ul>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div>
            </div>
            </div>
            
            
            </security:authorize>
            
            
            
            
            
            
            
        </header>
        
        <!-- End Navigation Bar-->


        <!-- =======================
             ===== START PAGE ======
             ======================= -->


      


                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                               Distributor Manager
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div> <!-- end container -->
        </div>
        <!-- End wrapper -->


<span>
    <!-- For login user -->
    <c:url value="/login/user-login?logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
</span>
<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>



    
</body></html>