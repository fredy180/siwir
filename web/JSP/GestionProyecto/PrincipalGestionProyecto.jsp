<%-- 
    Document   : PrincipalGestionProyecto
    Created on : 14/11/2016, 08:58:08 AM
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
    String fechaFin = "",checked2="";
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
        <title>Gestion Proyecto</title>


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
                <a  href="../fases/registroFase.jsp" > <h3  class="pestaña1"><center>Crear Fases</center></h3> </a>
                <a  href="../fases/FaseElicitacion.jsp" > <h3  class="pestaña1"><center>Gestionar Fases</center></h3> </a>
                <a  href="../Responsable/GestionResponsable.jsp" > <h3  class="pestaña1"><center>Gestionar Responsables</center></h3> </a>
                <a  href="../gestionActividadFase/eleicitacion.jsp" > <h3  class="pestaña1"><center>Actividad Fases</center></h3> </a>


            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">
                <%
                    nombreProyecto = request.getParameter("idProyecto");
                    variablesGlobales.setNombreProyecto(nombreProyecto);
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
                         if(finalizado){
                             checked2="checked";
                         }
                         else {
                           checked2="";  
                         }
                        
                    }
                %>
                <h1 class="contenidoh1"> Gestion Proyecto</h1> </br> </br> </br>
                <form name="formulario" method="post">
                    <p>
                        <label class="izq" for="Nombre Proyecto">Nombre Proyecto: </label>
                        <input class="der" value='<%=nombreProyecto %>' type="text" name="nombreProyecto" id="nombreProyecto">
                    </p> 
                    <br>
                    <p>
                        <label class="izq" for="Cliente">Cliente </label>
                        <input class="der" value='<%=cliente %>'type="text" name="cliente" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Direccion">Direccion </label>
                        <input class="der" value='<%=direccion %>'type="text" name="direccion" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Telefono">Telefono </label>
                        <input class="der" value='<%=telefono %>' type="text" name="telefono" id="telefono">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Correo">Correo: </label>
                        <input class="der" value='<%=correo %>' type="email" name="correo" id="correo">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="fecha Inicio">fecha Inicio: </label>
                        <input class="der"value='<%=fechaInicio %>' type="date" name="fechaInicio" id="fechaInicio">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="fecha Fin">fecha Fin: </label>
                        <input class="der" value='<%=fechaFin %>'type="date" value="" name="fechaFin" id="fechaFin">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Estado">Estado: </label>
                        <br>
                        <input type="radio" name="estado" value="false" checked>En proceso<br>
                        <input type="radio" name="estado" value="true" <%=checked2 %>> Finalizado<br>                       

                    </p>
                    <br>
                    <input type="button" value=" Actualizar " onclick="enviar('ActualizarProyecto.jsp')">
                    <input type="button" value="Eliminar" onclick="enviar('EliminarProyecto.jsp')">



                    <input type="reset"  value="Limpiar">
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
