<%-- 
    Document   : registrarProceso
    Created on : 01-ago-2021, 19:36:00
    Author     : sara gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar proceso</title>
    </head>
    <body>
    <center>
        <h1>Registrar Proceso</h1>
         <form method="post" action="Proceso">
            <table>
                <tr>
                    <th>
                        Proceso<br>
                        <input type="text" name="textIdProceso"><br><br>
                        Descripción proceso<br>
                        <input type="text" name="textDescripcion"><br><br>
                        Fecha proceso<br>
                        <input type="date" name="textFecha"><br><br>
                        Hora inicio<br>
                        <input type="time" name="textHorai"><br><br>
                        Hora fin<br>
                        <input type="time" name="textHoraf"><br><br>
                        Prendas realizadas<br>
                        <input type="text" name="textPrendasr"><br><br>
                        Proceso<br>
                        <input type="text" name="textEstado"><br><br>
                        Id orden<br>
                        <input type="text" name="textIdorden"><br><br>
                        Id Datos<br>
                        <input type="text" name="textIddatos"><br><br>
                        <td></td>
                </th>
            </table>
            <button>Registar</button>
            <input type="hidden" value="1" name="opcion">
        </form><br><br>
        <div style="color: red;">
            <%
                if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}     

            <%} else {%>
            <div style="color: greenyellow">${MensajeExito}</div>

            <%  }%>
        </div>
    </center>
    </body>
</html>
