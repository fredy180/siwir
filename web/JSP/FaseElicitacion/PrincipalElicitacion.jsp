<%-- 
    Document   : PrincipalIlicitacion
    Created on : 14/11/2016, 08:16:38 AM
    Author     : Ingeniero Jean C
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD bd = new CRUD();%>
<%!  String datos;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fase Elicitacion</title>

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
                <a  href="../GestionProyecto/PrincipalProyectos.jsp" > <h3  class="pestaña1"><center>Proyectos</center></h3> </a>
                <a  href="../FaseElicitacion/ListarElicitacion.jsp "> <h3  class="pestaña1"><center>Lista Elicitacion</center></h3> </a>
            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Fase Elicitacion</h1> </br> </br> </br>

                <form action=../FaseElicitacion/RegistrarElicitacion.jsp method="get">
                  
                    
                    <table>
                        <tr>
                            <td><label class="izq" for="tecnica">Tecnica: </label></td>
                            <td><input class="der" type="text" name="tecnica" id="tecnica"></td>
                        </tr>
                        <tr>
                            <td><label class="izq" for="fecha">Fecha: </label></td>
                            <td><input class="der" type="date" name="fecha" id="fecha"></td>
                        </tr>


                        <tr>
                            <td> <label class="izq" for="instrumento">Instrumento: </label></td>
                            <td> <input class="der" type="text" name="intrumento" id="instrumento"></td>
                        </tr>


                        <tr>
                            <td><label class="izq" for="responsable">Responsable: </label></td>
                            <td><select name="responsable">
                                    <%
                                        ResultSet rs = bd.consultaIngenieroPorFases("elicitacion");
                                        while(rs.next()){
                                            datos=datos+"<option value='"+rs.getString(3)+"'> "+rs.getString(1)+" "+rs.getString(2)+"</option>";
                                        }
                                    %>
                                    <%=datos%>
                                </select></td>
                        </tr>
                    </table>
                    <br> 

                    <input type="submit" value=" Registrar ">
                    <input type="reset" value="Limpiar">

                </form>

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
