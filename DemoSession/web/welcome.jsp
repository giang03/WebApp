<%-- 
    Document   : welcome
    Created on : May 17, 2023, 9:45:35 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="a" value="${sessionScope.account}"/>
        <h1>Welcome to Page</h1>
        <h1>Hello ${a.username}</h1>
    </body>
</html>
