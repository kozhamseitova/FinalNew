<%@ page import="com.company.models.Major" %>
<%@ page import="java.util.List" %>
<%@ page import="com.company.models.Group" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <%@include file="style.jsp"%>
</head>
<body>
<%@include file="header.jsp"%>
<%
    List<Major> majors = (List<Major>) request.getAttribute("majors");
    List<Group> groups = (List<Group>) request.getAttribute("groups");
%>
<div class="main_div_students">
    <h2 style="color: white; text-align: center; border-bottom: 3px solid #EE445F; width: 9%; margin-left: 43%">Search student</h2>
    <form class="register-form register_form_students" method="post" action="<%=request.getContextPath()%>/search">
        <input type="text" placeholder="firstname" name="firstname"/>
        <input type="text" placeholder="lastname" name="lastname"/>
        <input type="text" placeholder="enrol year" name="enrol_year" pattern="\d*" maxlength="4">
        <select id="majors" name="major">
            <option value="-1">Do not set Major</option>
        <% for (Major item: majors) {%>
            <option value="<%=item.getId()%>"><%=item.getName()%></option>
        <%}%>
    </select>
    <select id="groups" name="group">
        <option value="-1">Do not set Group</option>
        <% for (Group item: groups) {%>
            <option value="<%=item.getId()%>"><%=item.getName()%></option>
        <%}%>
    </select>
        <label class="la">Show all</label>
        <input type="radio" id="show all" name="show" value="all" checked>
        <label class="la">Show one</label>
        <input type="radio" id="show one" name="show" value="one">
        <button>Search</button>
    </form>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
