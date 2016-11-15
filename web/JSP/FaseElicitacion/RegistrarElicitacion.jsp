<%-- 
    Document   : RegistrarElicitacion
    Created on : 14/11/2016, 02:56:32 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="java.sql.Date"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="persistencia.CRUD_Elicitacion"%>
<%!  CRUD_Elicitacion bd = new CRUD_Elicitacion();%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registar Elicitacion</title>
    </head>
    <body>
        <%
           
            String tecnica = "";
            String fecha="" ; 
            String instrumento = "";
            int responsable=22;

             System.out.println("espejo cabeza de piedra drande ");
            tecnica = request.getParameter("tecnica");
            fecha = request.getParameter("fecha");
            instrumento = request.getParameter("intrumento");
           
           responsable = Integer.parseInt(request.getParameter("responsable"));
            
      
           boolean registro = bd.insertarNuevoProyecto(variablesGlobales.getProyecto(), tecnica, fecha, instrumento, responsable);
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
