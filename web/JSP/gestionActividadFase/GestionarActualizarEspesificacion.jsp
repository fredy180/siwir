<%-- 
    Document   : index
    Created on : 12/11/2016, 12:20:53 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="persistencia.CRUD_Actividad"%>
<%@page import="persistencia.CRUD_Responsable"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String opciones = "", cadena = "";
    int version, cedulaResponsable, verificador;
     CRUD_Responsable crud = new CRUD_Responsable();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Especificacion</title>
        <link rel="stylesheet" type="text/css" href="../../CSS/EstiloTabla.css">
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
                <a  href="PrincipalProyectos.jsp" > <h3  class="pestaña1"><center>Proyectos Registrado</center></h3> </a>
                <a  href="eleicitacion.jsp" > <h3  class="pestaña1"><center>Elicitacio</center></h3> </a>
                <a  href="analisi.jsp" > <h3  class="pestaña1"><center>Analis</center></h3> </a>

            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registro de Activida Espesificacion</h1> </br> </br> </br>
                <%
                    int version = Integer.parseInt(request.getParameter("version"));
                    CRUD_Actividad c = new CRUD_Actividad();
                    variablesGlobales.setVersion(version);
                    ResultSet rs2 = c.consultarActividFaseEspesificacion(variablesGlobales.getProyecto(), version);
                    if (rs2.next()) {
                        cedulaResponsable = rs2.getInt(7);
                        verificador = rs2.getInt(5);
                      
                    }


                %>

                <form action="insertarActividadEspesisificacion.jsp" method="get">
                    <p>
                        <label class="izq" for="Numero version">version: </label>
                        <input class="der" type="text" name="version" value='<%=version%>'>
                    </p> 
                    <br>

                    <p>
                        <label class="izq" for="Responsable">Responsable: </label>

                        <select name="cedulaResponsable" class="der"  >'>
                            <%                                
                             
                                ResultSet rs = crud.consultaResponsableProyecto("ESPESIFICACION", variablesGlobales.getProyecto());
                                String s="";
                                while (rs.next()) {
                                    s="";
                                    if(cedulaResponsable==rs.getInt(1)){
                                    s=" selected ";
                                    }
                                    opciones = opciones + "<option value='" + rs.getString(1) + "'"+s+" > " + rs.getString(2) + " " + rs.getString(3) + "</option>";
                                }
                            %>
                            <%=opciones%>

                        </select>
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Verificador ">Verificador </label>
                    <td>
                        <select name="verificador" class="der"  >'>

                         <%                                
                             
                                ResultSet rs22 = crud.consultaResponsableProyecto("ESPESIFICACION", variablesGlobales.getProyecto());
                                String ss="";
                                while (rs.next()) {
                                    s="";
                                    if(verificador==rs22.getInt(1)){
                                    s=" selected ";
                                    }
                                    opciones = opciones + "<option value='" + rs22.getString(1) + "'"+ss+" > " + rs22.getString(2) + " " + rs22.getString(3) + "</option>";
                                }
                            %>
                            <%=opciones%>

                        </select>
                        </p>
                        <br>

                        <p>
                            <input type="submit" value=" Registar ">
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
