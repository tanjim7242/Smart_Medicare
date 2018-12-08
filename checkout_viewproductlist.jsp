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
                <h3 class="text-success counter">${title}</h3>
                 	          <%--  <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					               Create Category
					              </a>  
					     --%>
  				
                <div class="row">
               
                <div class="col-sm-12">
  				 <div class="card-box">
               
               
                        <form:form action="${pageContext.request.contextPath}/product/createproductcategory.Do" method="post"	commandName="productVO">
                                   
                                       <div class="form-group">
                               
									    <label for="inputdefault">Product Code</label>
									    
  								<form:input type="text" class="form-control" path="productCode"
								placeholder="Product Code" required="True" />	
								 </div> 
					
					
					        <div class="form-group">
                               
									    <label for="inputdefault">Quantity</label>
									    
  								<form:input type="text" class="form-control" path="productCode"
								placeholder="Product Code"  required="True"/>	
								 </div> 
								 
  									<input type="submit" class="btn btn-primary" value="Add" />	
  									           
  									
        						</form:form>
        						
                </div>
                        
                </div>
               
  <div class="col-lg-8">
                        <div class="card-box">
                            <h4 class="text-dark  header-title m-t-0 m-b-30">Total Revenue</h4>

                            <div class="widget-chart text-center">
                            
                                   <table id="productcategory" class="table table-bordered table-hover">
								<thead >
									<tr>
										<th>Product Code</th>
										<!-- <th>Bar code</th> -->
										<th>Product Name</th>
									<!-- 	<th>Description</th> -->
										<th>Product Category</th>
										<th>Stock In Hand</th>
										<th>Unit Price</th>
										<th>Action</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${productlist}" var="report">
										<tr>
												<td>${report.productCode}</td>
											<%-- 	<td>${report.barcode}</td> --%>
												<td>${report.productname}</td>
												<%-- <td>${report.productDescription}</td> --%>
												<td>${report.categoryName}</td>
												<td>${report.stocksOnHand}</td>
												<td>${report.unitPrice}</td>
												<td>
												
<div class="btn-group">
  <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#">
    Action
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
 
    <li><a href="${pageContext.request.contextPath}/product/StockInProduct.Do?productno=${report.productNo}&currentStock=${report.stocksOnHand}&currentunitprice=${report.unitPrice}&productname=${report.productname}&productcode=${report.productCode}&flg=stockIn">Stock In</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=userbattalionupdate">Change Price</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=userbattalionupdate">Edit</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=usertypeupdate">View Stock In Log</a></li>
   </ul>
</div>								
			
												
												
												</td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
							
                           
                           
                            </div>
                        </div>

                    </div>
                    
                    
                    
                      <div class="col-lg-4">
                        <div class="card-box">
                            <h4 class="text-dark  header-title m-t-0 m-b-30">Total Revenue</h4>

                            <div class="widget-chart text-center">
                                <div id="sparkline1"><canvas width="362" height="165" style="display: inline-block; width: 362px; height: 165px; vertical-align: top;"></canvas></div>
                                <ul class="list-inline m-t-15">
                                    <li>
                                        <h5 class="text-muted m-t-20">Target</h5>
                                        <h4 class="m-b-0">$1000</h4>
                                    </li>
                                    <li>
                                        <h5 class="text-muted m-t-20">Last week</h5>
                                        <h4 class="m-b-0">$523</h4>
                                    </li>
                                    <li>
                                        <h5 class="text-muted m-t-20">Last Month</h5>
                                        <h4 class="m-b-0">$965</h4>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
  
  
  
                    <div class="col-sm-12">
  
  
  
                        <div class="card-box">
                       <table id="productcategory" class="table table-bordered table-hover">
								<thead >
									<tr>
										<th>Product Code</th>
										<th>Bar code</th>
										<th>Product Name</th>
										<th>Description</th>
										<th>Product Category</th>
										<th>Stock In Hand</th>
										<th>Unit Price</th>
										<th>Action</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${productlist}" var="report">
										<tr>
												<td>${report.productCode}</td>
												<td>${report.barcode}</td>
												<td>${report.productname}</td>
												<td>${report.productDescription}</td>
												<td>${report.categoryName}</td>
												<td>${report.stocksOnHand}</td>
												<td>${report.unitPrice}</td>
												<td>
												
<div class="btn-group">
  <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#">
    Action
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
 
    <li><a href="${pageContext.request.contextPath}/product/StockInProduct.Do?productno=${report.productNo}&currentStock=${report.stocksOnHand}&currentunitprice=${report.unitPrice}&productname=${report.productname}&productcode=${report.productCode}&flg=stockIn">Stock In</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=userbattalionupdate">Change Price</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=userbattalionupdate">Edit</a></li>
    <li><a href="${pageContext.request.contextPath}/usermanagement/EditUserDetails?uuid=${data.uuid}&username=${data.username}&battalion=${data.batId}&ruletype=${data.roleId}&firstname=${data.firstName}&middlename=${data.middleName}&lastname=${data.lastName}&phone=${data.phoneNo}&flg=usertypeupdate">View Stock In Log</a></li>
   </ul>
</div>								
			
												
												
												</td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
							
                             </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
  <div id="panel-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content p-0 b-0">
                                        <div class="panel panel-color panel-primary">
                                            <div class="panel-heading">
                                                <button type="button" class="close m-t-5" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h3 class="panel-title">Create Category</h3>
                                            </div>
                                            <div class="panel-body">
                                 
<!--                                  
                                 private String productNo;
private String productCode;
private String productDescription;
private String barcode;
private String unitPrice;
private String stocksOnHand;
private String categoryNo;
private String categoryName;
private String catstatus;
private String categoryDescription; -->
           
                                   <form:form action="${pageContext.request.contextPath}/product/createproductcategory.Do" method="post"	commandName="productVO">
                                   
                                       <div class="form-group">
                                           </div> 
									    <label for="inputdefault">Category Name</label>
									    
  								<form:input type="text" class="form-control" path="categoryName"
								placeholder="Category Name" />	
								
									  
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
  								
  									<input type="submit" class="btn btn-primary" value="Save" />	
  									
  									
        						</form:form>
                                       </div>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
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
