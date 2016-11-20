<%-- 
    Document   : EliminarActividadAnalisi
    Created on : 19/11/2016, 09:23:05 PM
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
       int idRegistroAnalisi = Integer.parseInt(request.getParameter("idRegistroAnalisi"));
            CRUD_Actividad crud = new CRUD_Actividad();
        
          
            boolean registro = crud.eliminarActividaAnalis(idRegistroAnalisi, 
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
