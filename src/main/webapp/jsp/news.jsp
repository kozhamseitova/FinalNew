<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 13.11.2020
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>News</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <%@include file="style.jsp"%>
</head>
<body>
<%@include file="header.jsp"%>
<section class="text-gray-700 body-font overflow-hidden">
    <div class="container px-5 py-24 mx-auto">
        <div class="-my-8 news_bord">
            <c:set var="news1" value='${requestScope["news1"]}' />
            <c:forEach items="${news1}" var="new1">
                <!-- Starts of block news -->
                <div class="py-8 flex flex-wrap md:flex-no-wrap" style="border-bottom: 3px solid #EE445F; margin-top: 2%; padding: 5%">
                    <div class="md:w-64 md:mb-0 mb-6 flex-shrink-0 flex flex-col">
                        <span class="tracking-widest font-medium title-font text-gray-900 span_a" style="border-right: 2px solid #EE445F; padding: 8px;">News id: ${new1.id}</span>
                        <span class="mt-1 text-gray-500 text-sm span_a" style="margin-left: 8px;">${new1.time}</span>
                    </div>
                    <div class="md:flex-grow theme_news2">
                        <h2 class="text-2xl font-medium text-gray-900 title-font mb-2" style="color: white">${new1.title}</h2>
                        <p class="leading-relaxed">${new1.description}</p>
                        </p>
                        <%
                            if(session.getAttribute("status")!=null){
                        %>
                        <a class="text-green-500 inline-flex items-center mt-4" id="r" href="<%=request.getContextPath()%>/new?act=remove&id=${new1.id}">REMOVE
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 ml-2" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" width="20" height="20">
                                <path d="M 10,10 l 90,90 M 100,10 l -90,90" stroke="red" stroke-width="10"></path>
                            </svg>
                        </a>
                        <%
                            }
                        %>
                    </div>
                </div>
            </c:forEach>
        </div>

    <!--Admin prev.-->
        <div class="flex flex-col text-center w-full mb-12">
            <%
                if(session.getAttribute("status")!=null){
            %>
            <div class="block_admine">
                <div class="block_admin_dive">
                    <h1 class="text-gray-900 text-lg mb-1 font-medium title-font " style="color: white">Adding</h1>
                    <form method="get" action="<%=request.getContextPath()%>/new">
                        <p>Enter values for adding events</p>
                        <input class="input_values" type="text" value="id" name="id">
                        <input class="input_values" type="text" value="Title" name="title">
                        <input class="input_values" type="text" value="Description" name="description">
                        <input class="input_values" type="text" value="Time" name="time">
                        <input class="button_admin" type="submit" value="add" name="act">
                    </form>
                </div>
                <div class="block_admin_div">
                    <h1 class="text-gray-900 text-lg mb-1 font-medium title-font" style="color: white">Change</h1>
                    <form id="a" method="get" action="<%=request.getContextPath()%>/new">
                        <p>Enter id of event which you want to change</p>
                        <input class="input_values" type="text" value="id" name="id">
                        <input class="input_values" type="text" value="Title" name="title">
                        <input class="input_values" type="text" value="Description" name="description">
                        <input class="input_values" type="text" value="Time" name="time">
                        <input class="button_admin" type="submit" value="change" name="act">
                    </form>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</section>
<%@include file="footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>