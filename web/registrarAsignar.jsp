<%-- 
    Document   : registrarAsignar
    Created on : 07-ago-2021, 22:44:10
    Author     : sergio saenz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Asignar</title>
    </head>
    <body>
    <center>
        <h1>Registrar asignar</h1>
       <form method="post" action="AsigOrden">
            <table>
                <tr>
                    <th>
                        Id Asig Orden<br>
                        <input type="text" name="textAsigOrden" ><br><br>
                        Id Datos FK<br>
                        <input type="text" name="textIdDatos"><br><br>
                        Id  Orden FK<br>
                        <input type="text" name="textIdOrden" ><br><br>
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
