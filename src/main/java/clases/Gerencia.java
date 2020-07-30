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
public class Gerencia {
    private String nombreGerente;
    private int ID;

    public Gerencia(String nombreGerente, int ID) {
        this.nombreGerente = nombreGerente;
        this.ID = ID;
    }

    public Gerencia() {
    }

    public String getNombreGerente() {
        return nombreGerente;
    }

    public void setNombreGerente(String nombreGerente) {
        this.nombreGerente = nombreGerente;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }
    
    
}
