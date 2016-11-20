<%-- 
    Document   : eleminaActividaEspesificacion
    Created on : 19/11/2016, 06:31:27 PM
    Author     : freddy
--%>

<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Actividad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      int idRegistroElicitacion = Integer.parseInt(request.getParameter("version"));
            CRUD_Actividad crud = new CRUD_Actividad();
        
          
            boolean registro = crud.eliminarActividaElicitacion(idRegistroElicitacion, 
                    variablesGlobales.getProyecto() );
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
