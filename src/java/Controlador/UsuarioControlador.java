/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sergio saenz
 */
@WebServlet(name = "UsuarioControlador", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

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
        String IdUsuario = request.getParameter("textId");
        String NombreUsuario = request.getParameter("textUsuario");
        String ClaveUsuario = request.getParameter("textClave");
        String IdCargoFK =request.getParameter("textCargo");
        
        //2. Hacer pregunta ¿Quién tiene los datos de forma segura en el sistema? = VO
        UsuarioVO usuVO = new UsuarioVO(IdUsuario,NombreUsuario,ClaveUsuario,IdCargoFK);
        
        //3.¿Quién hace las operaciones? = DAO
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);
        
        //4.Administrar operaciones del módulos
        switch (opcion) {

            case 1: // Aregar Registro

                if (usuDAO.aregarRegistro()) {

                    request.setAttribute("MensajeExito", "El usuario se registró correctamente");

                } else {

                    request.setAttribute("MensajeError", "El usuario NO se registró correctamente");

                }
                request.getRequestDispatcher("registrarUsuario.jsp").forward(request, response);
                break;
                
            case 2: // Actualizar Registro
                
                if (usuDAO.actualizarRegistro()) {
                    
                    request.setAttribute("MensajeExito", "El usuario se actualizó correctamente");
                    
                }else {
                    
                    request.setAttribute("MensajeError", "El usuario NO se actualizó correctamente");
                    
                }
                request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                break;
                
            case 3: //Inicio de Sesión
                
                if (usuDAO.iniciarSesion(NombreUsuario,ClaveUsuario)) {
                    
                    HttpSession miSesion =request.getSession(true);
                    RolDAO rolDAO= new RolDAO();
                    usuVO =new UsuarioVO(IdUsuario,NombreUsuario,ClaveUsuario,IdCargoFK);
                    miSesion.setAttribute("datosUsuario", usuVO);
                    
                    ArrayList<UsuarioVO> listaRoles= rolDAO.rol(NombreUsuario);
                    
                    for(int i=0;i<listaRoles.size();i++){
                    usuVO=listaRoles.get(i);
                    IdCargoFK = usuVO.getIdCargoFK();
                    }
                    miSesion.setAttribute("rol",listaRoles);   
                    
                    if(usuVO.getRol().equals("Administrador")){
                    request.getRequestDispatcher("Administrador.jsp").forward(request, response);
                    }
                    else if(usuVO.getRol().equals("Empleado")){
                    request.getRequestDispatcher("Empleado.jsp").forward(request, response);
                    }
                    else{
                    request.getRequestDispatcher("Cliente.jsp").forward(request, response);
                    }
                              
                }else{
                    request.setAttribute("MensajeError","El usuario y/o la contraseña son incorrectos");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
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
