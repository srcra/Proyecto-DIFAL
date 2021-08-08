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

public class AsigOrdenVO {
    
    private String IdAsigOrden,IdDatosFK,IdOrdenFK;
    
    public AsigOrdenVO() {
    }

    public AsigOrdenVO(String IdAsigOrden, String IdDatosFK, String IdOrdenFK) {
        this.IdAsigOrden = IdAsigOrden;
        this.IdDatosFK = IdDatosFK;
        this.IdOrdenFK = IdOrdenFK;
    }

    public String getIdAsigOrden() {
        return IdAsigOrden;
    }

    public void setIdAsigOrden(String IdAsigOrden) {
        this.IdAsigOrden = IdAsigOrden;
    }


    public String getIdDatosFK() {
        return IdDatosFK;
    }

    public void setIdDatosFK(String IdDatosFK) {
        this.IdDatosFK = IdDatosFK;
    }

    public String getIdOrdenFK() {
        return IdOrdenFK;
    }

    public void setIdOrdenFK(String IdOrdenFK) {
        this.IdOrdenFK = IdOrdenFK;
    }
    
}
