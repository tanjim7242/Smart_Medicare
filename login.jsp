<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login Page</title>
        <%@ include file="css.jsp"%>
        <link href="${pageContext.request.contextPath}/resources/Theme/css/login-style.css"
              rel="stylesheet" type="text/css" /> 
    </head>
    <body>
        <form id="login" action="<c:url value='/login/processing' />" method='POST' >
            <div class="login">
                <br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <div class="login-screen" style="width: 500px; height: 300px;"  align="center">
                    <div class='login-msg'>
                        <c:if test="${not empty error}">
                            <div class="error">${error}</div>
                        </c:if>
                        <c:if test="${not empty msg}">
                            <div class="msg">${msg}</div>
                        </c:if>
                        <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                            <font color="red">
                                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
                            </font>
                        </c:if>
                    </div>
                    <div class="app-title">
                        <h1>Login</h1>
                        <br/>
                    </div>
                    <div class="login-form">
                        <div class="control-group">
                            <label id="username"> Enter User Name: </label>
                            <input type='text' name='username' value='' placeholder="User Name">
                            <label class="login-field-icon fui-user" for="login-name"></label>
                        </div>

                        <div class="control-group">
                            <label id="password"> Enter Password: &nbsp;</label>
                            <input type='password' name='password'placeholder="Password" />
                            <label class="login-field-icon fui-lock" for="login-pass"></label>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />

                        <input type="submit" class="btn btn-primary" value="Submit" /> 
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>