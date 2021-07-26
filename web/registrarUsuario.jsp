<%-- 
    Document   : registrarUsuario
    Created on : 26-jun-2021, 17:40:19
    Author     : sergio saenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body>
    <center>
        <h1>Registrar Usuario</h1>
        <form method="post" action="Usuario">
            <table>
                <tr>
                Usuario<br>
                <input type="text" name="textUsuario"><br>
                Contraseña<br>
                <input type="password" name="textClave"><br> 
                <input type="hidden" name="textCargo" value="3"><br> 
                </tr>
            </table><br>
            <button>Registrar</button>
            <input type="hidden" value="1" name="opcion">
        </form>
        <div style="color: red;">
          
            <%
                if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}     

            <%} else {%>
            <div style="color:Blue">${MensajeExito}</div>

            <%  }%>
             
             
        </div>
    </center>
    </body>
</html>

