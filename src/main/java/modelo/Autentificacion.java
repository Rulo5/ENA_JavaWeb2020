/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Mysql.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author andre
 */
public class Autentificacion {
    private int usuario;
    private int password;
   
    public Autentificacion(){
    }

    public Autentificacion(String usuario, String password) {
        try {
           this.usuario =Integer.parseInt(usuario);
        this.password =Integer.parseInt(password);     
        } catch (Exception e) {
            this.usuario =0;
        this.password =0;
        }
        
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }

    public int getPassword() {
        return password;
    }

    public void setPassword(int password) {
        this.password = password;
    }
    
    
   
     public boolean login(){
         boolean ok= true;
         
          Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM usuarios WHERE rut = " + this.getUsuario() + " and PASSWORD =" + this.getPassword() ;
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             ok=rs.next();
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
         
     
         return ok;
     }
        
     
        
        
        
     
       
            
        
    
    
}
