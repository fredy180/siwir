
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
           String nombreProyecto = "";
            String cliente = "";
            String direccion = "";
            String telefono = "";
            String correo = "";
            String fechaInicio = "";
            String fechaFin = "";
            boolean finalizado;
            
            nombreProyecto = request.getParameter("nombreProyecto");
            cliente = request.getParameter("cliente");
            direccion = request.getParameter("direccion");
            telefono = request.getParameter("telefono");
            correo = request.getParameter("correo");
            fechaInicio = request.getParameter("fechaInicio");
            fechaFin = request.getParameter("fechaFin");
            finalizado = Boolean.parseBoolean(request.getParameter("estado"));
      
            CRUD bd = new CRUD();
           boolean actualizado= bd.actualizarProyecto(variablesGlobales.getProyecto(), 
                   nombreProyecto, cliente, direccion, telefono, correo, fechaInicio, fechaFin, finalizado);
            if (actualizado) {
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
