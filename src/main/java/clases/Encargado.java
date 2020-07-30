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
public class Encargado {
    private int ID;
    private String nombreEncargado;
    private int asignarId;

    public Encargado() {
    }

    public Encargado(int ID, String nombreEncargado, int asignarId) {
        this.ID = ID;
        this.nombreEncargado = nombreEncargado;
        this.asignarId = asignarId;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombreEncargado() {
        return nombreEncargado;
    }

    public void setNombreEncargado(String nombreEncargado) {
        this.nombreEncargado = nombreEncargado;
    }

    public int getAsignarId() {
        return asignarId;
    }

    public void setAsignarId(int asignarId) {
        this.asignarId = asignarId;
    }
    
}
