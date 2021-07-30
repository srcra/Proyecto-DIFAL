/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author sergio saenz
 */
public class DatosPersonalesVO {
    
     private String IdDatos,NombreDatos,ApellidoDatos,DireccionDatos,TelefonoDatos,CorreoDatos,EstadoDatos,IdUsuarioFK;

      public DatosPersonalesVO() {
    }
      
    public DatosPersonalesVO(String IdDatos, String NombreDatos, String ApellidoDatos, String DireccionDatos, String TelefonoDatos, String CorreoDatos, String EstadoDatos, String IdUsuarioFK) {
        this.IdDatos = IdDatos;
        this.NombreDatos = NombreDatos;
        this.ApellidoDatos = ApellidoDatos;
        this.DireccionDatos = DireccionDatos;
        this.TelefonoDatos = TelefonoDatos;
        this.CorreoDatos = CorreoDatos;
        this.EstadoDatos = EstadoDatos;
        this.IdUsuarioFK = IdUsuarioFK;
    }


    public String getIdDatos() {
        return IdDatos;
    }

    public void setIdDatos(String IdDatos) {
        this.IdDatos = IdDatos;
    }

    public String getNombreDatos() {
        return NombreDatos;
    }

    public void setNombreDatos(String NombreDatos) {
        this.NombreDatos = NombreDatos;
    }

    public String getApellidoDatos() {
        return ApellidoDatos;
    }

    public void setApellidoDatos(String ApellidoDatos) {
        this.ApellidoDatos = ApellidoDatos;
    }

    public String getDireccionDatos() {
        return DireccionDatos;
    }

    public void setDireccionDatos(String DireccionDatos) {
        this.DireccionDatos = DireccionDatos;
    }

    public String getTelefonoDatos() {
        return TelefonoDatos;
    }

    public void setTelefonoDatos(String TelefonoDatos) {
        this.TelefonoDatos = TelefonoDatos;
    }

    public String getCorreoDatos() {
        return CorreoDatos;
    }

    public void setCorreoDatos(String CorreoDatos) {
        this.CorreoDatos = CorreoDatos;
    }

    public String getEstadoDatos() {
        return EstadoDatos;
    }

    public void setEstadoDatos(String EstadoDatos) {
        this.EstadoDatos = EstadoDatos;
    }

    public String getIdUsuarioFK() {
        return IdUsuarioFK;
    }

    public void setIdUsuarioFK(String IdUsuarioFK) {
        this.IdUsuarioFK = IdUsuarioFK;
    }

    
     
     
}
