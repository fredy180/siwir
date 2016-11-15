<%-- 
    Document   : PrincipalGestionElicitacion
    Created on : 14/11/2016, 05:40:30 PM
    Author     : freddy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! String cliente = "" ;
                    String direccion = "";
                    String telefono = "";
                    String email = ""; 
 int idIlicitacion;
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
        <title>Gestion Elicitacion</title>


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
                <a  href="FaseElicitacion/PrincipalElicitacion.jsp" > <h3  class="pestaña1"><center>Registrar Elicitacion</center></h3> </a>
                <a  href="ListarElicitacion.jsp"> <h3 class="pestaña2"><center>Lista Elicitacion</center> </h3> </a>
                
                

            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">
                <%
                    idIlicitacion = Integer.parseInt(request.getParameter("idElicitacion"));
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
                <h1 class="contenidoh1"> Gestion Elicitacion</h1> </br> </br> </br>
               <form name="formulario" method="post">
                    <p>
                        <label class="izq" for="tecnica">Tecnica: </label>
                        <input  <%="value='"+tecnica+"'"%>  class="der" type="text" name="tecnica" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="fecha">Fecha: </label>
                        <input  <%="value='"+fecha+"'"%> class="der" type="text" name="fecha" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="instrumento">Instrumento: </label>
                        <input  <%="value='"+instrumento+"'"%> class="der" type="text" name="instrumento" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="responsable">Responsable: </label>
                        <input  <%="value='"+responsable+"'"%> class="der" type="text" name="responsable" id="e_Mail">
                    </p>
                    <br>
                   
                    <p>
                        <input type="button" value=" Actualizar " onclick="enviar('ActualizarElicitacion.jsp')">
                        <input type="button" value="Eliminar" onclick="enviar('EliminarElicitacion.jsp')">
                        
                        

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

