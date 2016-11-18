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
            String nombreProyecto = "";
            String cliente = "";
            String direccion = "";
            String telefono = "";
            String correo = "";
            String fechaInicio = "";
            String fechaFin = "";
            boolean finalizado=true;

            nombreProyecto = request.getParameter("nombreProyecto");
            cliente = request.getParameter("cliente");
            direccion = request.getParameter("direccion");
            telefono = request.getParameter("telefono");
            correo = request.getParameter("correo");
            fechaInicio = request.getParameter("fechaInicio");
            fechaFin = request.getParameter("fechaFin");
          
               if(request.getParameter("estado").equals("false")){
                     finalizado = false;
               }
           
            boolean registro = bd.insertarNuevoProyecto(nombreProyecto, cliente, direccion, telefono, correo, fechaInicio, fechaFin, finalizado);
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
