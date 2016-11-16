<%-- 
    Document   : ActualizarIngeniero
    Created on : 14/11/2016, 05:26:49 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  CRUD bd = new CRUD();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            boolean registro = bd.actualizarIngeniero(cedula, variablesGlobales.getIdIngeniero(),
                    nombres, apellidos, telefono, direccion, correo, password);
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
