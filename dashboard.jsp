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

                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-simple-chart text-right card-box">
                            <div class="circliful-chart circliful" data-dimension="90" data-text="35%" data-width="5" data-fontsize="14" data-percent="35" data-fgcolor="#5fbeaa" data-bgcolor="#ebeff2" style="width: 90px;"><span class="circle-text" style="line-height: 90px; font-size: 14px;">35%</span><canvas width="90" height="90"></canvas></div>
                            <h3 class="text-success counter m-t-10">25</h3>
                            <p class="text-muted text-nowrap m-b-10">Total  today approment </p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-simple-chart text-right card-box">
                            <div class="circliful-chart circliful" data-dimension="90" data-text="75%" data-width="5" data-fontsize="14" data-percent="75" data-fgcolor="#3bafda" data-bgcolor="#ebeff2" style="width: 90px;"><span class="circle-text" style="line-height: 90px; font-size: 14px;">75%</span><canvas width="90" height="90"></canvas></div>
                            <h3 class="text-primary counter m-t-10">5685</h3>
                            <p class="text-muted text-nowrap m-b-10">Daily visitors</p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-simple-chart text-right card-box">
                            <div class="circliful-chart circliful" data-dimension="90" data-text="58%" data-width="5" data-fontsize="14" data-percent="58" data-fgcolor="#f76397" data-bgcolor="#ebeff2" style="width: 90px;"><span class="circle-text" style="line-height: 90px; font-size: 14px;">58%</span><canvas width="90" height="90"></canvas></div>
                            <h3 class="text-pink m-t-10">$ <span class="counter">12</span></h3>
                            <p class="text-muted text-nowrap m-b-10">Total Earning</p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-simple-chart text-right card-box">
                            <div class="circliful-chart circliful" data-dimension="90" data-text="49%" data-width="5" data-fontsize="14" data-percent="49" data-fgcolor="#98a6ad" data-bgcolor="#ebeff2" style="width: 90px;"><span class="circle-text" style="line-height: 90px; font-size: 14px;">49%</span><canvas width="90" height="90"></canvas></div>
                            <h3 class="text-inverse counter m-t-10">62</h3>
                            <p class="text-muted text-nowrap m-b-10">Pending Orders</p>
                        </div>
                    </div>
                </div>
                
                    

            
                </div>
                </div>

  
<%@ include file="../javascript.jsp"%>
	 
</html>
