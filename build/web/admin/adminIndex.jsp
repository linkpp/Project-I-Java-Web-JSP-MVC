<%-- 
    Document   : adminIndex
    Created on : Dec 19, 2016, 10:56:21 AM
    Author     : linhphan
--%>

<%@page import="model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ Admin</title>
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/View/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/css/style.css"/>

        <script type ="text/javascript" src="${pageContext.request.contextPath}/View/js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/View/bootstrap/js/bootstrap.min.js"> </script>

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> 

    </head>
    <%
        Admin admin = (Admin) session.getAttribute("admin") ;
        if(admin == null) {
            response.sendRedirect("../index.jsp");
        }
    %>
    <body>
        <jsp:include page="adminHeader.jsp" ></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-md-2 well">
                    <jsp:include page="navleft.jsp" ></jsp:include>
                </div>
                <div class="col-md-10 text-center" >
                    <h1> Chào mừng bạn đến với trang quản trị website </h1>
                </div>
            </div>
        </div>
    </body>
</html>
