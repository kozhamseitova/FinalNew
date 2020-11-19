<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 10.11.2020
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Clubs</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jsp/style/h.css">
</head>
<body>
<%@include file="header.jsp"%>
<section class="text-gray-700 body-font">
    <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-20">
            <h1 class="text-2xl font-medium title-font mb-4 text-gray-900 tracking-widest" style="color: white; font-size: 30px">AMIA CLUBS</h1>
            <p class="lg:w-2/3 mx-auto leading-relaxed text-base" style="font-size: 20px">AMIA CLUBS is a place where every student could find their place n this university. Talanted students collobarating with each other for making themselfs strong.</p>
        </div>
        <!-- Here is block for all clubs block -->
        <div class="flex flex-wrap -m-4 all_blocks_clubs" style="margin-left: -1%">
            <!-- Here starts is div's for each club block -->
<c:set var="clubs" value='${requestScope["clubs"]}' />
<c:forEach items="${clubs}" var="club">
    <div class="p-4 lg:w-1/2 clubs_block">
        <div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left" style="width: 40%;">
            <img alt="team" width="175px"  height="175px" style=" border: 3px solid #EE445F;" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4" src="${club.img}">
        </div>
        <div class="flex-grow sm:pl-8 blocks_desc">
            <h2 class="title-font font-medium text-lg text-gray-900" style="color: white; font-size: 25px; border-bottom: 2px solid #EE445F; width: 30%">${club.name}</h2>
                    <h3 class="text-gray-500 mb-3"></h3>
            <p class="mb-4">${club.description}</p>
    <%
        if(session.getAttribute("status")!=null){
    %>
    <a class="text-green-500 inline-flex items-center mt-4" id="r" href="<%=request.getContextPath()%>/club?act=remove&name=${club.name}">REMOVE
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

            <div class="flex flex-col text-center w-full mb-12" style="text-align: center">
                <%
                    if(session.getAttribute("status")!=null){
                %>
                <div class="block_admin">
                    <div class="block_admin_div">
                        <h1 class="text-gray-900 text-lg mb-1 font-medium title-font " style="color: white">Adding</h1>
                        <form name="fff" id="fff">
                            <p>Enter values for adding events</p>
                            <%
                                if (request.getAttribute("msg")!=null) {

                            %>
                            <p id="err" style="color:red;">This name is already exists</p>
                            <%
                                }
                            %>
                            <input class="input_values" type="text" value="Name" name="name">
                            <input class="input_values" type="text" value="Image" name="img">
                            <input class="input_values" type="text" value="Description" name="description">
                            <input class="input_values" type="text" value="add" name="act" style="display: none">
                            <button class="button_admin" onclick="add()">Add</button>
                        </form>
                    </div>
                    <div class="block_admin_div">
                        <h1 class="text-gray-900 text-lg mb-1 font-medium title-font" style="color: white">Change</h1>
                        <form id="a" method="get" action="<%=request.getContextPath()%>/club">
                            <p>Enter name of club which you want to change</p>
                            <input class="input_values" type="text" value="Name" name="name">
                            <input class="input_values" type="text" value="Image" name="img">
                            <input class="input_values" type="text" value="Description" name="description">
                            <input class="button_admin" type="submit" value="change" name="act">
                        </form>
                    </div>
                </div>
                <%
                    }
                %>
            </div>


        </div>
    </div>
</section>
<%@include file="footer.jsp"%>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.1.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function add(){
        var data = $('#frm-login').serialize();

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/FinalNew_war_exploded/club',
            data: data,
            dataType: 'JSON',

            success:function (data){

            }
        })

    }
</script>