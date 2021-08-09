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
    <script src="JS/Validaciones.js" type="text/javascript"></script>
    <body>
    <center>
        <h1>Registrar Datos</h1>
         <form method="post" action="DatosPersonales">
            <table>
                <tr>
                    <th>
                         Datos<br>
                        <input type="text" name="textNumeroid" id="id"><br><br>
                        Nombre<br>
                        <input type="text" name="textNombre" id="nombre"><br><br>
                        Apellido<br>
                        <input type="text" name="textApellido" id="apellido"><br><br>
                        Direccion<br>
                        <input type="text" name="textDireccion" id="direccion"><br><br>
                        Telefono<br>
                        <input type="text" name="textTelefono" id="telefono"><br><br>
                        Correo<br>
                        <input type="text" name="textCorreo" id="email"><br><br>
                        Estado<br>
                        <input type="text" name="textEstado" id="estado"><br><br>
                        Id usuario<br>
                        <input type="text" name="textUsuario" id="idusuario"><br><br>
                        <td></td>
                </th>
            </table>
            <button class="enviar" onclick="validar(id, nombre, 
                        apellido, direccion, telefono, email, estado, idusuario)" >Registrar</button>
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
