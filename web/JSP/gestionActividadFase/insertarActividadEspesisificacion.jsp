<%-- 
    Document   : insertarActividadEspesisificacion
    Created on : 19/11/2016, 01:52:51 PM
    Author     : freddy
--%>

<%@page import="persistencia.CRUD_Actividad"%>
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
            int version, verificador;
            int cedulaResponsable;
            String proyecto = variablesGlobales.getProyecto();
            CRUD_Actividad crud = new CRUD_Actividad();
            version = Integer.parseInt(request.getParameter("version"));
            verificador = Integer.parseInt(request.getParameter("verificador"));
            cedulaResponsable = Integer.parseInt(request.getParameter("cedulaResponsable"));
       
            boolean registro = crud.insertarActividadEspesisificacion(version , cedulaResponsable, verificador, proyecto);
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
