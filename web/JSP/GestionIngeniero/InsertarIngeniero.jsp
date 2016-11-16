<%-- 
    Document   : nsertarIngeniero
    Created on : 13/11/2016, 07:00:26 PM
    Author     : freddy
--%>

<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD bd = new CRUD();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            int cedula;
            String nombres = "";
            String apellidos = "";
            String telefono = "";
            String direccion = "";
            String correo;
            String password;

            cedula = Integer.parseInt(request.getParameter("cedula"));
            nombres = request.getParameter("nombres");
            apellidos = request.getParameter("apellidos");
            telefono = request.getParameter("telefono");
            direccion = request.getParameter("direccion");
            correo = request.getParameter("correo");
            password = request.getParameter("password");
            boolean registro = bd.insertarNuevoIngeneiro(cedula, nombres, apellidos, telefono, direccion, correo, password);
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
