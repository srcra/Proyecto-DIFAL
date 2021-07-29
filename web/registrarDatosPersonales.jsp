<%-- 
    Document   : registrarDatosPersonales
    Created on : 03-jul-2021, 19:34:04
    Author     : sergio saenz
--%>
<%@page import="ModeloVO.DatosPersonalesVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Datos personales</title>
    </head>
    <body>
    <center>
        <h1>Registrar Datos</h1>
         <form method="post" action="DatosPersonales">
            <table>
                <tr>
                    <th>
                        Datos<br>
                        <input type="text" name="textNumeroid"><br><br>
                        Nombre<br>
                        <input type="text" name="textNombre"><br><br>
                        Apellido<br>
                        <input type="text" name="textApellido"><br><br>
                        Direccion<br>
                        <input type="text" name="textDireccion"><br><br>
                        Telefono<br>
                        <input type="text" name="textTelefono"><br><br>
                        Correo<br>
                        <input type="text" name="textCorreo"><br><br>
                        Estado<br>
                        <input type="text" name="textEstado"><br><br>
                        Id usuario<br>
                        <input type="text" name="textUsuario"><br><br>
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