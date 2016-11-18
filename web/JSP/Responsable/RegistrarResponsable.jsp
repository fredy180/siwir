<%-- 
    Document   : RegistrarResponsable
    Created on : 18/11/2016, 12:22:48 AM
    Author     : freddy
--%>

<%@page import="persistencia.CRUD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Fase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String opciones = "";
    CRUD_Fase crud = new CRUD_Fase();
    CRUD crud2 = new CRUD();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Responsable</title>

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
                <div class="h3"><h3>Ingeniria del software</h3></div>


            </div>

            <div class="layoutIzquierda">
                <a  href="GestionResponsable.jsp" > <h3  class="pestaña1"><center>Inicio</center></h3> </a>



            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registrar Responsable</h1> </br> </br> </br>
                <form action="insertarResponsables.jsp" method="get">

                    <br>
                    <p>
                        <label class="izq" for="fase">Fase: </label>
                    <td><select name="nombreFase" class="der"  >'>
                            <%

                                ResultSet rs = crud.consultaFasesProyecto(variablesGlobales.getProyecto());
                                while (rs.next()) {
                                    opciones = opciones + "<option value='" + rs.getString(1) + "' > " + rs.getString(1) + "</option>";
                                }

                            %>
                            <%=opciones%>

                            

                        </select>
                        </p>
                        <br>

                        <p>
                            <label class="izq" for="Responsables">Fase: </label>
                    <td><select name="cedulaResponsables" class="der"  >'>
                            <%
                            opciones="";
                                ResultSet rs2 = crud2.consultarIngenieros();
                                while (rs2.next()) {
                                    opciones = opciones + "<option value='" + rs2.getString(1) + "' > " + rs2.getString(2)+ rs2.getString(3)+ "</option>";
                                }

                            %>
                            <%=opciones%>
                        </select>
                        </p>
                        <br>

                        <p>
                            <input type="submit" value=" Guardar ">
                            <input type="reset" value="Limpiar">
                        </p>

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
