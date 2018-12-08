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
      <!-- ===================== Footer style 1 start ===================== -->
	<!-- contact start -->
	<section id="contact" class="contact">
		<div class="container">
			<div class="row">				
				<!-- contact-left -->
				<div class="col-xs-12 col-sm-12 col-md-5">
					<div class="footer-cont-left">
						<div class="footer-logo">
							<img src="${pageContext.request.contextPath}/resources/hometheme/img/logo-footer.png" alt="">
						</div>
						<div class="footer-content">					  
						  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
						</div>
						<div class="social-network">
							 <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							 <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							 <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							 <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
							 <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
						</div>
					</div>				   
				</div>
				
				<!-- contact-right -->
				<div class="col-xs-12 col-sm-12 col-md-4 offset-md-3">
					<div class="footer-content">
						<h2>Get in touch</h2>
						<div class="row">
							<div class="col-md-1 col-xs-1">
								<div class="footer-icon f-icon">
									<a href="#"><i class="fa ftr-icon fa-map-marker fa-2x"></i></a>
								</div>
							</div>
							<div class="col-md-9">
								<div class="footer-icon f-cont">
									<span>PO Box 16122, Collins Street West,</span> <br> <span>Victoria 8007, United States.</span>
								</div>
							</div>
						</div>
							
						<div class="row">
							<div class="col-md-1 col-xs-1">
								<div class="footer-icon f-icon">
									<a href="#"><i class="fa ftr-icon fa-phone fa-2x"></i></a>
								</div>
							</div>
							<div class="col-md-9">
								<div class="footer-icon f-cont">
									<span class="phone-padding">+1 200 123 4567 </span><br><span class="phone-padding-break">+1 200 123 4567 </span>
								</div>
							</div>
						</div>
							
						<div class="row">
							<div class="col-md-1 col-xs-1">
								<div class="footer-icon f-icon">
									<a href="#"><i class="fa ftr-icon fa-envelope-o fa-2x"></i></a>
								</div>
							</div>
							<div class="col-md-9">
								<div class="footer-icon f-cont">
									<span class="messege-padding">info@yoursite.com</span><br><span class="messege-padding-break">contact@yoursite.com</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
   <!-- contact end -->

	<!-- Footer start -->
	<section id="footer" class="footer">
		<div class="footerarea">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="copyright">
							<p><span>&copy; MedicLab | All rights reserved. | Design By </span><a href="http://dotthemes.com/" target="_blank">DotThemes</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
   </section>
   <!-- footer end -->
   <!-- ===================== Footer style 1 End ===================== -->
	
    <!-- ===================== All jQuery Plugins ===================== -->
  <%@ include file="javascript_home.jsp"%>
          
        
 
      
      



    
</body></html>