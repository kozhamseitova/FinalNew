<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 18.11.2020
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contacts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <%@include file="style.jsp"%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../main.css">
</head>
<body>
<%@include file="header.jsp"%>
<body>
<div class="wrapper" style="margin-bottom: 50%; margin-top: 10%">
    <form class="form">
        <div class="pageTitle title">Contact us!</div>
        <div class="secondaryTitle title" style="font-size: 15px">Write us we will response you!</div>
        <input style="font-size: 15px" type="text" class="name formEntry" placeholder="Name" />
        <input style="font-size: 15px" type="text" class="email formEntry" placeholder="Email"/>
        <textarea class="message formEntry" placeholder="Message"></textarea>
        <br>
        <button class="submit formEntry" onclick="thanks()">Submit</button>
    </form>
</div>
<script src="app.js"></script>
</body>

</html>

<%@include file="footer.jsp"%>
</body>
</html>
