<%-- 
    Document   : list
    Created on : May 10, 2023, 8:51:42 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
    </head>
    <script type="text/javascript">
        function doDelete(id){
            if(confirm("Are you sure ?")){
                window.location="check?action=delete&id="+id;
            }
        }
    </script>
    <body>
    <center>
        <h1>List of Categories</h1>
        <h3><a href="check?action=add">Add new</a></h3>
        <table border="1px" width="40%">
            <tr>
                <th>ID</th> 
                <th>Name</th> 
                <th>Describe</th> 
                <th>Action</th> 
            </tr>
            <c:forEach items = "${requestScope.data}" var="c">
                <c:set var="id" value="${c.id}"/>
                <tr>
                    <td>${c.id}</td>
                    <td>${c.name}</td>
                    <td>${c.describe}</td>
                    <td>
                        <a href="check?action=update&id=${id}">Update</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="doDelete('${id}')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>
    </body>
</html>
