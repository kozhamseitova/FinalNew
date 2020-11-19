<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 12.10.2020
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jsp/style/h.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <%@include file="style.jsp"%>
</head>
<body>
<%@include file="header.jsp"%>
<section class="text-gray-700 body-font" id="up" style="display: block">
    <div class="lg:w-2/6 md:w-1 bg-gray-100 rounded-lg p-8 flex flex-col" style="margin-left: 34%; margin-top: 10%; margin-bottom: 30%; border: 3px solid #EE445F">
        <h2 class="text-gray-900 text-lg font-medium title-font mb-5" style="text-align: center; font-size: 25px">Sign In</h2>
        <table>
            <form name="frm-login" id="frm-login">
                <p id="qq" style="display: none; color: red">You must fill username and password!</p>
                <tr><div id="err" style="color: red; display: none">
                    <p>Incorrect username or password</p>
                </div></tr>
                <tr>
                    <input id="q" class="input_a bg-white rounded border border-gray-400 focus:outline-none focus:border-gray-500 text-base px-4 py-2 mb-4" name="email" placeholder="email" type="email">
                </tr>
                <tr>
                    <input id="p" class="input_a bg-white rounded border border-gray-400 focus:outline-none focus:border-gray-500 text-base px-4 py-2 mb-4" name="password" placeholder="password" type="password"><br>
                </tr>
                <button type="button" onclick="login()" class="input_a text-white bg-gray-500 border-0 py-2 px-8 focus:outline-none hover:bg-gray-600 rounded text-lg">Sign In</button>
                <br>
                <button type="button" onclick="reset()" class="input_a text-white bg-gray-500 border-0 py-2 px-8 focus:outline-none hover:bg-gray-600 rounded text-lg">Reset</button>
            </form>
        </table>
    </div>
</section>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.1.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function login(){
        if ($("#q").val()===""){
            $("#qq").css("display", "block")
            return false;
        }
        else if($('#p').val()===""){
            $("#qq").css("display", "block")
            return false;
        }
        var data = $('#frm-login').serialize();

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/FinalNew_war_exploded/validatelogin',
            data: data,
            dataType: 'JSON',

            success:function (data){
                var msg = data[0].msg;

                if(msg==1){
                    window.location.replace("main.jsp");
                }else if(msg==2){
                    $("#err").css("display", "block")
                }else if(msg==3){
                    $("#err").css("display", "block")                }
            }
        })

    }
</script>
<%@include file="footer.jsp"%>
