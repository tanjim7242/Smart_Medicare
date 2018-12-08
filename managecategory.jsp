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
                <h4 class="text-success counter">${title}</h4>
                 <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					               Create Category
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
							              
                                   <form:form action="${pageContext.request.contextPath}/product/createproductcategory.Do" method="POST"	commandName="productVO">
                                   
                                       <div class="form-group">
                                           </div> 
									    <label for="inputdefault">Category Name</label>
									    
  								<form:input type="text" class="form-control" path="categoryName"
								placeholder="Category Name" required="True" />	
								
									  
  									<div class="form-group">
									  <label for="sel1">Status</label>
									  <form:select class="form-control" path="catstatus">
									    <option value="1">Active</option>
									    <option value="0">Disable</option>
									  </form:select>
								</div>	
								
                                            
                                            
  									<div class="form-group">
									    <label for="inputdefault">Description</label>
									    <form:input type="text" class="form-control" path="categoryDescription" ></form:input>
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

   <script type="text/javascript">
            $(function () {
            	$('.table').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'print'
                    ]
                });
            });

        </script>
