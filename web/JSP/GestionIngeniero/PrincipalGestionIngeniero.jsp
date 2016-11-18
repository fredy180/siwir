-- 
    Document   : PrincipalGestionIngeniero
    Created on : 14/11/2016, 05:13:35 PM
    Author     : freddy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String direccion = "";
    String telefono = "";
    String nombres = "";
    String apellidos = "";
    String correo;
    String password;
    String tipoUsuario;
    int idIngeniero;
    String selecion = "";
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
        <title>Gestion Ingeniero</title>


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
                <a  href="PrincipalIngeniero.jsp" > <h3  class="pestaña1"><center>Registrar Ingeniero</center></h3> </a>
                <a  href="ListarIngeniero.jsp"> <h3 class="pestaña2"><center>Listar Ingenieros</center> </h3> </a>



            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">
                <%
                    idIngeniero = Integer.parseInt(request.getParameter("idIngeniero"));
                    variablesGlobales.setIdIngniero(idIngeniero);
                    CRUD crud = new CRUD();
                    ResultSet rs = crud.consultaIngeniero(idIngeniero);

                    if (rs.next()) {
                        nombres = rs.getString(2);
                        apellidos = rs.getString(3);
                        telefono = rs.getString(4);
                        direccion = rs.getString(5);
                        correo = rs.getString(6);
                        tipoUsuario = rs.getString(7);
                        if (tipoUsuario.equalsIgnoreCase("ingeniero")) {
                            selecion = "selected";
                        }
                        password = rs.getString(8);
                    }
                %>
                <h1 class="contenidoh1"> Gestion Ingeniero</h1> </br> </br> </br>
                <form name="formulario" method="post">
                    <p>
                        <label class="izq" for="cedula">Cedula: </label>
                        <input  <%="value='" + idIngeniero + "'"%>  class="der" type="text" name="cedula" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="nombres">Nombre: </label>
                        <input  <%="value='" + nombres + "'"%> class="der" type="text" name="nombres" id="nombres">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="apellidos">Apallidos: </label>
                        <input  <%="value='" + apellidos + "'"%> class="der" type="text" name="apellidos" id="apellidos">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="telefono">Telefono: </label>
                        <input  <%="value='" + telefono + "'"%> class="der" type="text" name="telefono" id="telefono">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="direcion">Direccion: </label>
                        <input  <%="value='" + direccion + "'"%> class="der" type="text" name="direccion" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="correo">Correo </label>
                        <input  <%="value='" + correo + "'"%> class="der" type="email" name="correo" id="correo">
                    </p>

                    <br>
                    <p>
                        <label class="izq" for="Contraseña">Contraseña </label>
                        <input  <%="value='" + password + "'"%> class="der" type="text" name="password" id="password">
                    </p>
                    <br>
                    <p>
                      <label class="izq" for="tipoUsuario">Tipo de usurio </label>
                        <td><select name="tipoUsuario" class="der" >'>
                            <option value="Adminstrador" > Adminstrador</option>";
                            <option value="Ingeniero" <%=selecion%> >Ingeniero</option>";
                        </select>
                    </td>
                    </p>
                    <br>
                    <p>
                        <input type="button" value=" Actualizar " onclick="enviar('ActualizarIngeniero.jsp')">
                        <input type="button" value="Eliminar" onclick="enviar('EliminarIngeniero.jsp')">



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

