<%--
  Created by IntelliJ IDEA.
  User: bernardo
  Date: 13/04/2023
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        *{
            font-family: "Courier New";
        }
        form{
            padding: 10px   ;
            margin-left: 720px;
            border: 1px solid black;
            width: 300px;
            height: 270px;
            /*background-color: deeppink;*/
        }
    </style>
    <title>Emprego no Canadá</title>
</head>
<body>
<form action="registrocanada" method="post">
    <label>Nome: </label>
    <input type="text" name="nome" required>
    <br><label>Data de nascimento: </label>
    <input type="date" name="datanasc" required>
    <br><label>Idioma nativo: </label>
    <br><label>Inglês</label>
    <input type="radio" name="idiomanativo" value="Inglês" required>
    <br><label>Português</label>
    <input type="radio" name="idiomanativo" value="Português" required>
    <br><label>Espanhol</label>
    <input type="radio" name="idiomanativo" value="Espanhol" required>
    <br><label>Habilidades: </label>
    <br><label>HTML</label>
    <input type="checkbox" name="skill" value="HTML">
    <br><label>CSS</label>
    <input type="checkbox" name="skill" value="CSS">
    <br><label>JavaScript</label>
    <input type="checkbox" name="skill" value="Javascript">
    <br><label>Java</label>
    <input type="checkbox" name="skill" value="Java">
    <br><button type="submit">Enviar</button>
</form>

</body>
</html>
