<%-- 
    Document   : insertarResponsables
    Created on : 18/11/2016, 01:16:29 AM
    Author     : freddy
--%>

<%@page import="persistencia.CRUD_Responsable"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String cedulaResponsables = request.getParameter("cedulaResponsables");
        String proyecto = variablesGlobales.getProyecto();
        String nombreFase = request.getParameter("nombreFase");
        CRUD_Responsable crudr = new CRUD_Responsable();
        boolean registrado =crudr.insertarFase(cedulaResponsables, proyecto, nombreFase);
        if (registrado) {
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
