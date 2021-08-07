<%-- 
    Document   : actualizarProceso
    Created on : 01-ago-2021, 19:01:23
    Author     : sara gabriela
--%>

<%@page import="ModeloVO.ProcesoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Proceso</title>
    </head>
    <body>
    <center>
        <h1>Actualizar Proceso!</h1>
        <%
            ProcesoVO ProVO =(ProcesoVO) request.getAttribute("identificacion consultada");
            if (ProVO != null) {
        %>
        <form method="post" action="Proceso">
            <table>
                <tr>
                    <th>
                        Proceso<br>
                        <input type="text" name="textIdProceso" value="<%=ProVO.getIdProceso()%>"><br><br>
                        Descripción proceso<br>
                        <input type="text" name="textDescripcion" value="<%=ProVO.getDescripcionProceso()%>"><br><br>
                        Fecha proceso<br>
                        <input type="date" name="textFecha" value="<%=ProVO.getFechaProceso()%>"><br><br>
                        Hora inicio<br>
                        <input type="time" name="textHorai" value="<%=ProVO.getHoraInicio()%>"><br><br>
                        Hora fin<br>
                        <input type="time" name="textHoraf" value="<%=ProVO.getHoraFin()%>"><br><br>
                        Prendas realizadas<br>
                        <input type="text" name="textPrendasr" value="<%=ProVO.getPrendasRealizadas()%>"><br><br>
                        Proceso<br>
                        <input type="text" name="textEstado" value="<%=ProVO.getEstadoProceso()%>"><br><br>
                        Id orden<br>
                        <input type="text" name="textIdorden" value="<%=ProVO.getIdOrdenFK()%>"><br><br>
                        Id Datos<br>
                        <input type="text" name="textIddatos" value="<%=ProVO.getIdDatosFK()%>"><br><br>
                        <td></td>
                        
                       
                </th>
                <tr>
            </table>
            <button>Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br><br>
        <% }%>
        <a href="consultarProceso.jsp">Volver</a><br><br>
        <div style="color: red;">

            <%
                if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}     

            <%} else {%>
            <div style="color: greenyellow">${MensajeExito} </div>
            <%  }%>
        </div>

    </center>

</body>
</html>
