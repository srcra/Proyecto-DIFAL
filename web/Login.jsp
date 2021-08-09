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
        <link rel="icon" type="image/png" href="Imagenes/difal.jpg">	
        <link href="Estilos/Estlos.css" rel="stylesheet" type="text/css"/>
        <!--fuentes y js-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	
        <link rel="icon" type="image/png" href="Imagenes/difal.jpg">	
    </head>
    
    <body class="cuerpoL">
          <div class="container">
		<div class="img">
                        <img src="Imagenes/avatar.svg"></img>
		</div>
		<div class="contenidoL">
			<form method="POST" action="Usuario">
				<img src="Imagenes/perfil.svg">
				<h2 class="title">¡Bienvenido!</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   <h5>Usuario</h5>
           		   <input type="text" class="input" name="textUsuario">
           		   </div>
           		</div>
           		<div class="input-div pass">
                            <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    <h5>Clave</h5>
           		    <input type="password" class="input" name="textClave">
            	   </div>
            	</div>
            	<input type="submit" class="btn" value="Ingresar">
				<a href="#">Olvido su clave?</a>
				<a href="#">Registrame</a>
            <p style=" color white;font-size:15px;">
            <%
            if (request.getAttribute("MensajeError") != null) { 
            %>
            ${MensajeError}     
            <%} else {%>
            <div style="color: greenyellow">${MensajeExito}</div>
            <%  }%>     
        </p>
        </div>
    </div>
            <input type="hidden" value="3" name="opcion">
        </form>
        <script src="JS/login.js" type="text/javascript"></script>
</body>
</html>