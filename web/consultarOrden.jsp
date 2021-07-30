<%-- 
    Document   : consultarOrden
    Created on : 29-jul-2021, 12:37:02
    Author     : sergio saenz
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.OrdenDAO"%>
<%@page import="ModeloVO.OrdenVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orden</title>
        <link href="Estilos/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
	
.estilotabla{
	width: 1000px;
	border-radius: 8px;
	padding:20px;
	background-color: white;
	box-shadow: 0px 0px 10px 1px gray;
	height:auto;
}
</style>
    <body>
    <center>
        <h1>Orden</h1>
          <form method="post" action="Orden">
            <table>
                <tr>
                    <th>
                        ID ORDEN
                        <input type="text" name="textOrden">
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
                    <th>ID ORDEN</th>
                    <th>FECHA ORDEN</th>
                    <th>CANTIDAD PRENDA</th>
                    <th>ESTADO ORDEN</th>
                    <th>ID DATOS FK</th>
                    <th>ID PRENDA FK</th>
                </tr>
                </thead>
                <tbody>
                <%
                    OrdenVO OrdeVO = new OrdenVO();
                    OrdenDAO OrdeDAO = new OrdenDAO();
                    ArrayList<OrdenVO> listaOrden = OrdeDAO.listar();
                    for (int i = 0; i < listaOrden.size(); i++) {

                    OrdeVO = listaOrden.get(i);
                %>
                <tr>
                    <td><%=OrdeVO.getIdOrden()%></td>
                    <td><%=OrdeVO.getFechaOrden()%></td>
                    <td><%=OrdeVO.getCantidadPrenda()%></td>
                    <td><%=OrdeVO.getEstadoOrden()%></td>
                    <td><%=OrdeVO.getIdDatosFK()%></td>
                    <td><%=OrdeVO.getIdPrendaFK()%></td>
                </tr>
                <% } %>
                </tbody>
                <tfoot>
                <tr>
                    <th>ID ORDEN</th>
                    <th>FECHA ORDEN</th>
                    <th>CANTIDAD PRENDA</th>
                    <th>ESTADO ORDEN</th>
                    <th>ID DATOS FK</th>
                    <th>ID PRENDA FK</th>
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
