/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author andre
 */
public class departamentos {
    private int ID;
    private String nombreDepartamento;
    private int gerenciaId;

    public departamentos() {
    }

    public departamentos(int ID, String nombreDepartamento, int gerenciaId) {
        this.ID = ID;
        this.nombreDepartamento = nombreDepartamento;
        this.gerenciaId = gerenciaId;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombreDepartamento() {
        return nombreDepartamento;
    }

    public void setNombreDepartamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }

    public int getGerenciaId() {
        return gerenciaId;
    }

    public void setGerenciaId(int gerenciaId) {
        this.gerenciaId = gerenciaId;
    }
    
}
