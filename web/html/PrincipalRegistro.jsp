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
        
        <link rel="stylesheet" type="text/css" href="../CSS/base.css">
        <link rel="stylesheet" type="text/css" href="../CSS/pestaña.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../CSS/great.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../CSS/mini.css" media="screen and (max-width: 480px)">
    </head>
    <body>
        
        <div id="Contenedor">

            <div class="cabecera">

                <div  class="h1"> <h1>Sistema de Informacion SIWIR </h1></div>
                <div class="h3"><h3>Ingeniria del sofware</h3></div>


            </div>

            <div class="layoutIzquierda">
                <a  href="PrincipalProyectos.jsp" > <h3  class="pestaña1"><center>Proyectos Registrado</center></h3> </a>
                <a  href="#"> <h3 class="pestaña2"><center>Actualizar Proyecto</center> </h3> </a>
                <a  href="#" > <h3 class="pestaña3"><center>Eliminar Proyecto</center></h3> </a>
                
            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registrar Proyecto</h1> </br> </br> </br>
                <form action="../insertar.jsp" method="get">
                    <p>
                        <label class="izq" for="nombreCliente">Nombre Cliente: </label>
                        <input class="der" type="text" name="nombreCliente" id="cliente">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="direccion">Direccion: </label>
                        <input class="der" type="text" name="direccion" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="telefono">Telefono: </label>
                        <input class="der" type="text" name="telefono" id="direccion">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="e_Mail">E-Mail: </label>
                        <input class="der" type="text" name="e_Mail" id="e_Mail">
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="nombreProyecto">Nombre Proyecto: </label>
                        <input class="der" type="text" name="nombreProyecto" id="nombreProyecto">
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
