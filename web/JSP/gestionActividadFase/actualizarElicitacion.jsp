<%-- 
    Document   : actualizarElicitacion
    Created on : 19/11/2016, 12:14:35 PM
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
            String tecnica;
            String fechaAplicacion;
            int cedulaResponsable;
            String proyecto = variablesGlobales.getProyecto();
            int idRegistroElicitacion = variablesGlobales.getIdActividadElicitacion();
            CRUD_Actividad crud = new CRUD_Actividad();
            tecnica = request.getParameter("tecnica");
            fechaAplicacion = request.getParameter("fechaAplicacion");
            cedulaResponsable = Integer.parseInt(request.getParameter("cedulaResponsable"));
            boolean registro = crud.actualizarActividadElicitacion(idRegistroElicitacion,
                    proyecto, tecnica, fechaAplicacion, cedulaResponsable);
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
