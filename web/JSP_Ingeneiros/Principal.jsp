<%-- 
    Document   : PrincipalProyectos
    Created on : 13/11/2016, 01:39:30 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="persistenciIngeneiros.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD bd = new CRUD(); %>
<%!  ResultSet rs; %>
<%!  String cadena = "";%>

<title>Listado Proyecto</title>
<link rel="stylesheet" type="text/javascript" href="../Scrip/javaScript.js">
<link rel="stylesheet" type="text/css" href="../CSS/base.css">
<link rel="stylesheet"  type="text/css" href="../CSS/EstiloTabla.css">
<link rel="stylesheet" type="text/css" href="../CSS/pestaña.css" media="screen and (min-width: 900px)">
<link rel="stylesheet" type="text/css" href="../CSS/great.css" media="screen and (min-width: 900px)">
<link rel="stylesheet" type="text/css" href="../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
<link rel="stylesheet" type="text/css" href="../CSS/mini.css" media="screen and (max-width: 480px)">
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
                <a  href="../JSP_Ingeneiros/actividades/elicitacion.jsp" > <h3  class="pestaña1"><center>Actividad Elicitacion</center></h3> </a>
                <a  href="../JSP_Ingeneiros/actividades/elicitacion.jsp" > <h3  class="pestaña1"><center>Actividad Espesificacion</center></h3> </a>


            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Proyectos Registrados</h1> </br> </br> </br>

                <table border="1">
                    <tr><th><b>Proyecto</b> </th> <th><b>fecha Aplicacion</b> </th>  <th><b>Actividad</b> </th>  <th><b>ID</b> </th>   </tr>


                    <%
                        rs = bd.consultaActividad("ELICITACION");
                        cadena = "";
                        while (rs.next()) {
                            cadena = cadena + "<tr>"
                                    + "<td>" + rs.getString(2) + "</td>"
                                    + "<td>" + rs.getString(3) + "</td>";
                                    if(rs.getString(4)!=null){
                                       cadena = cadena +  "<td>Subida</td>";
                                    }else{
                                         cadena = cadena +  "<td>Sin Subir</td>"; 
                                    }
                                    
                                   cadena = cadena  + "<td><form action='actividades/elicitacion.jsp' method='get'>"
                                    + "<input class='izq'  type='text'  name='idRegistroElicitacion'value='" + rs.getString(1) + "'  ></input>"
                                    + "<input type='submit' value=' Ir '>"
                                    + "</form><"
                                    + "/td><"
                                    + "/tr>";
                        }
                    %>

                    <%=cadena%> 

                </table>
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
