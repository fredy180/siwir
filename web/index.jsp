<%-- 
    Document   : index
    Created on : 12/11/2016, 12:20:53 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="ComponentesBD.conector"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Final SIWIR</title>
 
        <link rel="stylesheet" type="text/css" href="CSS/estiloSesion.css">
        <link rel="stylesheet" type="text/css" href="CSS/pestaña.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="CSS/great.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="CSS/mini.css" media="screen and (max-width: 480px)">
    </head>
    <body>
        <%
            conector.ConectarMySQL("localhost", "bd_siwir", "root", "root");
            %>
        <div>
            <form action="JSP/GestionProyecto/PrincipalProyectos.jsp" method="get">
                <caption><h2> <center>Iniciar Sesion </center> </h2></caption>
                <p>
                    <br>
                    <label class="izq" for="nombreUsuario">Nombre Usuario: </label>
                    <input class="der" type="text" name="nombreUsuario" id="nombreUsuario">
                </p>
                <p>
                    <label class="izq" for="contraseña">Password:</label>
                    <input class="der" type="text" name="contraseña" id="contraseña">
                </p>
                <p>
                    <input type="submit" value=" Iniciar ">
                    <input type="reset" value="Limpiar">
                </p>
            </form>
        </div>

          
    </body>
</html>
