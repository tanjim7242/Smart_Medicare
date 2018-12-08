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


<%@ include file="css_home.jsp"%>
 <%@ include file="javascript_home.jsp"%>

</head>
 <%@ include file="homeheader.jsp"%> 


        <div class="wrapper">
            <div class="container">
            
            
            
            
          <%--   background-image: src("${pageContext.request.contextPath}/resources/theme/img/websitebg.png"); --%>
   			
                <h4 class="text-success counter" align="center"></h4>
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
                       
                       
                       
                                   
                           <!-- Breadcumb area start -->
    <section class="breadcumb_area" style="background-image: url(img/breadcumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="breadcumb_section">
                        <!-- Breadcumb page title start -->
                        <div class="page_title">
                            <h3>Contact</h3>
                        </div>
                        <!-- Breadcumb page pagination start -->
                        <div class="page_pagination">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                                <li>Contact</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcumb area end -->

    <!-- ==================== Contact Form Area Start ==================== -->
    <section class="message_now_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Message Title -->
                    <div class="message_title">
                        <h3>Get in Touch</h3>
                    </div>
                </div>
            </div>
            <!-- .end row -->
			<div class="row">
				<div class="col-12 col-md-12">
					<div class="contact-message">
						<form id="contact-form" action="http://dotthemes.com/html/mediclab-demo/mediclab/mail.php" method="post">
							<p class="form-messege"></p>
							<div class="single-input">
								
									<form:input type="text" class="form-control" path="firstname"
										placeholder="Full Name" required="true"/>	
							</div>
							<div class="single-input input-pd">
								
									<form:input type="text" class="form-control" path="email"
										placeholder="E-mail" required="true"/>	
							</div>
							<div class="single-input">
								
									<form:input type="text" class="form-control" path="subject"
										placeholder="subject" required="true"/>	
							</div>
							<div class="single-input input-pd">
								
									<form:input type="text" class="form-control" path="phone"
										placeholder="phone" required="true"/>	
							</div>
							<div class="single-input">
								<form:input type="text" class="form-control" path="testdis"
										placeholder="Text" required="true"/>	
									
							</div>
							<div class="send-button">
								<button type="submit">Send</button>
							</div>
						</form>
					</div>
				</div>
					</form:form>
			</div>
        </div>
    </section>
    <!-- ==================== Contact Form End ==================== -->

	<!-- ===================== Newsletter Area Start ===================== -->
	<section class="newsletter_area">
        <div class="container">
            <div class="row ">
                <div class="col-md-6 col-sm-12">
                    <div class="newsletter_text">
                        <h2>Subscribe for newsletter</h2>
                        <p>Don't worry, we hate spam too. We won't share your details with anyone.</p>
                    </div>
                </div>
                <!-- column End -->
                <div class="col-md-4 col-sm-8">
                    <form action="#" _lpchecked="1">
                        <input name="sub_email" placeholder="Email here..." type="email">
                    </form>
                </div>
                <!-- column End -->
                <div class="col-md-2 col-sm-4">
                    <a href="volunteer.html" class="hvr-box-shadow-outset common_btn">Subscribe Now</a>
                </div>
                <!-- column End -->
            </div>
        </div>
    </section>
	<!-- ===================== Newsletter Area End ===================== -->

    <!-- ===================== Footer Area Start ===================== -->
    <footer class="footer_area">
        <div class="container section_padding_100_70">
            <div class="row">
                <!-- Footer About Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_about_us footer-single-part item wow fadeInUp">
                        <div class="title">
                            <img src="img/logo-footer.png" alt="footer logo"/>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut delectus consectetur omnis, alias nulla repudiandae quasi non at ullam, vel officiis unde cum ea. </p>
                    </div>
                </div>
                <!-- Footer About Area End -->
				
				<!-- Contact info Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_contact_info footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>Contact Info</h4>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa ftr-icon fa-map-marker fa-2x" aria-hidden="true"></i>
                            <p>PO Box 16122, Collins Street, Victoria 8007, USA</p>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <a href="tel:+12001234567">+1 200 123 4567</a>
                            <a href="tel:+12001234567">+1 200 123 4567</a>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            <a href="mailto:info@yoursite.com">info@yoursite.com</a>
                            <a href="mailto:contact@yoursite.com">contact@yoursite.com</a>
                        </div>
                    </div>
                </div>
                <!-- Contact info Area End -->

                <!-- Useful Links Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="important_links footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>useful links</h4>
                        </div>
                        <!-- Links Start -->
                        <div class="links">
                            <p><a href="about-us.html">About Us</a></p>
                            <p><a href="services.html">Our Services</a></p>
                            <p><a href="doctors.html">Our Doctors</a></p>
                            <p><a href="gallery-3-column.html">Gallery</a></p>
                            <p><a href="appointment.html">Appointment</a></p>
                            <p><a href="contact.html">Contact Us</a></p>
                        </div>
                        <!-- Links End -->
                    </div>
                </div>
                <!-- Useful Links Area End -->
				
				<!-- Photostream Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_contact_info footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>Instagram Photos</h4>
                        </div>
                        <!-- Photostream start -->
						<div class="instagram-widget">
							<div class="thumbs-outer clearfix">
								<figure class="image-thumb"><img src="img/footer/thumbnail-1.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-2.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-3.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-4.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-5.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-6.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
							</div>
						</div>			
                    </div>
                </div>
                <!-- Photostream Area End -->
            </div>
        </div>

        <!-- Bottom Footer Area Start -->
        <div class="footer_bottom_area">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="footer_bottom wow fadeInDown">
							<div class="copyright">
								<p><span>&copy; MedicLab | All rights reserved | Design By </span><a href="http://dotthemes.com/" target="_blank">DotThemes</a>
							</p>
							</div>
                        </div>
                        <!-- Bottom Footer Copywrite Text Area End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Footer Area End -->
    </footer>
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript_home.jsp"%>
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

   