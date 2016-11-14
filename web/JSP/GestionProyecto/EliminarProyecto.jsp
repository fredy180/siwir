<%-- 
    Document   : EliminarProyecto
    Created on : 14/11/2016, 12:23:52 PM
    Author     : Ingeniero Jean C
--%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Proyecto</title>
    </head>
    <body>
        
        <%
            CRUD crud = new CRUD();
           boolean eliminado= crud.eliminarProyecto(variablesGlobales.getProyecto());
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
