<%-- 
    Document   : actualizarEstadoFase
    Created on : 17/11/2016, 11:20:26 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Fase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CRUD_Fase bd = new CRUD_Fase();
            float porcentajeFase;
            String Observaciones;
            boolean terminado = false;
            porcentajeFase = Float.parseFloat(request.getParameter("porcentajeFase"));
            Observaciones = request.getParameter("Observaciones");
            if (request.getParameter("estadoFase").equals("true")) {
                terminado = true;
            } else {
                terminado = false;
            }
            boolean registro = bd.actualizarEstadoFase(porcentajeFase, Observaciones, terminado, variablesGlobales.getFase(), variablesGlobales.getProyecto());

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
