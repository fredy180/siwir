<%-- 
    Document   : ListarIngeniero
    Created on : 14/11/2016, 01:59:40 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="persistencia.CRUD"%>
<%@page import="java.sql.ResultSet"%>
<% String cadena;%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Ingeniero</title>

        <link rel="stylesheet" type="text/css" href="../../CSS/base.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestaña.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/great.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/mini.css" media="screen and (max-width: 480px)">
    </head>
    <body>

        <div id="Contenedor">

            <div class="cabecera">

                <div  class="h1"> <h1>Sistema de Informacion (SIWIR) </h1></div>
                <div class="h3"><h3>Ingeniria del sofware</h3></div>


            </div>

            <div class="layoutIzquierda">
                <a  href="PrincipalIngeniero.jsp" > <h3  class="pestaña1"><center>Registrar Ingenieros</center></h3> </a>
                <a  href="ListarIngeniero.jsp"> <h3 class="pestaña2"><center>Listar Ingenieros</center> </h3> </a>


            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Listado Ingeniero</h1> </br> </br> </br>

                <center> <table border="1">
                        <tr><td><b>Nombre</b> </td> <td><b>Apellido</b> </td> <td><b>Telefono</b> </td> <td><b>Direccion</b> </td>  <td><b>Cedula</b> </td> </tr>


                        <%
                            ResultSet rs;
                            CRUD crud = new CRUD();
                            rs = crud.consultarIngenieros();
                            cadena = "";
                            while (rs.next()) {
                                cadena = cadena + "<tr>" + "<td>" + rs.getString(2) + "</td>"
                                        + "<td>" + rs.getString(3) + "<td>" + rs.getString(4) + "<td>" + rs.getString(5) + "</td>"
                                        + "</td>" + "</td>" + "<td><form action='PrincipalGestionIngeniero.jsp' method='get'>"
                                        + "<input class='izq'  type='text'  name='idIngeniero'value='" + rs.getString(1) + "'  ></input>"
                                        + "<input type='submit' value='editar '>"
                                        + "</form></tr>";
                            }
                        %>

                        <%=cadena%> 

                    </table></center>
                        

            </div>

            <div class="piePagina">
                <center><h5>Grupo Desarrollador: Estudiantes CECAR </br>
                        Ingenieria de sistemas
                        Jean Suarez-Fredys Vergara</br>
                        @Cecar.edu.co
                    </h5> </center>  

            </div>
    </body>
</html>

