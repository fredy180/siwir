<%-- 
    Document   : elicitacion
    Created on : 20/11/2016, 12:57:03 AM
    Author     : freddy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistenciIngeneiros.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
    String direccion = "";
    String telefono = "";
    String nombres = "";
    String apellidos = "";
    String correo;
    String password;
    String tipoUsuario;
    int idRegistroElicitacion;
    String selecion = "";
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                    idRegistroElicitacion = Integer.parseInt(request.getParameter("idRegistroElicitacion"));
                    
                    CRUD crud = new CRUD();
                    ResultSet rs = crud.consultaPorId("ELICITACION", idRegistroElicitacion);

                    
                %>
        
        
        
        
        <form name="formulario" method="post">
            <p>
                <label class="izq" for="cedula">Cedula: </label>
                <input  <%="value='" + idIngeniero + "'"%>  class="der" type="text" name="cedula" id="cliente"> </input> 
                
            </p>
            <br>
            <p>
                <label class="izq" for="Subir archivo">Cedula: </label>
                <input   class="der" type="file" name="cedula" id="cliente"> </input> 
                
            </p>
            <br>



            </from>
            </body>
            </html>
