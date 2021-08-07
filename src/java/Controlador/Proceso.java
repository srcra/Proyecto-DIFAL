/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ProcesoDAO;
import ModeloVO.ProcesoVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sara gabriela
 */
@WebServlet(name = "Proceso", urlPatterns = {"/Proceso"})
public class Proceso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
               //1. Recibir datos de las Vistas
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String IdProceso = request.getParameter("textIdProceso");
        String DescripcionProceso = request.getParameter("textDescripcion");
        String FechaProceso = request.getParameter("textFecha");
        String HoraInicio = request.getParameter("textHorai");
        String HoraFin = request.getParameter("textHoraf");
        String PrendasRealizadas = request.getParameter("textPrendasr");        
        String EstadoProceso = request.getParameter("textEstado");
        String IdOrdenFK = request.getParameter("textIdorden");
        String IdDatosFK = request.getParameter("textIddatos");
        
        
        
        ProcesoVO ProVO = new ProcesoVO(IdProceso,DescripcionProceso,FechaProceso,
        HoraInicio,HoraFin,PrendasRealizadas,EstadoProceso,IdOrdenFK,IdDatosFK);
        ProcesoDAO ProDAO = new ProcesoDAO(ProVO);
          
        switch (opcion) {
            case 1:
                if (ProDAO.aregarRegistro()) {
                    request.setAttribute("MensajeExito", "La informacion se registró correctamente");

                } else {

                    request.setAttribute("MensajeError", "La infromacion no se registró correctamente");

                }
                request.getRequestDispatcher("registrarProceso.jsp").forward(request, response);
                break;
                
            case 2: // Actualizar Registro

                if (ProDAO.actualizarRegistro()) {
                    request.setAttribute("MensajeExito", "La informacion se actualizó correctamente");

                } else {

                    request.setAttribute("MensajeError", "La infromacion no se actualizó correctamente");

                }
                request.getRequestDispatcher("actualizarProceso.jsp").forward(request, response);
                break;
                
                
            case 3: //Consultar
                
                ProVO = ProDAO.consultarDatos(IdProceso);
                if (ProVO != null) {
                    
                    request.setAttribute("identificacion consultada",ProVO);
                    request.getRequestDispatcher("actualizarProceso.jsp").forward(request, response);
                
                }else{
                    request.setAttribute("MensajeError", "La identificacion no existe");
                    request.getRequestDispatcher("consultarProceso.jsp").forward(request, response);
                }
                break;
                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
