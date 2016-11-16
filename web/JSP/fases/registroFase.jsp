<%-- 
    Document   : index
    Created on : 12/11/2016, 4:20:53 PM
    Author     : Ingeniero Jean C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Falses</title>

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
                <a  href="ListarIngeniero.jsp"> <h3 class="pestaña2"><center>Listar Ingenieros</center> </h3> </a>


            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registrar Ingeniero</h1> </br> </br> </br>
                <form action="InsertarIngeniero.jsp" method="get">
                    <p>
                        <label class="izq" for="cedula" >Cedula: </label>
                        <input class="der" type="text" name="cedula" id="cedula" >
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="nombres" >Nombre: </label>
                        <input class="der" type="text" name="nombres" id="nombres">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="apellidos">Apellidos: </label>
                        <input class="der" type="text" name="apellidos" id="apellidos">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="telefono">Telefono: </label>
                        <input class="der" type="text" name="telefono" id="telefono">
                    </p>

                    <br>
                    <p>
                        <label class="izq" for="direccion">Direccion: </label>
                        <input class="der" type="text" name="direccion" id="telefono">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="correo">Correo; </label>
                        <input class="der" type="email" name="correo" id="correo">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Contraseña">Contraseña :</label>
                        <input class="der" type="password" name="password" id="password">
                    </p>
                    <br> 
                    <p>
                        <input type="submit" value=" Registrar ">
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
