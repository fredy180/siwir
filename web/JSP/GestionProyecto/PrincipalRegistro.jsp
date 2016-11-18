<%-- 
    Document   : index
    Created on : 12/11/2016, 12:20:53 PM
    Author     : Ingeniero Jean C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Proyecto</title>

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
               


            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registrar Proyecto</h1> </br> </br> </br>
                <form action="insertar.jsp" method="get">
                    <p>
                        <label class="izq" for="Nombre Proyecto">Nombre Proyecto: </label>
                        <input class="der" type="text" name="nombreProyecto" id="nombreProyecto">
                    </p> 
                    <br>
                    <p>
                        <label class="izq" for="Cliente">Cliente </label>
                        <input class="der" type="text" name="cliente" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Direccion">Direccion </label>
                        <input class="der" type="text" name="direccion" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Telefono">Telefono </label>
                        <input class="der" type="text" name="telefono" id="telefono">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Correo">Correo: </label>
                        <input class="der" type="email" name="correo" id="correo">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="fecha Inicio">fecha Inicio: </label>
                        <input class="der" type="date" name="fechaInicio" id="fechaInicio">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="fecha Fin">fecha Fin: </label>
                        <input class="der" type="date" value="" name="fechaFin" id="fechaFin">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Estado">Estado: </label>
                        <br>
                        <input type="radio" name="estado" value="false" checked> En proceso<br>
                        <input type="radio" name="estado" value="true"> Finalizado<br>                       
                 
                    </p>
                    <br>
                    <p>
                        <input type="submit" value=" Registrar " >
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
