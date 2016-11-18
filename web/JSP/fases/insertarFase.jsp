<%-- 
    Document   : nsertarIngeniero
    Created on : 13/11/2016, 07:00:26 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Fase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD_Fase bd = new CRUD_Fase();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
         
            String fechaInicio = "";
            String fechaFin = "";
            String nombreFase = "";
            String proyecto = "";
            

            fechaInicio = request.getParameter("fechaInicio");
            fechaFin = request.getParameter("fechaFin");
            nombreFase = request.getParameter("nombreFase");
            proyecto = variablesGlobales.getProyecto();
            
            boolean registro = bd.insertarFase(fechaInicio, fechaFin, nombreFase, proyecto);
            if (registro) {
                out.print("Registro exitoso");
                out.print("<hr>");
                out.print("<a href='index.jsp'>Inicio</a>");
            } else {
                out.print("Registro no exitoso");
                out.print("<hr>");
                out.print("<a href='index.jsp'>Inicio</a>");
            }

        %>
    </body>
</html>
