<%-- 
    Document   : insertar
    Created on : 12/11/2016, 01:08:22 PM
    Author     : Ingeniero Jean C
--%>


<%@page import="persistencia.CRUD"%>
<%!  CRUD bd = new CRUD();%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar</title>
    </head>
    <body>
        <%
            String cliente = "";
            String direccion = "";
            String telefono = ""; 
            String email = "";
            String nombreProyecto = "";

            cliente = request.getParameter("nombreCliente");
            direccion = request.getParameter("direccion");
            telefono = request.getParameter("telefono");
            email = request.getParameter("e_Mail");
            nombreProyecto = request.getParameter("nombreProyecto");
      
            boolean registro = bd.insertarNuevoProyecto(cliente, direccion, telefono, email, nombreProyecto);
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
