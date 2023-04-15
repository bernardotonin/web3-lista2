<%--
  Created by IntelliJ IDEA.
  User: bernardo
  Date: 13/04/2023
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String[] habilidades = request.getParameterValues("skill");
    %>
<html>
<head>
    <style>
        *{
            font-family: "Courier New";
        }
        div{
            border: 1px solid black;
        }
        div.container{
            margin-left: 720px;
            display: grid;
            width: 300px;
        }
        p{
            padding: 10px;
        }
    </style>
    <title>Seus dados:</title>
</head>
<body>
<div class="container">
    <div>
        <p>
           <label>Nome:</label><%= request.getParameter("nome")%>
        </p>
    </div>
    <div>
        <p>
            <label>Data de nascimento: </label><%= request.getParameter("datanasc")%>
        </p>
    </div>
    <div>
        <p>
            <label>Idioma nativo: </label><%= request.getParameter("idiomanativo")%>
        </p>
    </div>
    <div>
        <p>
            <label>Habilidades: </label><%
            for (int i = 0; i < habilidades.length; i++) {%>
                <%= habilidades[i]%>
            <%}%>
        </p>
    </div>
</div>
</body>
</html>
