<%-- 
    Document   : login
    Created on : May 17, 2023, 9:36:39 PM
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
        <h1>Login form</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="login" method="post">
            Enter Username : <input type="text" name="username"  /><br/>
            Enter Password : <input type="password" name="password"  /><br/>
            <input type="submit" value="LOGIN"/>
        </form>
    </body>
</html>
