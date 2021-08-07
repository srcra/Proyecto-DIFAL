<%-- 
    Document   : Vision
    Created on : 27-jun-2021, 13:51:38
    Author     : sergio saenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Visión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"/>
        <link href="Estilos/Estlos.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/difal.jpg">	
    </head>
    <body>
	<!-- Navegador -->
  <nav class="navbar navbar-expand-lg navbar-mainbg">
    <!-- Logo -->
    <a class="navbar-brand navbar-logo" href="#">Confecciones Difal S.A.S</a>
    <!-- Botón -->
    <button 
      class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <i class="fas fa-bars text-white"></i>
    </button>
    <!-- Vinculos -->
    <div 
      class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <!-- Estilos -->
            <div class="hori-selector">
              <div class="left"></div>
              <div class="right"></div>
            </div>
            <!-- Enlaces -->
            <li class="nav-item">
                <a 
                  class="nav-link" href="Index.jsp">
                  <i 
                    class="fas fa-bars">
                  </i>Inicio
                </a>
            </li>
            <li class="nav-item ">
                <a 
                  class="nav-link" href="Mision.jsp">
                  <i 
                    class="far fa-address-book">
                  </i>Mision
                </a>
            </li>
            <li class="nav-item active">
                <a 
                  class="nav-link" href="Vision.jsp">
                  <i class="fas fa-eye">
                  </i>Vision
                </a>
            </li>
            <li class="nav-item">
                <a 
                  class="nav-link" href="Login.jsp">
                  <i 
                    class="fas fa-sign-in-alt">
                  </i>Login
                </a>
            </li>
        </ul>
    </div>
  </nav>
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
        <div class="Vision">    
            <br>
    <h1 class="Tvision">Visión</h1>
    <br><br><br>
            <p class="Vparrafo">
                Ser una empresa reconocida a nivel nacional, que ofrece la mejor
                opción en la confección de ropa industrial y prendas de vestir, 
                con innovación constante en diseños y productos de excelente 
                calidad, basándonos en la confianza y el compromiso del equipo, 
                generando bienestar para todos.
            </p>
        </div>  
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
<!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
  <script src="JS/menu.js" type="text/javascript"></script>
</body>
</html>

