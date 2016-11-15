<%-- 
    Document   : PrincipalProyectos
    Created on : 13/11/2016, 01:39:30 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD bd = new CRUD(); %>
<%!  ResultSet rs; %>
<%!  String cadena = "";%>

<title>Listado Proyecto</title>
<link rel="stylesheet" type="text/javascript" href="../Scrip/javaScript.js">
<link rel="stylesheet" type="text/css" href="../../CSS/base.css">
<link rel="stylesheet" type="text/css" href="../../CSS/pestaña.css" media="screen and (min-width: 900px)">
<link rel="stylesheet" type="text/css" href="../../CSS/great.css" media="screen and (min-width: 900px)">
<link rel="stylesheet" type="text/css" href="../../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../../CSS/mini.css" media="screen and (max-width: 480px)">
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Proyecto</title>
    </head>
    <body>
        <div id="Contenedor">

            <div class="cabecera">

                <div  class="h1"> <h1>Sistema de Informacion (SIWIR) </h1></div>
                <div class="h3"><h3>Ingeniria del sofware</h3></div>


            </div>

            <div class="layoutIzquierda">
                <a  href="../GestionProyecto/PrincipalRegistro.jsp" > <h3  class="pestaña1"><center>Nuevo Proyecto</center></h3> </a>
                <a  href="../GestionIngeniero/PrincipalIngeniero.jsp" > <h3  class="pestaña1"><center>Gestionar Ingenieros</center></h3> </a>
                
                
            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Proyectos Registrados</h1> </br> </br> </br>
                
                <center> <table border="1">
                        <tr> <td><b>Clientes</b> </td> <td><b>Nombre Proyecto</b> </td> </tr>


                        <%
                            rs = bd.consultaProyectos();
                            cadena = "";
                            while (rs.next()) {
                                cadena = cadena + "<tr>" + "<td>" + rs.getString(1) + "</td>" + "<td><form action='PrincipalGestionProyecto.jsp' method='get'>"+
                             "<input class='izq'  type='text'  name='idProyecto'value='"+ rs.getString(2) +"'  ></input>"+
                              "<input type='submit' value='editar '>"+
                        "</form></tr>";
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
