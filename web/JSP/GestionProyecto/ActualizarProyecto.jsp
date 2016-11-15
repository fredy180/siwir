
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    
    
    
</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <%
           int cedula ;
            String nombres = "";
            String apellidos = "";
            String telefono = "";
            String direccion = "";

            cedula = Integer.parseInt(request.getParameter("cedula"));
            nombres =request.getParameter("nombres");
            apellidos =request.getParameter("apellidos");
            telefono= request.getParameter("telefono");
            direccion = request.getParameter("direccion");
      
            CRUD bd = new CRUD();
           boolean actualizado= bd.actualizarIngeniero(cedula, variablesGlobales.getIdIngeniero(), nombres, apellidos, telefono, direccion);
            if (actualizado) {
                out.print("<a href='../../index.jsp'>Inicio</a>");
            } else {
                
                out.print("<a href='index.jsp'>Inicio</a>");
            }

        %>
    </body>
</html>
