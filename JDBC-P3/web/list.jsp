<%-- 
    Document   : list
    Created on : May 11, 2023, 10:29:05 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        #wrapper{
            font-family: arial;
            margin-left: 10%;
            margin-right: 10%;
        }
        .clr {
            clear:both;
        }
        h3{
            text-align:  left;
            color: blue;
        }
        ul{
            list-style: none;
        }
        li{
            width: 25%;
            text-align: center;
            float: left;
            margin: 25px;
            border: 2px solid chocolate;
            border-radius: 20px;
        }
        li img{
            width: 90%;
        }
        li a{
            text-decoration: none;
        }
        li:hover{
            background: bisque;
        }
        p{
            margin-top: 5px;
            color: blue;
            font-size: 12px;
        }
        .old{
            text-decoration: line-through;
            color: red;
        }
        input[type="submit"]{
            width: 200px;
            height: 30px;
            background-color:  orange;
            border-radius: 20px;
        }
        input[type="submit"]:hover{
            background-color:bisque;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        function change() {
            document.getElementById("f1").submit();
        }
    </script>
    <body>
        <div id="wrapper">
            <c:set  var ="cid" value="${requestScope.cid}"/>
            <form action="list" id="f1">
                Dòng điện thoại :  
                <select name="key"  >
                    <option value="0">All</option>
                    <c:forEach items="${requestScope.data}" var="c">
                        <option ${(cid==c.id)?'selected':''} value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
                <input type="text" name="key2" placeholder="nhập tên, miêu tả, category"/> 
                <br/> <br/>
                Từ giá : <input type="number" name="fromprice"/> 
                Đến giá : <input type="number"  name="toprice"/> <br/>
                Từ ngày : <input type="date" name="fromdate" /> 
                Đến ngày : <input type="date" name="todate" /> <br/><br/>
                <input type="submit" value="Search"/> 
            </form>
            <c:set value="${requestScope.products}" var="list"/>
            <c:if test="${(( list == null ) || ( list.size() == 0 )) }">
                <h3>No Product</h3>
            </c:if>
            <c:if test="${(( list != null ) && ( list.size() > 0 )) }">
                <ul>
                    <c:forEach var="p" items="${list}">
                        <li>
                            <a href="#">
                                <img src="${p.image}"/>
                                <p>${p.name}</p>
                                <p>Giá gốc : <span class="old">${(p.price*1.5)}</span> </p>
                                <p>Sale : ${p.price}</p>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </c:if>
        </div>
    </div>
</body>
</html>
