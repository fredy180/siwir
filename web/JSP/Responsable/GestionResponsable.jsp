<%-- 
    Document   : GestionResponsable
    Created on : 16/11/2016, 08:30:46 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="persistencia.CRUD_Responsable"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String opciones = "";
    CRUD_Responsable crud = new CRUD_Responsable();
%>
<script type="text/javascript">
    function enviar(destino) {
        document.formulario.action = destino;
        document.formulario.submit();
        // document.formulario.submit();

    }


</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Responsable</title>


        <link rel="stylesheet" type="text/css" href="../../CSS/base.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/EstiloTabla.css">
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
                <a  href="../fases/GestionarFase.jsp" > <h3  class="pestaña1"><center>Inicio</center></h3> </a>
                <a  href="RegistrarResponsable.jsp" > <h3  class="pestaña1"><center>Registrar Responsable</center></h3> </a>






            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">



                <h1 class="contenidoh1"> Gestionar Responsables</h1> </br> </br> </br>



                <table>
                    <p>Responsables fase Elicitacion</p>
                    <tr> <th>Responsables</th> <th>Cedula</th> </tr>
                            <%
                                opciones = "";
                                ResultSet rs1 = crud.consultaResponsableFase("ELICITACION", variablesGlobales.getProyecto());
                                while (rs1.next()) {
                                    opciones = opciones + "<tr>"
                                            + " <td>" + rs1.getString(2) + " " + rs1.getString(3) + "</td> "
                                            + "<td><form action='eliminarResponsable.jsp' method='get'>"
                                            + "<input class='izq'  type='text'  name='cedulaResponsables'value='"
                                            + rs1.getString(1) + "'  ></input>"
                                            + "<input type='submit' value=' Eliminar '>"
                                            + "</form> </td>"
                                            + " </tr>";
                                }
                            %>
                            <%= opciones%>



                </table>
                <table>
                    <p>Responsables fase Analisis</p>
                    <tr> <th>Responsables</th> <th>Cedula</th> </tr>
                            <%
                                opciones = "";
                                ResultSet rs2 = crud.consultaResponsableFase("ANALISIS", variablesGlobales.getProyecto());
                                while (rs2.next()) {
                                    opciones = opciones + "<tr>"
                                            + " <td>" + rs2.getString(2) + " " + rs2.getString(3) + "</td> "
                                            + "<td><form action='eliminarResponsableAnalis.jsp' method='get'>"
                                            + "<input class='izq'  type='text'  name='cedulaResponsables'value='"
                                            + rs2.getString(1) + "'  ></input>"
                                            + "<input type='submit' value=' Eliminar '>"
                                            + "</form> </td>"
                                            + " </tr>";
                                }
                            %>
                            <%= opciones%>

                </table>
                <table>
                    <p>Responsables fase Espesisficacion</p>
                    <tr> <th>Responsables</th> <th>Cedula</th> </tr>
                            <%
                                opciones = "";
                                ResultSet rs3 = crud.consultaResponsableFase("ESPESIFICACION", variablesGlobales.getProyecto());
                                while (rs3.next()) {
                                    opciones = opciones + "<tr>"
                                            + " <td>" + rs3.getString(2) + " " + rs3.getString(3) + "</td> "
                                            + "<td><form action='eliminarResponsableEspesificacion.jsp' method='get'>"
                                            + "<input class='izq'  type='text'  name='cedulaResponsables'value='"
                                            + rs3.getString(1) + "'  ></input>"
                                            + "<input type='submit' value=' Eliminar '>"
                                            + "</form> </td>"
                                            + " </tr>";
                                }
                            %>
                            <%= opciones%>



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
