<%--
  Created by IntelliJ IDEA.
  User: bernardo
  Date: 14/04/2023
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%%>
<html>
<head>
    <style>
        *{
            font-family: "Courier New";
        }
        h1{
            text-align: center;
        }
        .button1{
           margin-left: 870px;
        }
        .button2{
            margin-left: 848px;
        }
        .aviso{
            width: 117px;
            margin-left: 840px;
        }
    </style>
    <title>Logado com sucesso</title>
</head>
<body>
<h1>
    Logado com sucesso!
</h1>
<div class="button1"><button><a href="logout">Logout</a></button></div>
<div class="button2"><button><a href="loginstatus">Login Status</a></button></div>
<%if (request.getAttribute("loginStatus") != null){%>
<p class="aviso" style="background-color: lawngreen">Está logado.</p>
<%}%>
</body>
</html>
