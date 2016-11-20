<%-- 
    Document   : eliminarResponsable
    Created on : 19/11/2016, 11:07:02 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Responsable"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int cedulaResponsables= Integer.parseInt(request.getParameter("cedulaResponsables"));
            CRUD_Responsable crud = new CRUD_Responsable();
           boolean registrado = crud.eliminarResponsable(cedulaResponsables, variablesGlobales.getProyecto(), "ELICITACION");
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
