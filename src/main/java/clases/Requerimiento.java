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
public class Requerimiento {
  private int ID;  
  private int genrente;
  private int dpto;
  private int asignar;
  private int encargado;
  private String comentario;

    public Requerimiento(String genrente, String dpto, String asignar, String encargado, String comentario,int ID) {
        this.genrente =  Integer.parseInt(genrente) ;
        this.dpto = Integer.parseInt(dpto);
        this.asignar = Integer.parseInt(asignar);
        this.encargado = Integer.parseInt(encargado);
        this.comentario = comentario;
        this.ID = ID;
    }
   public Requerimiento(String genrente, String dpto, String asignar, String encargado, String comentario) {
        this.genrente =  Integer.parseInt(genrente) ;
        this.dpto = Integer.parseInt(dpto);
        this.asignar = Integer.parseInt(asignar);
        this.encargado = Integer.parseInt(encargado);
        this.comentario = comentario;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Requerimiento() {
    }

    public int getGenrente() {
        return genrente;
    }

    public void setGenrente(int genrente) {
        this.genrente = genrente;
    }

    public int getDpto() {
        return dpto;
    }

    public void setDpto(int dpto) {
        this.dpto = dpto;
    }

    public int getAsignar() {
        return asignar;
    }

    public void setAsignar(int asignar) {
        this.asignar = asignar;
    }

    public int getEncargado() {
        return encargado;
    }

    public void setEncargado(int encargado) {
        this.encargado = encargado;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    
    
}
