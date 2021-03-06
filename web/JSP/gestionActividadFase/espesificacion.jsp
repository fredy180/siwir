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
<%! String opciones = "", cadena = "";%>
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
                <form action="insertarActividadEspesisificacion.jsp" method="get">
                    <p>
                        <label class="izq" for="Numero version">version: </label>
                        <input class="der" type="text" name="version" id="nombreProyecto">
                    </p> 
                    <br>

                    <p>
                        <label class="izq" for="Responsable">Responsable: </label>
                   
                        <select name="cedulaResponsable" class="der"  >'>
                            <%
                                CRUD_Responsable crud = new CRUD_Responsable();
                                ResultSet rs = crud.consultaResponsableProyecto("ESPESIFICACION", variablesGlobales.getProyecto());
                                while (rs.next()) {
                                    opciones = opciones + "<option value='" + rs.getString(1) + "' > " + rs.getString(2) + " " + rs.getString(3) + "</option>";
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

                            <%=opciones%>

                        </select>
                        </p>
                        <br>

                        <p>
                            <input type="submit" value=" Registar ">
                            <input type="reset" value="Limpiar">
                        </p>

                </form> 

                <br>
                <hr>
                <br>
                </center>  

                <table>
                    <tr> <th>Responsable</th> <th>Verificador</th><th>Version </th> </tr>

                    <%
                        ResultSet rs2;
                        CRUD_Actividad crud2 = new CRUD_Actividad();
                        rs2 = crud2.consultarActividesFaseEspesisificacione(variablesGlobales.getProyecto());
                        cadena = "";

                        while (rs2.next()) {
                            cadena = cadena + "<tr>"
                                    + "<td>" + rs2.getString(2) + "</td>"
                                    + "<td>" + rs2.getString(3)
                                    + "<td><form action='GestionarActualizarEspesificacion.jsp' method='get'>"
                                    + "<input class='izq'  type='text'  name='version'value='"
                                    + rs2.getString(1) + "'  ></input>"
                                    + "<input type='submit' value=' editar '>"
                                    + "</form> </td>"
                                    + "<td><form action='eleminaActividaEspesificacion.jsp' method='get'>"
                                    + "<input class='izq'  type='text'  name='version'value='"
                                    + rs2.getString(1) + "'  ></input>"
                                    + "<input type='submit' value= ' Eliminar '>"
                                    + "</form> </td></tr>";
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
