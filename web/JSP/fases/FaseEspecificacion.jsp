<%-- 
    Document   : FaseEspecificacion
    Created on : 16/11/2016, 05:48:27 PM
    Author     : Ingeniero Jean C
--%>

<%@page import="persistencia.CRUD_Fase"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="persistencia.CRUD"%>
<%@page import="ComponentesBD.variablesGlobales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    float  porcentajeFase;
    String Observaciones="";
    boolean terminado;
    String fechaInicio="";
    String fechaFin=" ";
    String checked2="";
%>
<script type="text/javascript">
    function enviar(destino) {
        document.formulario.action = destino;
        document.formulario.submit();
        // document.formulario.submit();
        alert("la estafa 2");
    }


</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Proyecto</title>


        <link rel="stylesheet" type="text/css" href="../../CSS/base.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/EstiloTabla.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestaña.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/great.css" media="screen and (min-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/pestañaMedio.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/medium.css" media="screen and (min-width: 480px) and (max-width: 900px)">
        <link rel="stylesheet" type="text/css" href="../../CSS/mini.css" media="screen and (max-width: 480px)">
    </head>
    <body>

        <div id="Contenedor">

            <div class="cabecera">

                <div  class="h1"> <h1>Sistema de Informacion (SIWIR) </h1></div>
                <div class="h3"><h3>Ingeniria del sofware</h3></div>


            </div>

            <div class="layoutIzquierda">
                <a  href="../GestionProyecto/PrincipalGestionProyecto.jsp" > <h3  class="pestaña1"><center>Inicio</center></h3> </a>
                <a  href="FaseElicitacion.jsp" > <h3  class="pestaña1"><center>Elicitacion</center></h3> </a>
                <a  href="FaseAnalisis.jsp" > <h3  class="pestaña1"><center>Analisis</center></h3> </a>





            </div>

            <div class="layoutDerecha"></div>

            <div class="contenido">
                <%
                    CRUD_Fase crud = new CRUD_Fase();
                    variablesGlobales.setFase("ESPESIFICACION");
                    ResultSet rs = crud.consultarFase("ESPESIFICACION", variablesGlobales.getProyecto());
                    if (rs.next()) {
                        porcentajeFase = rs.getFloat(1);
                        Observaciones = rs.getString(2);
                        terminado = rs.getBoolean(3);
                        fechaInicio = rs.getString(4);
                        fechaFin = rs.getString(5);
                          if(terminado){
                             checked2="checked";
                          }
                          else{
                              checked2="";
                          }
                        
                    }
                %>
                <h1 class="contenidoh1"> Fase Especificacion</h1> </br> </br> </br>

                <form name="formulario" action="actualizarEstadoFase.jsp" method="get">                 
                    <p>
                        <label class="izq" for="fechaInicio"><%="Fecha Inicii : "+fechaInicio%> </label>
                         <label class="izq" for="fechaInicio"><%="-- Fecha Fin : "+fechaFin%> </label>
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="porcentajeFase">Progreso de fase: </label>
                        <input class="der" type="number" name="porcentajeFase" value='<%=porcentajeFase %>' >
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Observaciones" >Observaciones:  </label>
                        <textarea rows="10" name="Observaciones" ><%=Observaciones %></textarea>
                    </p>
                    <br>
                    <p>
                        <label class="izq" for="Estado">Estado: </label>
                    
                        <input type="radio" name="estadoFase" value="false" checked > En proceso<br>
                        <input type="radio" name="estadoFase" value="true" <%=checked2 %>> Finalizado<br>                       

                        
                    </p>
                    <br>                

                    <p>
                        <input type="submit" value=" Guardar ">

                    </p>

                </form> 

                <hr> <br>

                <table>
                    <tr> <th>Version</th> <th>Fecha Montado</th> <th>Observaciones</th><th>Aprobado</th> <th>Responsable</th> <th>Verificador</th> <th>Resultados</th></tr>

                    <form action="#" ><tr>
                            <td >1</td> 
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>

                            <td>Botton</td>
                        </tr></form>


                </table>
            </div>

            <div class="piePagina">
                <center><h5>Grupo Desarrollador: Estudiantes CECAR </br>
                        Ingenieria de sistemas
                        Jean Suarez-Fredys Vergara</br>
                        @Cecar.edu.co
                    </h5> </center>  

            </div>
    </body>
</html>