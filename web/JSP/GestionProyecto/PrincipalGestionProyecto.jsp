<%-- 
    Document   : PrincipalGestionProyecto
    Created on : 14/11/2016, 08:58:08 AM
    Author     : Ingeniero Jean C
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String cliente = "" ;
                    String direccion = "";
                    String telefono = "";
                    String email = ""; 
 String nombreProyecto;
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
                <a  href="../FaseElicitacion/PrincipalElicitacion.jsp" > <h3  class="pestaña1"><center>Fase Elicitacion</center></h3> </a>
                
                

            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">
                <%
                    nombreProyecto = request.getParameter("idProyecto");
                    variablesGlobales.setNombreProyecto(nombreProyecto);
                    CRUD crud = new CRUD();
                    ResultSet rs = crud.consultaProyecto(nombreProyecto);                    
                    
                    if(rs.next()){
                        cliente=rs.getString(1);
                        direccion=rs.getString(2);
                        telefono=rs.getString(3);
                        email  =rs.getString(4);
                    }
                %>
                <h1 class="contenidoh1"> Gestion Proyecto</h1> </br> </br> </br>
                <form name="formulario" method="post">
                    <p>
                        <label class="izq" for="nombreCliente">Nombre Cliente: </label>
                        <input  <%="value='"+cliente+"'"%>  class="der" type="text" name="nombreCliente" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="direccion">Direccion: </label>
                        <input  <%="value='"+direccion+"'"%> class="der" type="text" name="direccion" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="telefono">Telefono: </label>
                        <input  <%="value='"+telefono+"'"%> class="der" type="text" name="telefono" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="e_Mail">E-Mail: </label>
                        <input  <%="value='"+email+"'"%> class="der" type="text" name="e_Mail" id="e_Mail">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="nombreProyecto">Nombre Proyecto: </label>
                        <input  <%="value='"+nombreProyecto+"'"%> class="der" type="text" name="nombreProyecto" id="nombreProyecto">
                    </p>
                    <br>
                    <p>
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
