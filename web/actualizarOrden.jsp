<%-- 
    Document   : actualizarOrden
    Created on : 29-jul-2021, 18:49:52
    Author     : sergio saenz
--%>

<%@page import="ModeloVO.OrdenVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Orden</title>
    </head>
    <body>
    <center>
        <h1>Actualizar Orden</h1>
        <%
            OrdenVO OrdeVO =(OrdenVO) request.getAttribute("identificacion consultada");
            if (OrdeVO != null) {
        %>
        <form method="post" action="Orden">
            <table>
                <tr>
                    <th>
                        Id Orden<br>
                        <input type="text" name="textOrden" value="<%=OrdeVO.getIdOrden()%>"><br><br>
                        Fecha Orden<br>
                        <input type="date" name="textFecha" value="<%=OrdeVO.getFechaOrden()%>"><br><br>
                        Cantidad Prenda<br>                 
                        <input type="text" name="textCantidad" value="<%=OrdeVO.getCantidadPrenda()%>"><br><br>
                        Estado Orden<br>
                        <input type="text" name="textEstado" value="<%=OrdeVO.getEstadoOrden()%>"><br><br>
                        Id Datos<br>
                        <input type="text" name="textIdDato" value="<%=OrdeVO.getIdDatosFK()%>"><br><br>
                        Id Prenda<br>
                        <input type="text" name="textPrenda" value="<%=OrdeVO.getIdPrendaFK()%>"><br><br>
                       <td></td>
                </th>
            </table>
            <button>Actualizar</button>
            <input type="hidden" value="2" name="opcion">
        </form><br><br>
        <% }%>
        <a href="consultarOrden.jsp">Volver</a><br><br>
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