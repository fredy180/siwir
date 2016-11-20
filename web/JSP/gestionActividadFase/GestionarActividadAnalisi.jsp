<%-- 
    Document   : index
    Created on : 12/11/2016, 12:20:53 PM
    Author     : Ingeniero freddy
--%>

<%@page import="persistencia.CRUD_Actividad"%>
<%@page import="persistencia.CRUD_Responsable"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String opciones = "", cadena = "",
        modelo,fechaAsignado;
    int idRegistroAnalisi, responsable;
     CRUD_Responsable crud = new CRUD_Responsable();
%>
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
                <a  href="eleicitacion.jsp" > <h3  class="pestaña1"><center>Espesificacion</center></h3> </a>

            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">

                <h1 class="contenidoh1"> Registro de Activida Analisi</h1> </br> </br> </br>
                <%
                     idRegistroAnalisi = Integer.parseInt(request.getParameter("idRegistroAnalisi"));
                     variablesGlobales.setIdRegistroAnalisi(idRegistroAnalisi);
                     
                    CRUD_Actividad c = new CRUD_Actividad();
                   
                    ResultSet rs2 = c.consultarActividFaseAnali(variablesGlobales.getProyecto(), idRegistroAnalisi);
                    if (rs2.next()) {
                        modelo = rs2.getString(2);
                        responsable = rs2.getInt(3);
                         fechaAsignado = rs2.getString(4);
                      
                    }
                %>

                <form action="ActualizarAnalai.jsp" method="get">
                    <p>
                        <label class="izq" for="modelo">Modelo </label>
                        <input class="der" type="text" name="modelo" value='<%=modelo%>'>
                    </p> 
                    <br>

                    <p>
                        <label class="izq" for="Responsable">Responsable: </label>

                        <select name="responsable" class="der"  >'>
                            <%                                
                             
                                ResultSet rs = crud.consultaResponsableProyecto("ANALISIS", variablesGlobales.getProyecto());
                                String s="";
                                while (rs.next()) {
                                    s="";
                                    if(idRegistroAnalisi==rs.getInt(1)){
                                    s=" selected ";
                                    }
                                    opciones = opciones + "<option value='" + rs.getString(1) + "'"+s+" > " + rs.getString(2) + " " + rs.getString(3) + "</option>";
                                }
                            %>
                            <%=opciones%>

                        </select>
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Fecha">Fecha Asignar </label>
                        <input class="der" type="date" name="fechaAsignado" value='<%=fechaAsignado %>'>
                    </p> 
                    <br>
                    
                    

                        <p>
                            <input type="submit" value=" Actualizar ">
                            
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
