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
public class Asignar {
    private int ID;
    private String asignarNombre;

    public Asignar() {
    }

    public Asignar(int ID, String asignarNombre) {
        this.ID = ID;
        this.asignarNombre = asignarNombre;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getAsignarNombre() {
        return asignarNombre;
    }

    public void setAsignarNombre(String asignarNombre) {
        this.asignarNombre = asignarNombre;
    }
    
}
