<%--
  Created by IntelliJ IDEA.
  User: bernardo
  Date: 13/04/2023
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //application = request.getServletContext();
%>
<html>
<head>
    <style>
        p{
            text-align: center;
        }
        label{
            padding: 10px;
        }
        div{
            border: 1px solid black;
        }
        *{
            font-family: "Courier New";
        }
        .senha{
            margin-left: 19px;
        }
        .container{
            margin-left: 720px;
            width: 300px;
            height: 150px;
            display: grid;
        }
        button{
            margin-left: 115px;
        }
        .aviso{
            width: 150px;
            margin-left: 800px;
        }
    </style>
    <title>Login</title>
</head>
<body>
<form method="post" action="login">
<div class="container">
    <div>
        <p>Painel do administrador</p>
    </div>
    <div>

        <label>Usuário: </label> <input type="text" name="usuario">

    </div>
    <div>

        <label class="senha">Senha:   </label> <input type="password" name="senha">

    </div>
    <div>
        <button type="submit">Entrar</button>
    </div>
    </div>
</form>
<%if (request.getAttribute("estaLogado") != null){%>
    <p class="aviso" style="background-color: red">Login Ou Senha Invalido!</p>
<%}%>
<%if (request.getAttribute("naoLogado") != null){%>
    <p class="aviso" style="background-color: red">Faça login!</p>
<%}%>
<%if (request.getAttribute("deslogado") != null){%>
<p class="aviso" style="background-color: lawngreen">Deslogado com sucesso.</p>
<%}%>
</body>
</html>


