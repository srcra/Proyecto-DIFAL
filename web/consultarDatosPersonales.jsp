<%-- 
    Document   : consultarDatosPersonlaes
    Created on : 03-jul-2021, 19:16:11
    Author     : sergio saenz
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.DatosPersonalesDAO"%>
<%@page import="ModeloVO.DatosPersonalesVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos</title>
        <link href="Estilos/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
	
.estilotabla{
	width: 1000px;
	border-radius: 8px;
	padding:10px;
	background-color: white;
	box-shadow: 0px 0px 10px 1px gray;
	height:auto;
}
</style>
    <body>
    <center>
        <h1>Datos Personales</h1>
          <form method="post" action="DatosPersonales">
            <table>
                <tr>
                    <th>
                        ID DATOS
                        <input type="text" name="textNumeroid">
                        <button>Consultar</button>
                    </th> 
                </tr>
            </table>

            <input type="hidden" value="3" name="opcion">
        </form>

        <div style="color: red;">

            <%if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}     

            <%} else {%>
            <div style="color: greenyellow">${MensajeExito}</div>

            <%  }%>

        </div><br><br>
        <form>
            <div class="estilotabla"><br>
            <table class="table display AllDataTables table-striped table-responsive">
                <thead>
                <tr>
                    <th>ID DATOS</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>DIRECCION</th>
                    <th>TELEFONO</th>
                    <th>CORREO</th>
                    <th>ESTADO</th>
                    <th>ID USUARIO</th>
                </tr>
                </thead>
                <tbody>
                <%
                    DatosPersonalesVO datVO = new DatosPersonalesVO();
                    DatosPersonalesDAO datDAO = new DatosPersonalesDAO();
                    ArrayList<DatosPersonalesVO> listaDatosPersonales = datDAO.listar();
                    for (int i = 0; i < listaDatosPersonales.size(); i++) {

                    datVO = listaDatosPersonales.get(i);
                %>
                <tr>
                    <td><%=datVO.getIdDatos()%></td>
                    <td><%=datVO.getNombreDatos()%></td>
                    <td><%=datVO.getApellidoDatos()%></td>
                    <td><%=datVO.getDireccionDatos()%></td>
                    <td><%=datVO.getTelefonoDatos()%></td>
                    <td><%=datVO.getCorreoDatos()%></td>
                    <td><%=datVO.getEstadoDatos()%></td>
                    <td><%=datVO.getIdUsuarioFK()%></td>
                </tr>
                <% } %>
                </tbody>
                <tfoot>
                <tr>
                    <th>ID DATOS</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>DIRECCION</th>
                    <th>TELEFONO</th>
                    <th>CORREO</th>
                    <th>ESTADO</th>
                    <th>ID USUARIO</th>
                </tr>    
                </tfoot>
            </table>
            </div>
        </form>
    </center>
    <script src="JS/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="JS/bootstrap.min.js" type="text/javascript"></script>
    <script src="JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="JS/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script>
		$(document).ready( function () {
		    $('.AllDataTables').DataTable({
		    	language: {
		    		"sProcessing":     "Procesando...",
				    "sLengthMenu":     "Mostrar _MENU_ registros",
				    "sZeroRecords":    "No se encontraron resultados",
				    "sEmptyTable":     "Ningún dato disponible en esta tabla",
				    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
				    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
				    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
				    "sInfoPostFix":    "",
				    "sSearch":         "Buscar:",
				    "sUrl":            "",
				    "sInfoThousands":  ",",
				    "sLoadingRecords": "Cargando...",
				    "oPaginate": {
				        "sFirst":    "Primero",
				        "sLast":     "Último",
				        "sNext":     "Siguiente",
				        "sPrevious": "Anterior"
				    },
				    "oAria": {
				        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
				    }
		    	}
		    });
		} );

	</script>
    </body>
</html>
