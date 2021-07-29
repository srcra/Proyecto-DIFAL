/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
import java.sql.*;
import Util.Conexion;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sergio saenz
 */
public class RolDAO extends Conexion{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private String sql;
    
    public ArrayList<UsuarioVO> rol(String usuario){
    
        ArrayList<UsuarioVO> listaRoles= new ArrayList<>();
        try{
        conexion=this.obtenerConexion();
        sql="SELECT Usuario.IdCargoFK,TipoUsuario.TipoCargo "
        + "FROM TipoUsuario,Usuario  where TipoUsuario.IdCargo=Usuario.IdCargoFK and usuario.NombreUsuario=?;";
        puente = conexion.prepareStatement(sql);   
        puente.setString(1,usuario);
        mensajero=puente.executeQuery();
        
        System.out.println(sql);
        while(mensajero.next()){
        
        UsuarioVO usuVO= new UsuarioVO(mensajero.getString(1),mensajero.getString(2));
        listaRoles.add(usuVO);
    
        }
        }catch(Exception e){
         Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);   
        }
        return listaRoles; 
    }
}
