<%-- 
    Document   : GestionResponsable
    Created on : 16/11/2016, 08:30:46 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String nombreProyecto = "";
    String cliente = "";
    String direccion = "";
    String telefono = "";
    String correo = "";
    String fechaInicio = "";
    String fechaFin = "";
    boolean finalizado;
%>
<script type="text/javascript">
    function enviar(destino) {
        document.formulario.action = destino;
        document.formulario.submit();
        // document.formulario.submit();
        alert("la estafa 2");
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
                <%
                  //  nombreProyecto = request.getParameter("idProyecto");
                   // variablesGlobales.setNombreProyecto(nombreProyecto);
                    CRUD crud = new CRUD();
                    ResultSet rs = crud.consultaProyecto(nombreProyecto);

                    if (rs.next()) {
                        cliente = rs.getString(2);
                        direccion = rs.getString(3);
                        telefono = rs.getString(4);
                        correo = rs.getString(5);
                        fechaInicio = rs.getString(6);
                        fechaFin = rs.getString(7);
                        finalizado = rs.getBoolean(8);
                    }
                %>
                
                
                <h1 class="contenidoh1"> Gestionar Responsables</h1> </br> </br> </br>

                
                <center> <label for="fase"><b>Gestionar Responsable.</b></label><br>
                <select name="fase">
                    <option value="Elicitacion" selected="selected">Elicitacion</option>
                    <option value="Analisis" selected="selectd">Analis</option>
                    <option value="Especificacion" selected="selectd">Especificacio</option>
                    
                </select>
                    <input type="submit" value="Cargar"><br><br><br><hr>
            </center>  

                <table>
                    <tr> <th>Nombre Responsable</th> <th>Nombre Proyecto</th><th>Nombre Fase</th> </tr>

                    <tr>
                        <td>1</td> 
                        <td>1</td>
                        <td>1+ botton</td>
                       
                    </tr>

                     
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
