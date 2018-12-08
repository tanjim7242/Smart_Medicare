<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>sir design</title>
	

	
	
	<%@ include file="css_paitent.jsp"%>
	


</head>
<body>
	
	<div class="col-md-10 col-md-offset-1 ">
		
		<div class="header"> 
			<div class="container-fluid">	
					<div class="header-left">
						<img src="${pageContext.request.contextPath}/resources/paitenttheme/images/logo.PNG" alt="logo" />
						<p><strong> Smart Care <br />VALLEY MEDICAL CENTER</strong><br />Hospital & Center </p>
						<h2>my <strong> Health</strong></h2>
					</div>
				
				
				<div class="header-right">
					<div class="pull-right"> 
						<a href="#"> <strong> Ver en Espanol</strong></a>
						<h6>Wekcome,</h6>
						<a href="#"> <strong> Shahnewaz Siddique</strong></a> <br />
						<div class="btn btn-primary ">logout</div>
					</div>
						
				</div>
			</div>
		</div>
		
		<div class="main-area"> 
		
			<div class="nav-area"> 
			

				<ul class="nav nav-pills">
					<li class="dropdown navli"><a href="${pageContext.request.contextPath}/patient/confirmapproment" class="dropdown-toggle"><i class="fas fa-home"></i>Home</a></li>
					<li class="dropdown navli"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="far fa-envelope"></i>Masseging <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Inbox</a></li>
							<li> <p>ghfhjhkgj</p> </li>
							
							
						</ul>
					</li>
					
									
					<li class="dropdown navli"><a href="${pageContext.request.contextPath}/patient/futureappointment" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-briefcase-medical"></i> Appointments <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/patient/futureappointment">Future Application</a></li>
							<li><a href="#">Upcoming appointments</a></li>
							<li>kjguyfgjkhgjhgjh</li>
							
						</ul>
					</li>
					<li class="dropdown navli"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="far fa-envelope"></i>Medical Record <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">What's In My Records</a></li>
							<li>jkhhgfghv</li>
							<li>hgvhgvhgvg</li>
							<li>fdhgfjhhgj</li>
						</ul>
					</li>
					<li class="dropdown navli"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="far fa-envelope"></i>Medications <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">My Medicatiosd</a></li>
							<li><a href="#">Prescription</a></li>
							
						</ul>
					</li>
					<li class="dropdown navli"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Billing <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Billing Acct</a></li>
							<li><a href="#">Billing Summary</a></li>
							
						</ul>
					</li>
					<li class="dropdown navli"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fab fa-whmcs"></i>My Account <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Demographics</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">Notification</a></li>
							<li><a href="#">Contuct Us</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>

                         <!--    <li class="dropdown">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile" data-toggle="dropdown" aria-expanded="true">Suman<img src="./theme/avatar-1.jpg" alt="user-img" class="img-circle"> </a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"><i class="ti-user m-r-5"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-settings m-r-5"></i> Settings</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-lock m-r-5"></i> Lock screen</a></li>
                                    <li><a href="javascript:formSubmit()">Logout</a></li>
                                </ul>
                            </li> -->
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
     

         <%--    <!-- Navbar Start -->
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
            --%>
            
            </security:authorize>
            
            
            
           <%--  
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
                            <a href="http://coderthemes.com/minton_1.4/green_hori/index.html"><i class="md md-dashboard"></i>Dashboard</a>
                        </li>
                
                        <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product/manageproductcategory.do"><i class="md md-invert-colors-on"></i>ROLE_PATIENT</a>
                            <ul class="submenu">
                               <li><a href="${pageContext.request.contextPath}/product/manageproductcategory.do">ROLE_PATIENT</a></li>
                              
                            </ul>
                        </li>




      				<li class="has-submenu">
                            <a href="#"><i class="md md-invert-colors-on"></i>ROLE_PATIENT</a>
                            <ul class="submenu">
                                <li><a href="components-grid.html">ROLE_PATIENT</a></li>
                               
                               
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
            
            
            
            
             --%>
            
            
        </header>
        
        <!-- End Navigation Bar-->


        <!-- =======================
             ===== START PAGE ======
             ======================= -->


      


 <%@ include file="javascript_paitent.jsp"%>           


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