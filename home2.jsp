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

    <%-- <!-- ===================== All CSS Files ===================== -->
    <link href="${pageContext.request.contextPath}/resources/hometheme/css/bootstrap.min.css" rel="stylesheet"
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
 
   <link href="${pageContext.request.contextPath}/resources/homethemestyle.css" rel="stylesheet" >

    <!-- Responsive css -->
    <link href="${pageContext.request.contextPath}/resources/homethemecss/responsive.css">
   <link href="${pageContext.request.contextPath}/resources/hometheme/css/nivo-slider.css" rel="stylesheet"
      type="text/css" />
  
 <%@ include file="css_home.jsp"%>
 <%@ include file="javascript_home.jsp"%>

    <!--[if IE]>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
    <!-- Style css -->
  

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
                                                        <li><a href="${pageContext.request.contextPath}/pharmacy/pharmacyRegistation">pharmacy Registation</a></li>
                                                      <li>  <a href="${pageContext.request.contextPath}/login"><i class="md md-invert-colors-on"></i>Pharmacy Login</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                   <li><a href="#">Clinic Service<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                                    <ul class="sub-menu">
                                                        <li><a href="${pageContext.request.contextPath}/clinic/clinicRegistation">Clinic Registation</a></li>
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
                                       
                                        <li><a href="contact.html">contact</a></li>
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
    <!--  ===================== Header Area End ===================== -->
	
	<!--  ===================== Slider area start ===================== -->
    <section class="slider-area">
        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider">
                <img src="${pageContext.request.contextPath}/resources/hometheme/img/slider/slide-01.jpg" alt="" title="#htmlcaption1" />
                <img src="${pageContext.request.contextPath}/resources/hometheme/img/slider/slide-02.jpg" alt="" title="#htmlcaption2" />
            </div>
            <!-- CAPTION 1 -->
            <div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="slider-content">
                                <!-- Direction 1 -->
                                <div class="wow bounceInRight" data-wow-duration="1.5" data-wow-delay=".5s ">
                                     <h1 class="title1">Better <span class="color">medicine</span></h1>
                                </div>
                                <!-- Direction 2 -->
                                <div class="wow bounceInRight" data-wow-duration="2" data-wow-delay=".7s ">
                                    <p class="title2">advanced technology and Care</p>
                                </div>
                                <!-- Direction 3 -->
                                <div class="wow bounceInUp" data-wow-duration="1.5" data-wow-delay=".9s ">
                                    <a href="#" class="ready-btn">read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CAPTION 1 END -->

            <!-- CAPTION 2 START -->
            <div id="htmlcaption2" class="nivo-html-caption slider-caption-1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="slider-content">
                                <!-- Direction 1 -->
                                <div class="wow slideInLeft" data-wow-duration="1.5" data-wow-delay=".5s ">
                                    <h1 class="title1">skilled <span class="color">doctors</span> </h1>
                                </div>
                                <!-- Direction 2 -->
                                <div class="wow slideInLeft" data-wow-duration="2" data-wow-delay=".7s ">
                                    <p class="title2">advanced technology and Care</p>
                                </div>
                                <!-- Direction 3 -->
                                <div class="wow bounceInUp" data-wow-duration="1.5" data-wow-delay=".9s ">
                                    <a href="#" class="ready-btn">read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CAPTION 2 END -->
        </div>
    </section>
	<!--  ===================== Slider area End ===================== -->
	
	<!--  ===================== About us area start ===================== -->
    <section class="about_us_area section_padding_100_70 section_padding">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <!-- About us text start -->
                    <div class="about_us_text">
						<p>Welcome to our Hospital</p>
                        <h3>About <span>MedicLab</span></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor doloremque quaerat modi accusamus, deserunt quos iusto beatae facilis expedita quisquam molestiae harum distinctio, vero mollitia, corporis repellat.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus repellat blanditiis non tenetur modi.</p>
                    </div>
                    <!-- About us special quote start -->
                    <div class="special_service">
                        <div class="row">
                            <div class="col-md-6">
                                <!-- quote -->
                                <div class="single_special_service">
                                    <h5><i class="icofont icofont-first-aid-alt"></i>
									Medical Counseling</h5>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- quote -->
                                <div class="single_special_service">
									<h5><i class="icofont icofont-bed-patient"></i>
                                    Rehabilitation Center </h5>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- quote -->
                                <div class="single_special_service">
									<h5><i class="icofont icofont-doctor"></i>
                                    Qualified Doctors</h5>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- quote -->
                                <div class="single_special_service">
									<h5><i class="icofont icofont-ambulance"></i>
                                    Emergency Services</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <!-- About us thumb start -->
                    <div class="about_us_thumb">
                        <img src="${pageContext.request.contextPath}/resources/hometheme/img/about-us.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!--  ===================== About us area end ===================== -->
	
	<!-- ===================== Call to action Area Start ===================== -->
    <div class="call_to_action">
        <div class="container">
            <div class="row">
				<div class="col-md-4">
					<div class="col">
						<div class="call_to">
							<div class="call_to_image hidden-sm-down">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/appointment.png" alt="" width="189" height="219">
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="col">
						<div class="call_to">					
							<h3>Make an Appointment</h3>
						</div>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="col">
						<div class="call_to">
							<a class="btn btn-default" href="#" role="button">Book Appointment Now</a>
						</div>
					</div>
				</div>
				
            </div>
        </div>
    </div>
    <!-- ===================== Call to action Area End ===================== -->
	

    <!-- ===================== Why Choose/Feature Area Start ===================== -->
    <section class="features_area area1 section_padding_100_70 section_padding">
        <div class="container">
            <div class="row">
                <div class="col">
                    <!-- Section Heading Start -->
                    <div class="section_heading wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                        <h4>Why <span>Choose Us</span></h4>
						<p class="section-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br> nibh euismod tincidunt ut laoreet dolore magna.</p>
                    </div>
                </div>
            </div>
            <!-- end./ row -->

            <div class="row">
                <!-- Single Feature Area Start -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single_feature wow fadeInUp item" data-wow-delay="0.2s" style="height: 245px; visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                        <div class="feature_img">
                            <i class="icofont icofont-doctor-alt"></i>
                        </div>
                        <!-- Single Feature Image Area End -->
                        <div class="feature_text">
                            <h5>Qualified Doctors</h5>
                            <p>Lorem ipsum dolors item amet coti adipisicing elt, sed do eimd at.</p>
                        </div>
                        <!-- Single Feature Text Area End -->
                    </div>
                </div>
                <!-- Single Feature Area End -->

                <!-- Single Feature Area Start -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single_feature wow fadeInUp item" data-wow-delay="0.6s" style="height: 245px; visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
                        <div class="feature_img">
                            <i class="icofont icofont-operation-theater"></i>
                        </div>
                        <!-- Single Feature Image Area End -->
                        <div class="feature_text">
                            <h5>Operation Theater</h5>
                            <p>Lorem ipsum dolors item amet coti adipisicing elt, sed do eimd at.</p>
                        </div>
                        <!-- Single Feature Text Area End -->
                    </div>
                </div>
                <!-- Single Feature Area End -->

                <!-- Single Feature Area Start -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single_feature wow fadeInUp item" data-wow-delay="0.8s" style="height: 245px; visibility: visible; animation-delay: 0.8s; animation-name: fadeInUp;">
                        <div class="feature_img">
                            <i class="icofont icofont-money-bag"></i>
                        </div>
                        <!-- Single Feature Image Area End -->
                        <div class="feature_text">
                            <h5>Affordable Cost</h5>
                            <p>Lorem ipsum dolors item amet coti adipisicing elt, sed do eimd at.</p>
                        </div>
                        <!-- Single Feature Text Area End -->
                    </div>
                </div>
                <!-- Single Feature Area End -->
				
				<!-- Single Feature Area Start -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single_feature single_feature_last wow fadeInUp item" data-wow-delay="0.8s" style="height: 245px; visibility: visible; animation-delay: 0.8s; animation-name: fadeInUp;">
                        <div class="feature_img">
                            <i class="icofont icofont-pills"></i>
                        </div>
                        <!-- Single Feature Image Area End -->
                        <div class="feature_text">
                            <h5>Free Medicine</h5>
                            <p>Lorem ipsum dolors item amet coti adipisicing elt, sed do eimd at.</p>
                        </div>
                        <!-- Single Feature Text Area End -->
                    </div>
                </div>
                <!-- Single Feature Area End -->
            </div>
        </div>
    </section>
    <!-- ===================== Feature Area End ===================== -->
	
	<!-- ===================== Our Services Area Start ===================== -->
	<section id="features" class="section_padding_100_70 section_padding">
		<div class="container">
			<div class="row">
				<div class="col">
					<!-- Section Heading Start -->
					<div class="section_heading wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
						<h4>Our <span>Services</span></h4>
						<p class="section-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br> nibh euismod tincidunt ut laoreet dolore magna.</p>
					</div>
				</div>
			</div>
		<!-- end./ row -->
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="content-left text-right">
						<div class="box-item left">
							<span class="icon">
								<i class="icofont icofont-tooth"></i>
							</span>
							<div class="text">
								<h4>Dental Care</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</div>
						</div>
						<div class="box-item left">
							<span class="icon">
								<i class="icofont icofont-icu"></i>
							</span>
							<div class="text">
								<h4>Medical Consulting</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</div>
						</div>
						<div class="box-item left">
							<span class="icon">
								<i class="icofont icofont-laboratory"></i>
							</span>
							<div class="text">
								<h4>Laboratory</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="show-box">
						<img src="${pageContext.request.contextPath}/resources/hometheme/img/feature.png" alt="">
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="content-right text-left">
						<div class="box-item right">
							<span class="icon">
								<i class="icofont icofont-blood"></i>
							</span>
							<div class="text">
								<h4>Blood Bank</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
							</div>
						</div>
						<div class="box-item right">
							<span class="icon">
								<i class="icofont icofont-paralysis-disability"></i>
							</span>
							<div class="text">
								<h4>Cancer Care</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</div>
						</div>
						<div class="box-item right">
							<span class="icon">
								<i class="icofont icofont-pulse"></i>
							</span>
							<div class="text">
								<h4>Heart Surgery</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row"> <!-- Start Center Button -->
				<div class="col-md-12">
					<div class="section-btn wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
						<a href="services.html" class="view-all-btn">All Services</a>
					</div>
				</div>
			</div> <!-- End Center Button -->
	   </div>
	</section>
	<!-- ===================== Our Services Area end ===================== -->
	
	<!-- ===================== Our Team Area Start ===================== -->	
	<section class="team_area area1 section_padding_100_70 section_padding">
		<div class="container"> 	 			
			<div class="row">
				<div class="col">
					<!-- Section Heading Start -->
					<div class="section_heading wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
						<h4>Best <span>Doctors</span></h4>
						<p class="section-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br> nibh euismod tincidunt ut laoreet dolore magna.</p>
					</div>
				</div>
			</div>
			<!-- end./ row -->
					
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->						
					<div class="single-team"> 						
						<div class="team-bg team-bg-shape">
							<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_1.png" class="doctor-img" alt="Doctor Image">
						</div>							
						<h3>Arthur James</h3>
						<p>Neurology</p>
						<ul class="social-icon"> 
						<!-- Social Icon -->
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>		
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->
					<div class="single-team">
						<div class="team-bg team-bg-shape">
							<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_2.png" class="doctor-img" alt="Doctor Image">
						</div>
						<h3>Jennifer Frank</h3>
						<p>Cosmetic Surgeon</p>
						<ul class="social-icon"> <!-- Social Icon -->
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>	
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"><!-- Team Profile -->
					<div class="single-team">
						<div class="team-bg team-bg-shape">
							<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_3.png" class="doctor-img" alt="Doctor Image">
						</div>
						<h3>Thomas Marshal</h3>
						<p>Cardiology</p>
						<ul class="social-icon"> <!-- Social Icon -->
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>					
			</div>	
			
			<div class="row"> <!-- Start Center Button -->
				<div class="col-md-12">
					<div class="section-btn wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
						<a href="${pageContext.request.contextPath}/doctor/alldoctor" class="view-all-btn">All Doctors</a>
					</div>
				</div>
			</div> <!-- End Center Button -->
		</div> 
	</section>
    <!-- ===================== Our Team Area End ===================== -->
	

    <!-- ===================== Testimonial Area Start ===================== -->
	<section class="testimonial_area section_padding_100_70 section_padding">
		<div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_heading section-heading-testimonial wow fadeInUp" style="visibility: hidden; animation-name: none;">
                        <h4>Patient’s <span>Feedback</span></h4>
						<p class="section-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy <br> nibh euismod tincidunt ut laoreet dolore magna.</p>
                    </div>
                </div>
            </div>		
			<div class="row">
				<div class="col-sm-4 col-md-4"> <!-- Testimonial 1 -->
					<div class="single-testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/hometheme/img/testimonials/testimonial_01.png" class="client-img wow fadeIn" alt="Client Image" style="visibility: hidden; animation-name: none;">
						<h3>James Gandofin</h3>
						<div class="testimonial-content wow fadeIn" style="visibility: hidden; animation-name: none;">
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
						</div>
						<div class="testimonial-icon"> <!-- Reating Icon -->
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-md-4"> <!-- Testimonial 2 -->
					<div class="single-testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/hometheme/img/testimonials/testimonial_02.png" class="client-img wow fadeIn" alt="Client Image" style="visibility: hidden; animation-name: none;">
						<h3>Jason Riddle</h3>
						<div class="testimonial-content wow fadeIn" style="visibility: hidden; animation-name: none;">
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
						</div>
						<div class="testimonial-icon"> <!-- Reating Icon -->	
							<i class="fa fa-star" aria-hidden="true"></i>	
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star-half-o" aria-hidden="true"></i>
							<i class="fa fa-star-half-o" aria-hidden="true"></i>
						</div>
					</div>
				</div>
				
				<div class="col-sm-4 col-md-4"> <!-- Testimonial 3 -->
					<div class="single-testimonial-item">
						<img src="${pageContext.request.contextPath}/resources/hometheme/img/testimonials/testimonial_03.png" class="client-img wow fadeIn" alt="Client Image" style="visibility: hidden; animation-name: none;">
						<h3>Diane Smith</h3>
						<div class="testimonial-content wow fadeIn" style="visibility: hidden; animation-name: none;">
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
						</div>
						<div class="testimonial-icon"> <!-- Reating Icon -->	
							<i class="fa fa-star" aria-hidden="true"></i>	
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</div>
					</div>
				</div>					
			</div>
		</div>
	</section>	
    <!-- ===================== Testimonial Area End ===================== -->

    
	   
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
          
        
 
      
      


</body>

<!-- Mirrored from dotthemes.com/html/mediclab-demo/mediclab/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Mar 2018 20:10:25 GMT -->
</html>