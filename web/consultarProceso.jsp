<%-- 
    Document   : consultarProceso
    Created on : 01-ago-2021, 18:42:26
    Author     : sara gabriela
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProcesoDAO"%>
<%@page import="ModeloVO.ProcesoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso</title>
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
        <h1>Datos Proceso</h1>
          <form method="post" action="Proceso">
            <table>
                <tr>
                    <th>
                        ID PROCESO
                        <input type="number" name="textIdProceso">
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
            <table class="table display AllDataTables table-striped ">
                <thead>
                <tr>
                    <th>ID PROCESO</th>
                    <th>DESCRIPCIÓN PROCESO</th>
                    <th>FECHA PROCESO</th>
                    <th>HORA INICIO</th>
                    <th>HORA FIN</th>
                    <th>PRENDAS REALIZADAS</th>
                    <th>ESTADO PROCESO</th>
                    <th>ID ORDEN FK</th>
                    <th>ID DATOS FK</th>

                </tr>
                </thead>
                
                <tbody>
                <%
                    ProcesoVO ProVO = new ProcesoVO();
                    ProcesoDAO ProDAO = new ProcesoDAO();
                    ArrayList<ProcesoVO> listaProceso = ProDAO.listar();
                    for (int i = 0; i < listaProceso.size(); i++) {

                    ProVO = listaProceso.get(i);
                %>
                <tr>
                    <td><%=ProVO.getIdProceso()%></td>
                    <td><%=ProVO.getDescripcionProceso()%></td>
                    <td><%=ProVO.getFechaProceso()%></td>
                    <td><%=ProVO. getHoraInicio()%></td>
                    <td><%=ProVO.getHoraFin()%></td>
                    <td><%=ProVO.getPrendasRealizadas()%></td>
                    <td><%=ProVO.getEstadoProceso()%></td>
                    <td><%=ProVO.getIdOrdenFK()%></td>
                    <td><%=ProVO.getIdDatosFK()%></td>
             
                </tr>
                <% } %>
                </tbody>
                <tfoot>
                <tr>
                  <th>ID PROCESO</th>
                    <th>DESCRIPCIÓN PROCESO</th>
                    <th>FECHA PROCESO</th>
                    <th>HORA INICIO</th>
                    <th>HORA FIN</th>
                    <th>PRENDAS REALIZADAS</th>
                    <th>ESTADO PROCESO</th>
                    <th>ID ORDEN FK</th>
                    <th>ID DATOS FK</th>
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
