<%-- 
    Document   : Login
    Created on : 26-jun-2021, 18:24:42
    Author     : sergio saenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Iniciar sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Estilos/Estlos.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/difal.jpg">	
    </head>
    <body>
	<header>
		<br>
	<nav >
		<a href="Index.jsp">INICIO</a>
		<a href="Mision.jsp">MISIÓN</a>
		<a href="Vision.jsp">VISIÓN</a>
		<a href="Login.jsp">lOGIN</a>
		<div class="animation start-home"></div>
	</nav>
	<br><br>
</header>
<br>
<div class="imagenyparrafo">
	<img class="imagen1" src="Imagenes/difal.jpg">
<div>
	<p class="parrafo">Confecciones Difal S.A.S diseña y produce dotación para las empresas Colombianas<br> brindando 
		productos y servicios con calidad y seguridad,<br> atendiendo los requerimientos de nuestros clientes.</p>
</div>
</div>
<div class="contenedor">
<div>
<br>
    <center>
        <form method="post" action="Usuario" class="Login">
            <table>
                <br>
                <h1 class="Tlogin">Iniciar Sesión</h1
                <tr>
                <br><br><br>
                <label class="Llabel">Nombre usuario:</label>
                <input type="text" placeholder="Pepito" class="Linput" name="textUsuario">
                <br><br><br><br>
                <label class="Llabel">Contraseña:</label>
                <input type="password" placeholder="******" class="Linput" name="textClave"><br>   
                </tr>
            </table><br><br>
            <button class="Lboton">Ingresar</button><br><br>
            <a href="Index.jsp"><input type="button" class="Lboton"  value="Registrar"></a>
            <br><br>
            <div style="color:white;font-size:20px;">
          
            <%
                if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}     
            <%} else {%>
            <div style="color:white;font-size:20px;">${MensajeExito}</div>
            <%  }%>
        </div>
            <input type="hidden" value="3" name="opcion">
        </form>
    </center>
    <br><br>
</div>
</div>
<footer class="footer">
	<div class="contactenos">
		<p>Contactanos</p>
		<p>Cel:+57 3102265916</p>
		<p>Correo:condifal@hotmail.com</p>
	</div>
	<div class="ubicacion">
		<p>Ubicación</p>
		<p>En la Localidad de Kennedy,<br> barrio Las Delicias Av Boyacá<br> N 43 C 65 Sur  6</p>
	</div>
	<div class="redes">
		<p>Redes sociales</p>
                <a href="https://www.facebook.com/condifal/"><img src="Imagenes/facebook.png" style="height:80px;"></a>
		<p>Confecciones Difal S.A.S</p>
	</div>
</footer>
<br>
</body>
</html>
</body>
</html>
