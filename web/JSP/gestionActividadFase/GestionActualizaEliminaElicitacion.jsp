<%-- 
    Document   : GestionActualizaEliminaElicitacion
    Created on : 19/11/2016, 01:55:51 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="persistencia.CRUD_Actividad"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD_Responsable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String opciones = "", tecnica, fechaAplicacion,
            istrumento;
    int idRegistroElicitacion, cedulaResponsable;
%>
<script type="text/javascript">
    function enviar(destino) {
        document.formulario.action = destino;
        document.formulario.submit();
        // document.formulario.submit();
    }


</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Elicitacion</title>
        <link rel="stylesheet" type="text/css" href="../../CSS/EstiloTabla.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/base.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestaña.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/great.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/mini.css" media="screen and (max-width: 480px)">
    </head>
    <body>
        <%
            idRegistroElicitacion = Integer.parseInt(request.getParameter("idRegistroElicitacion"));
            variablesGlobales.setIdactividaElicitacion(idRegistroElicitacion);
            CRUD_Actividad c = new CRUD_Actividad();
            ResultSet rs2 = c.consultarActividFaseElicitacion(variablesGlobales.getProyecto(), idRegistroElicitacion);
            if (rs2.next()) {
                tecnica = rs2.getString(2);
                fechaAplicacion = rs2.getString(3);
                istrumento = rs2.getString(4);
                cedulaResponsable = rs2.getInt(5);
            }

        %>



        <form name="formulario2" method="post" action="actualizarElicitacion.jsp">
            <p>
                <label class="izq" for="tecnica">Tecnica: </label>
                <input class="der" type="text" value='<%= tecnica%>' name="tecnica" >
            </p> 
            <br>
            <br>
            
            <p>
                <label class="izq" for="Responsable">Responsable: </label>
            <td><select name="cedulaResponsable" class="der"  >'>
                    <%
                        opciones = "";
                        String seleccion = "";
                        CRUD_Responsable crud = new CRUD_Responsable();
                        ResultSet rs = crud.consultaResponsableProyecto("ELICITACION", variablesGlobales.getProyecto());
                        while (rs.next()) {
                            seleccion = "";
                            if (rs.getInt(1) == cedulaResponsable) {
                                seleccion += " selected ";
                            }
                            opciones = opciones + "<option value='" + rs.getString(1) + "' " + seleccion + " > " + rs.getString(2) + " " + rs.getString(3) + "</option>";
                        }
                    %>
                    <%=opciones%>

                </select>
                </p>
                <br>
                <p>
                    <label class="izq" for="Fecha">Fecha de Aplicacion </label>
                    <input class="der" type="date" value='<%= fechaAplicacion%>' name="fechaAplicacion" >
                </p> 
                <br>
                <p>
                <label class="izq" for="instrumento">Instrumento </label>
                <textarea rows="4" cols="50" class="der"  name="instrumento" ><%= istrumento%>
                </textarea>
            </p> 

                <p>
                    <input type="submit" value=" Actualizar ">




                </p>

        </form> 

    </body>
</html>

