<%-- 
    Document   : update
    Created on : May 10, 2023, 10:11:11 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update a Category</h1>
        <form action="update" method="post">
            <c:set var="c" value="${requestScope.category}" />
            Enter ID : <input type="number" readonly name="id" value="${c.id}" /><br/>
            Enter Name : <input type="text" name="name" value="${c.name}"/><br/>
            Enter Describe : <input type="text" name="describe" value="${c.describe}"/><br/>
            <input type="submit" value="UPDATE"/>
        </form>
    </body>
</html>
