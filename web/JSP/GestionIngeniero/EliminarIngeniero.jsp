<%-- 
    Document   : EliminarIngeniero
    Created on : 14/11/2016, 05:27:15 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
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
            CRUD crud = new CRUD();
           boolean eliminado= crud.eliminarIngeniero(variablesGlobales.getIdIngeniero());
      if (eliminado) {
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
