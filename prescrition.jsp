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



<%@ include file="../css.jsp"%>

</head>
<%@ include file="../headerAndSideManu.jsp"%>

        <div class="wrapper">
            <div class="container">
 <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"  commandName="${productVOval}" class="form-inline">
              <div class="main-content col-md-12"> 
		<div class="main-head "> 
			<strong>Create Prescription</strong>
		</div>
			
			 
		        
		<div class="info">
	
				<label for="name">Name</label>
				<form:input type="text" class="form-control" path="firstname"/>	
				<label for="age">Age</label>
			<form:input type="text" class="form-control" path="age"/>	
				<label for="Sex" >Sex : </label>
					<select  class="form-control">
						<option>Men</option>
						<option>Femal</option>
						<option>Other</option>
					</select>
					
				<label for="apid">APP-ID</label>
				<form:input type="text" class="form-control" path="appromentid"/>	
					
				<label for="apid">patient uuid-ID</label>
				<form:input type="text" class="form-control" path="patientid"/>	
			
        	 <form:input type="hidden"  class="form-control"  placeholder="Comments" path="uuId"/>	
        							
        	
        							
		</div>
		
		<div class="desis"> 
				
				<div class="row"> 
					<div class="col-md-4">
						
						<form:input type="text" class="form-control"  placeholder="Patient C/C" path="patient_cc"/>	
					</div>
					<div class="col-md-4">
						
							<form:input type="text" class="form-control"  placeholder="Patient Weight " path="patient_weight"/>
					</div>
					<div class="col-md-4">
						
						<form:input type="text" class="form-control"  placeholder="Patient BP " path="patient_bp"/>
					</div>
				</div>
		
		</div>

		
		<div class="desis"> 
			<form action="#">
				<div class="row"> 
					<div class="col-md-6">
						<form:input type="text" class="form-control"  placeholder="O/EX  " path="oex"/>
			
					</div>
					<div class="col-md-6">
					<form:input type="text" class="form-control"  placeholder="P/D" path="pd"/>
						
					</div>
				</div>
			</form>
		</div>
		
		<div class="medicine"> 
			<div class="med-hed"> 
				<div class="container-fluid">
					<strong>Medicine</strong>
					<a href="#" id="myHref"  class="btn btn-primary pull-right">+Add</a>
				</div>
			</div>
		
			<div class="desis"> 
				<div class="container-fluid">
				 <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"  commandName="${productVOval}" class="form-inline">
						<div class="row"> 
							<div class="col-md-1">
								
								
								<form:input type="text" class="form-control"  placeholder="Type" path="mditype"/>	
							</div>
							<div class="col-md-4">
								
								<form:input type="text" class="form-control"  placeholder="Medicine Name" path="medicinename"/>	
							</div>
							<div class="col-md-1">
								
								<form:input type="text" class="form-control"  placeholder="MG/M" path="medicinmg"/>	
							</div>
							<div class="col-md-1">
								
								<form:input type="text" class="form-control"  placeholder="DOSE" path="medicindose"/>	
							</div>
							<div class="col-md-1">
								
								<form:input type="text" class="form-control"  placeholder="Days" path="medicinduration"/>	
							</div>
							<div class="col-md-4">
								
								<form:input type="text" class="form-control"  placeholder="Comments" path="medicincomments"/>	
							</div>
							 <form:input type="hidden"  class="form-control"  placeholder="Comments" path="uuId"/>	
							 	 <form:input type="hidden"  class="form-control"  placeholder="Comments" path="userName"/>	
							
							<!-- <a href="#"> <div class="btn btn-primary pull-right">+Add</div></a> -->
						</div>
					
				</div>
			</div>
			 </form:form>
		</div>
		
		<div class="container-fluid">
			<div class="commend"> 
			
			
			
				   <table id="assetDataTable">
       <tr>
           <th>Host Name</th>
           <th>FQDN</th>
           <th>IPV4</th>
       </tr>
       
       
       
   </table>
								
			</div>
		</div>
		
		
		<div class="col-md-6">
			<div class="test-box"> 
				<div class="container-fluid">
					<div class="test-adv">
						<strong>Test</strong>
						<a href="#" id="Mytest"  class="btn btn-primary pull-right">+Add</a>
					</div>
					<div class="adv-test">
					 <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"  commandName="${productVOval}" class="form-inline">
							<div class="row"> 
								<div class="col-md-6">
									
										<form:input type="text" class="form-control"  placeholder="Test Name" path="test"/>	
								</div>
								<div class="col-md-6">
									
										<form:input type="text" class="form-control"  placeholder="Test Descrition" path="testdis"/>	
								</div>
								<!-- <a href="#"> <div class="btn btn-primary pull-right">+Add</div></a> -->
							</div>
						
					</div>
				</div>
			</div>
			</form:form>
		</div>
			<div class="container-fluid">
			<div class="commend"> 
				 <table id="assetDataTableadvice">
       <tr>
           <th>Host Name</th>
           <th>FQDN</th>
           <th>IPV4</th>
       </tr>
       
       
       
   </table>
		
			
		<div class="col-md-6">
			<div class="advice"> 
				<div class="container-fluid">
					<div class="test-adv">
						<strong>Advice</strong>
							<a href="#" id="Myadvice"  class="btn btn-primary pull-right">+Add</a>
					</div>
					<div class="adv-test">
					 <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"  commandName="${productVOval}" class="form-inline">
							<div class="row"> 
								<div class="col-md-12">
								<form:input type="text" class="form-control"  placeholder="Advise" path="advice"/>	
								
								</div>
								<!-- <a href="#"> <div class="btn btn-primary pull-right">+Add</div></a> -->
							</div>
						</form>
					</div>
				</div>
			</div>
			</form:form>
		</div>
		
		<div class="container-fluid">
			<div class="commend"> 
				 <table id="assetDataTabletest">
       <tr>
           <th>Host Name</th>
           <th>FQDN</th>
           <th>IPV4</th>
       </tr>
       
       
       
   </table>
			</div>
		</div>
		
		<div class="col-md-offset-5 ">
			<button type="submit" class="btn btn-primary sub">Submit</button>
		</div>
</form:form>
	</div>
	
			
 
            
                </div>
                </div>
		
 
     

  
<%@ include file="../javascript.jsp"%>



<script type="text/javascript">
$("#myHref").on('click', function() {
	
	
	
var mditype = $('#mditype').val();
var medicinename = $('#medicinename').val();
var medicinmg = $('#medicinmg').val();
var medicindose = $('#medicindose').val();
var medicinduration = $('#medicinduration').val();
var medicincomments = $('#medicincomments').val();
var appromentid = $('#appromentid').val();
var uuId = $('#uuId').val();
var patientid = $('#patientid').val();


var allmedicine = mditype+"/"+medicinename+"/"+medicinmg+"/"+medicindose+"/"+medicinduration+"/"+medicincomments+"/"+appromentid+"/"+uuId+"/"+ patientid;

$("#assetDataTable tr>td").remove();
	 
    $.ajax({
        type: "GET",
        url: "${pageContext.request.contextPath}/doctor/createmed/" + allmedicine,
        cache: false, 
        contentType:'application/json',
        dataType: 'json',
        
         success: function(response){
              
          var result=JSON.stringify(response);
          
          var obj = JSON.parse(result);
          
          var sol="";
          drawTable(obj);
          
        
          
        },
        error: function()
        {                      
            alert('Error ..');
        }
    }); 
});


function drawTable(data) {
    for (var i = 0; i < data.length; i++) {
       drawRow(data[i]);
   }
}

function drawRow(rowData) {
   var row = $("<tr />")
   $("#assetDataTable").append(row); 
   row.append($("<td>" + rowData.medicine_type + "</td>"));
   row.append($("<td>" + rowData.medicine_name + "</td>"));
   row.append($("<td>" + rowData.medicine_mg + "</td>"));
   
   row.append($("<td>" + rowData.medicine_dose + "</td>"));
   row.append($("<td>" + rowData.medi_duration + "</td>"));
   row.append($("<td>" + rowData.medi_comments + "</td>"));
}




</script>




<script type="text/javascript">
$("#Mytest").on('click', function() {
	
	
	
var test = $('#test').val();
var testdis = $('#testdis').val();
var appromentid = $('#appromentid').val();
var uuId = $('#uuId').val();
var patientid = $('#patientid').val();


var allmedicine = test+"/"+testdis+"/"+appromentid+"/"+uuId+"/"+ patientid;
alert(allmedicine)
$("#assetDataTabletest tr>td").remove();
	 
    $.ajax({
        type: "GET",
        url: "${pageContext.request.contextPath}/doctor/createTest/" + allmedicine,
        cache: false, 
        contentType:'application/json',
        dataType: 'json',
        
         success: function(response){
              
          var result=JSON.stringify(response);
          
          var obj = JSON.parse(result);
          
          var sol="";
          drawTabletest(obj);
          console.log(obj);
          
     $("#title").append(obj[1].value);
          
          for( var i=0; i<obj.length;i++)
           {

           var attribute=obj[i].attribute;
           var value=obj[i].value;
           

           }
        
          
        },
        error: function()
        {                      
            alert('Error ..');
        }
    }); 
});


function drawTabletest(data) {
    for (var i = 0; i < data.length; i++) {
       drawRowtest(data[i]);
   }
}

function drawRowtest(rowData) {
   var row = $("<tr />")
   $("#assetDataTabletest").append(row); 
   row.append($("<td>" + rowData.test + "</td>"));
   row.append($("<td>" + rowData.testdis + "</td>"));
  
}




</script>



<script type="text/javascript">
$("#Myadvice").on('click', function() {
	
	
	
var advice = $('#advice').val();
var appromentid = $('#appromentid').val();
var uuId = $('#uuId').val();
var patientid = $('#patientid').val();


var allmedicine = advice+"/"+appromentid+"/"+uuId+"/"+ patientid;
alert(allmedicine)
$("#assetDataTableadvice tr>td").remove();
	 
    $.ajax({
        type: "GET",
        url: "${pageContext.request.contextPath}/doctor/createAdvice/" + allmedicine,
        cache: false, 
        contentType:'application/json',
        dataType: 'json',
        
         success: function(response){
              
          var result=JSON.stringify(response);
          
          var obj = JSON.parse(result);
          
          var sol="";
          drawTableadvice(obj);
          console.log(obj);
          
     $("#title").append(obj[1].value);
          
          for( var i=0; i<obj.length;i++)
           {

           var attribute=obj[i].attribute;
           var value=obj[i].value;
           

           }
        
          
        },
        error: function()
        {                      
            alert('Error ..');
        }
    }); 
});


function drawTableadvice(data) {
    for (var i = 0; i < data.length; i++) {
       drawRowadvice(data[i]);
   }
}

function drawRowadvice(rowData) {
   var row = $("<tr />")
   $("#assetDataTableadvice").append(row); 
   row.append($("<td>" + rowData.advice + "</td>"));
   row.append($("<td>" + rowData.advice + "</td>"));
  
}




</script>














	 
</html>
