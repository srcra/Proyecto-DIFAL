/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author sergio saenz
 * IdCargoFK
 */
public class UsuarioVO {
    private String IdUsuario,NombreUsuario,ClaveUsuario,IdCargoFK,rol;

    public UsuarioVO(String NombreUsuario) {
        this.NombreUsuario = NombreUsuario;
    }

    public UsuarioVO(String IdCargoFK, String rol) {
        this.IdCargoFK = IdCargoFK;
        this.rol = rol;
    }
    
    //Constructor 
    public UsuarioVO() {
    }
    //constructor lleno

    public UsuarioVO(String IdUsuario, String NombreUsuario, String ClaveUsuario, String IdCargoFK) {
        this.IdUsuario = IdUsuario;
        this.NombreUsuario = NombreUsuario;
        this.ClaveUsuario = ClaveUsuario;
        this.IdCargoFK = IdCargoFK;
    }

    
    
    //getter and setter

    public String getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(String IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public String getNombreUsuario() {
        return NombreUsuario;
    }

    public void setNombreUsuario(String NombreUsuario) {
        this.NombreUsuario = NombreUsuario;
    }

    public String getClaveUsuario() {
        return ClaveUsuario;
    }

    public void setClaveUsuario(String ClaveUsuario) {
        this.ClaveUsuario = ClaveUsuario;
    }

    public String getIdCargoFK() {
        return IdCargoFK;
    }

    public void setIdCargoFK(String IdCargoFK) {
        this.IdCargoFK = IdCargoFK;
    }
    
    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    
}
