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
							              
                                   <form:form action="${pageContext.request.contextPath}/product/StockInProduct.Do"  method="POST"	commandName="productVO">
                                   
                                   
                              <div class="col-md-6">
                                  
                                            
  										<div class="form-group">
									    <label for="product code">Product Code</label>
									    <form:input type="text" class="form-control" path="productCode" value="${productcode}" readonly="true"  ></form:input>
									  </div>
  						
	
  									<div class="form-group">
									    <label for="product code">Product Name</label>
									    <form:input type="text" class="form-control" path="productname" value="${productName}"  readonly="true"  ></form:input>
									</div>
  									
  									
  									<div class="form-group">
									    <label for="product code">Unit Price</label>
									    <form:input type="text" class="form-control" path="unitPrice" value="${currentprice}" readonly="true" ></form:input>
									</div>
  								
  									</div>
  									
  									<div class="col-md-6">
  									
  									
  									<div class="form-group">
									    <label for="product code">Current Stocks</label>
									    <form:input type="text" class="form-control" id="currentstock" path="stocksOnHand" value="${currentstock}" readonly="true" ></form:input>
									</div>
									
  									<div class="form-group">
									    <label for="product code">Enter New Quantity</label>
									    <form:input type="number" class="form-control" id="newquantity" path="newquantity" onChange="Deductions();"  required="true"></form:input>
									</div>
								
								
								
  									<div class="form-group">
									    <label for="product code">Total Stocks</label>
									    <form:input type="text" class="form-control" id="totalstock" path="totalstock" readonly="true"></form:input>
									</div>
								
  									</div>
  									<form:input type="hidden" path="productNo" value="${productNo}" />
						
  									<input type="submit" class="btn btn-primary" value="Save " />
  									
  									
        						</form:form>
                
                         
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript.jsp"%>
	 
</html>
<script>

function Deductions() {

	var currentstock=$("#currentstock").val();
	var newquantity=$("#newquantity").val();
	var result=parseInt(currentstock)+parseInt(newquantity);
	document.getElementById("totalstock").value=result;
	
}
</script>

   