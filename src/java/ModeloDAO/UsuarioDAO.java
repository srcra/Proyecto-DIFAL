/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sergio saenz
 */
public class UsuarioDAO extends Conexion implements Crud {
    //1. Declarar variables u objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion= false;
    private String sql;

    private String IdUsuario="",NombreUsuario="",ClaveUsuario="",IdCargoFK="";
    
    //2. Crear método principal para recibir los datos del VO
    public UsuarioDAO(UsuarioVO usuVO){
        super();
        
        try {
    //3. Conectar a la BD
            conexion= this.obtenerConexion();
    //4. Traer al DAO los datos del VO para hacer la operación 
            IdUsuario = usuVO.getIdUsuario();
            NombreUsuario = usuVO.getNombreUsuario();
            ClaveUsuario = usuVO.getClaveUsuario();
            IdCargoFK=usuVO.getIdCargoFK(); 
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            
        }
        
    }
    //5
    
    @Override
    public boolean aregarRegistro() {
        try {
            
            //Crear la sentancia
            sql ="insert into Usuario (NombreUsuario,ClaveUsuario,IdCargoFK) values (?,?,?)";
            //Crear el puente para esa conexion establecida
            puente = conexion.prepareStatement(sql);
            puente.setString(1,NombreUsuario);
            puente.setString(2,ClaveUsuario);
            puente.setString(3,IdCargoFK);
            puente.executeUpdate();
            operacion= true;
            
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
            }catch (SQLException e){  
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
            
        }
        
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
         try {
            
            //Crear la sentancia
            sql="update Usuario NombreUsuario=?,ClaveUsuario=?,IdCargoFK=? where IdUsuario=?";
            //Crear el puente para esa conexion establecida
            puente= conexion.prepareStatement(sql);
            puente.setString(1, NombreUsuario);
            puente.setString(2, ClaveUsuario);
            puente.setString(2, IdCargoFK);
            puente.setString(4, IdUsuario);
            puente.executeUpdate();
            operacion= true;
            
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try{
                
                this.cerrarConexion();
                
            }catch (SQLException e){  
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null,e);
            }
              
        }
        
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public boolean iniciarSesion (String usuario, String clave){
    
    try {
        conexion=this.obtenerConexion();
        sql="select * from Usuario where NombreUsuario=? and ClaveUsuario=?";
        puente = conexion.prepareStatement(sql);
        puente.setString(1, usuario);
        puente.setString(2, clave);
        mensajero = puente.executeQuery();
        if (mensajero.next()) {
            operacion = true;
        }
        
    } catch (SQLException e) {
        Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
    }finally{
            try{
                 this.cerrarConexion();
            }catch (Exception e){ 
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
            
        }
    return operacion;
 
    }
    
}
