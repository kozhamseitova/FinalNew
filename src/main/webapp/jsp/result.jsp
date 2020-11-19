<%@ page import="java.util.List" %>
<%@ page import="com.company.models.Student" %><%--
  Created by IntelliJ IDEA.
  User: ismail
  Date: 11/13/20
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <%@include file="style.jsp"%>
</head>
<body>
<%@include file="header.jsp"%>

<%
    List<Student> students = (List<Student>) request.getAttribute("students");
%>
<div class="lg:w-2/3 w-full mx-auto overflow-auto div_result">
    <table class="table-auto w-full text-left whitespace-no-wrap all_result">
        <thead>
        <tr class="block_div_result_main">
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Student Id</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Firstname</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Lastname</th>
            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Enrol Year</th>
        </tr>
        </thead>
        <% for (Student item: students) {%>
        <tbody>
        <tr class="block_div_result">
            <td class="px-4 py-3"><%=item.getId()%><</td>
            <td class="px-4 py-3"><%=item.getFirst_name()%></td>
            <td class="px-4 py-3"><%=item.getLast_name()%></td>
            <td class="px-4 py-3"><%=item.getEnrol_date()%></td>
        </tr>
        </tbody>
        <%}%>
    </table>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

