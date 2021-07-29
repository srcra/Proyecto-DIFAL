<%-- 
    Document   : Sesiones
    Created on : 26-jun-2021, 19:40:42
    Author     : sergio saenz
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
response.setHeader("Pragma", "No-cache");
response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
response.setDateHeader("Expires",0);
%>
  
<%
   HttpSession buscarSesion =(HttpSession)request.getSession();
   String usuario ="";
    if(buscarSesion.getAttribute("datosUsuario")==null){
    
         request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
    else{
    UsuarioVO usuVO=(UsuarioVO)buscarSesion.getAttribute("datosUsuario");
    usuario =usuVO.getNombreUsuario();
    
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesiones</title>
    </head>
    <body>
    <center>
        <div style="float:right;">
        <h1 style="color:gray;">Bienvenido:<%=usuario%></h1>
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesion">
        </form><br><br>
        <div><br><br>
            <div>
                
            </div><br><br>
            <div>
                
            </div><br><br>
            </center>
    </body>
</html>
