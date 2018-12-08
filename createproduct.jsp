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

<%@ include file="css.jsp"%>

</head>
<%@ include file="headerAndSideManu.jsp"%>


        <div class="wrapper">
            <div class="container">

               
                <!-- Page-Title -->
                <%-- <h4 class="text-success counter">${title}</h4>
                 --%> <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					${btntitle}
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
                                   
                                   
                              <div class="col-md-6">
                                  <div class="form-group">
                                       <label for="inputdefault">Product Category</label>
									    
		  								<form:input type="text" class="form-control" path="categoryNo"
										placeholder="Product Category"/>	
								      </div>      
                                
                                
                                   <div class="form-group">
                                       <label for="inputdefault">Bar code</label>
									    
		  								<form:input type="text" class="form-control" path="barcode"
										placeholder="Bar Code"/>	
								      </div>      
                                            
  										<div class="form-group">
									    <label for="product code">Product Code</label>
									    <form:input type="text" class="form-control" path="productCode" ></form:input>
									  </div>
  									
  									
  									<div class="form-group">
									    <label for="product code">Product Name</label>
									    <form:input type="text" class="form-control" path="productname" ></form:input>
									</div>
  									
  									
  									<div class="form-group">
									    <label for="product code">Product Description</label>
									    <form:input type="text" class="form-control" path="productDescription" ></form:input>
									</div>
  									</div>
  									
  									<div class="col-md-6">
  									<div class="form-group">
									    <label for="product code">Unit Price</label>
									    <form:input type="text" class="form-control" path="unitPrice" ></form:input>
									</div>
  									
  									
  									<div class="form-group">
									    <label for="product code">Stocks on Hand/Enter Quantity</label>
									    <form:input type="text" class="form-control" path="stocksOnHand" ></form:input>
									</div>
									
									
  									<div class="form-group">
									    <label for="product code">Supplier Name</label>
									    <form:input type="text" class="form-control" path="productwarrenty" ></form:input>
									</div>
  									
  									
  									
  									 <div class="form-group">
									    <label for="product code">Warranty</label>
									    <form:input type="text" class="form-control" path="productDescription" ></form:input>
									</div>
  									
  									
  									</div>
  									<input type="submit" class="btn btn-primary" value="Save " />
  									
  									
        						</form:form>
                
                         
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript.jsp"%>
	 
</html>

   