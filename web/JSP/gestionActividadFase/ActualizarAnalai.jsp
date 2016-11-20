<%-- 
    Document   : ActualizarAnalai
    Created on : 19/11/2016, 09:58:07 PM
    Author     : freddy
--%>

<%@page import="persistencia.CRUD_Actividad"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <%
            String modelo;
            String fechaAsignado;
            int responsable;
            String proyecto = variablesGlobales.getProyecto();
            CRUD_Actividad crud = new CRUD_Actividad();
            modelo = request.getParameter("modelo");
             fechaAsignado = request.getParameter("fechaAsignado");
             
              responsable = Integer.parseInt(request.getParameter("responsable"));
            boolean registro = crud.actualizarActividadAnalisis(variablesGlobales.getIdRegistroAnalisi(),
                    modelo, responsable, proyecto, fechaAsignado);
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
