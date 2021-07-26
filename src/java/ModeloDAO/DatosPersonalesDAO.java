/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.DatosPersonalesVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sergio saenz
 */
public class DatosPersonalesDAO extends Conexion implements Crud {
    
    //1. Declarar variables u objetos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion= false;
    private String sql;
    
     private String IdDatos="",NombreDatos="",ApellidoDatos="",DireccionDatos="",
             TelefonoDatos="",CorreoDatos="",EstadoDatos="",IdUsuarioFK="";
     
     public DatosPersonalesDAO(){
     }
    
      //2. Crear método principal para recibir los datos del VO
    public DatosPersonalesDAO(DatosPersonalesVO datVO){
        super();
        
        try {
    //3. Conectar a la BD
            conexion= this.obtenerConexion();
    //4. Traer al DAO los datos del VO para hacer la operación 
            IdDatos = datVO.getIdDatos();
            NombreDatos = datVO.getNombreDatos();
            ApellidoDatos = datVO.getApellidoDatos();
            DireccionDatos=datVO.getDireccionDatos(); 
            TelefonoDatos = datVO.getTelefonoDatos();
            CorreoDatos = datVO.getCorreoDatos();
            EstadoDatos = datVO.getEstadoDatos();
            IdUsuarioFK=datVO.getIdUsuarioFK(); 
            
            
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            
        }
        
    }
    
    @Override
    public boolean aregarRegistro() {
        try {
            
            //Crear la sentencia
            sql = "insert into datospersonales values (?, ?, ?, ?, ?, ?, ?, ?)";
             //Crear el puente para esa conexion establecida
            puente = conexion.prepareStatement(sql);
            puente.setString(1, IdDatos);
            puente.setString(2, NombreDatos);
            puente.setString(3, ApellidoDatos);
            puente.setString(4, DireccionDatos);
            puente.setString(5, TelefonoDatos);
            puente.setString(6, CorreoDatos);
            puente.setString(7, EstadoDatos);
            puente.setString(8, IdUsuarioFK);
            puente.executeUpdate();
            operacion = true;
            
            System.out.println(sql);
            
        } catch (SQLException e) {
            Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
            }catch (SQLException e){  
                Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
            }
            
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
         try {
            
            //Crear la sentancia
            sql="update datospersonales set NombreDatos=?,ApellidoDatos=?,"
            + "DireccionDatos=?,TelefonoDatos=?,CorreoDatos=?,EstadoDatos=?,"
            + "IdusuarioFK=? where IdDatos=?";
            //Crear el puente para esa conexion establecida
            puente= conexion.prepareStatement(sql);
            puente.setString(1,NombreDatos);
            puente.setString(2,ApellidoDatos);
            puente.setString(3,DireccionDatos);
            puente.setString(4,TelefonoDatos);
            puente.setString(5,CorreoDatos);
            puente.setString(6,EstadoDatos);
            puente.setString(7,IdUsuarioFK);
            puente.setString(8,IdDatos);
            puente.executeUpdate();
            operacion= true;
            
        } catch (SQLException e) {
            Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try{
                
                this.cerrarConexion();
                
            }catch (SQLException e){  
                Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null,e);
            }
              
        }
        
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    //CONSULTAR datos
    public DatosPersonalesVO consultarDatos(String IdDatos) {
        
        DatosPersonalesVO datVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from datospersonales where IdDatos=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,IdDatos);
            mensajero = puente.executeQuery();  
            while (mensajero.next()) {                
                
                datVO= new DatosPersonalesVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6), 
                        mensajero.getString(7), mensajero.getString(8));
                
            }
            
        } catch (Exception e) {
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }

        return datVO;
    }
    
    // genera lista
    public ArrayList<DatosPersonalesVO> listar() {

        ArrayList<DatosPersonalesVO> listaDatosPersonales = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from datospersonales";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {                
                
                DatosPersonalesVO datVO = new DatosPersonalesVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6), 
                        mensajero.getString(7),mensajero.getString(8));
                
                    listaDatosPersonales.add(datVO);
            }

        } catch (Exception e) {
            Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }

        return listaDatosPersonales;
    }
}
