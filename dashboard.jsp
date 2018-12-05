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

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="widget-simple-chart text-right card-box">
                            <div class="circliful-chart circliful" data-dimension="90" data-text="35%" data-width="5" data-fontsize="14" data-percent="35" data-fgcolor="#5fbeaa" data-bgcolor="#ebeff2" style="width: 90px;"><span class="circle-text" style="line-height: 90px; font-size: 14px;">35%</span><canvas width="90" height="90"></canvas></div>
                            <h3 class="text-success counter">2562</h3>
                            <p class="text-muted text-nowrap">Total Sales today</p>
                        </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>

  
<%@ include file="../javascript.jsp"%>
	 
</html>
