/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sergio saenz
 */
public class Conexion {
    //1. Declarar variables y objet os
    private String driver, user, password, nombreBd, urlBd;
    private java.sql.Connection conexion;
    
    public Conexion(){
    //Método principal.    
    //2. Asignar valores    
        driver="com.mysql.jdbc.Driver";
        user="root";
        password="";
        nombreBd="proyectodifal";
        urlBd="jdbc:mysql://localhost:3306/"+nombreBd;
        
        
    //Crear estructura try catch 
    //3. Conexión 
        try {
            Class.forName(driver).newInstance ();
            conexion= DriverManager.getConnection(urlBd, user, password); //Línea de conexión a la BD
            System.err.println("Conexión OK!");
        } catch (Exception e) {
            System.err.println("ERROR al conectarse " +e.toString());
        }
        
    }
    
    public java.sql.Connection obtenerConexion(){
       
         return conexion;
         
    }
   
    public java.sql.Connection cerrarConexion() throws SQLException{
        
        conexion.close();
        conexion= null;
        return conexion;
    }
    
    public static void main(String[] args) {
        new Conexion();
    }
    
}
