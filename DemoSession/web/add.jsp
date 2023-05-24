<%-- 
    Document   : add
    Created on : May 10, 2023, 9:03:21 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new a Category</h1>
        <form action="add">
            Enter ID : <input type="number" name="id" /><br/>
            Enter Name : <input type="text" name="name"/><br/>
            Enter Describe : <input type="text" name="describe"/><br/>
            <input type="submit" value="SAVE"/>
        </form>
        <h3 style="color: red">${requestScope.error}</h3>
    </body>
</html>
