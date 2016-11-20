<%-- 
    Document   : IniciaSesion
    Created on : 19/11/2016, 11:59:20 PM
    Author     : freddy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.IniciaSesion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
        int cedula = Integer.parseInt(request.getParameter("nombreUsuario"));
        String passowod =request.getParameter("password");
        
        IniciaSesion sesion = new IniciaSesion();
        
        ResultSet rs = sesion.condustaUsuario(cedula, passowod);
        if(rs.next()){
            
            if(rs.getString(1).equalsIgnoreCase("ADMINISTRADOR")){
             response.sendRedirect("JSP/GestionProyecto/PrincipalProyectos.jsp");
            }
            else if(rs.getString(1).equalsIgnoreCase("Ingeneiro")){{
                response.sendRedirect("JSP_Ingeneiros/Principal.jsp"); 
            }
                
            }
        }else {
            response.sendRedirect("index.jsp");
        
        }
        %>
        
    </body>
</html>
