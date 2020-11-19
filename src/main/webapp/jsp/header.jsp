<%--
  Created by IntelliJ IDEA.
  User: Abu
  Date: 15.11.2020
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="style.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<!-- NAVBAR-->
<nav class="navbar navbar-expand-lg py-3 navbar-dark bg-dark shadow-sm" style="border-bottom: 4px solid #EE445F; color: black; background: black">
    <div class="container">
        <a href="#" class="navbar-brand" style="margin-top: -4%">
            <!-- Logo Image -->
            <img src="https://cdn.pixabay.com/photo/2016/11/07/13/04/yoga-1805784_960_720.png" width="80px" height="80px" alt="" class="d-inline-block align-middle mr-2" style="margin-top: -3%">
            <!-- Logo Text -->
            <span class="text-uppercase font-weight-bold" style="font-size: 20px;">AMIA University</span>
        </a>

        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto" style="background:  #31373e;">
                <li class="nav-item active li_header"><a href="${pageContext.request.contextPath}/jsp/main.jsp" class="nav-link">Home<span class="sr-only">(current)</span></a></li>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/club?act=l" class="nav-link">Clubs</a></li>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/event?act=l" class="nav-link">Events</a></li>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/new?act=l" class="nav-link">News</a></li>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/search" class="nav-link">Students</a></li>
                <%
                    if(session.getAttribute("user")!=null){

                %>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/logOut" class="nav-link">Log Out</a></li>
                <%
                    }
                %>
                <%
                    if(session.getAttribute("user")==null){

                %>
                <li class="nav-item li_header"><a href="${pageContext.request.contextPath}/jsp/signInUp.jsp" class="nav-link">Sign in</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
