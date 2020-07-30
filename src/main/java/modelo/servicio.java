/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Mysql.Conexion;
import clases.Asignar;
import clases.Encargado;
import clases.Gerencia;
import clases.Requerimiento;
import clases.departamentos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.ejb.Singleton;

/**
 *
 * @author andre
 */
@Singleton
public class servicio implements servicioLocal {
    private ArrayList<Gerencia> listaGerancia = new ArrayList();
    
   @Override
    public ArrayList<Gerencia> getGerencias() {
        ArrayList<Gerencia> gerencias = new ArrayList<Gerencia>();
        Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM gerencia";
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             while(rs.next()){
                 Gerencia gerente = new Gerencia(rs.getString("nombreGerencia"),rs.getInt("ID"));
                 gerencias.add(gerente);
             }
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
        return gerencias;
    }
    
    @Override
    public ArrayList<departamentos> getDepartamentos(String id) {
        ArrayList<departamentos> departamentos = new ArrayList<departamentos>();
        Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM departamento where gerencia_id = "+ id;
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             while(rs.next()){
                 departamentos dpto = new departamentos(rs.getInt("ID"), rs.getString("nombreDepartamento"), rs.getInt("gerencia_id") );
                 departamentos.add(dpto);
             }
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
        return departamentos;
    }
   
     @Override
    public ArrayList<Asignar> getAsignar() {
        ArrayList<Asignar> asignaciones = new ArrayList<Asignar>();
        Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM asignar";
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             while(rs.next()){
                 Asignar asignacion = new Asignar( rs.getInt("ID"), rs.getString("asignarNombre"));
                 asignaciones.add(asignacion);
             }
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
        return asignaciones;
    }
   
    @Override
    public ArrayList<Encargado> getEncargado(String id) {
        ArrayList<Encargado> encargados = new ArrayList<Encargado>();
        Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM encargado WHERE asignar_ID = "+ id;
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             while(rs.next()){
                 Encargado dpto = new Encargado(rs.getInt("ID"), rs.getString("nombreEncargado"),rs.getInt("asignar_ID"));
                 encargados.add(dpto);
             }
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
        return encargados;
    }
    
    
    
    @Override
    public ArrayList<Requerimiento> getRequerimientos() {
        ArrayList<Requerimiento> requerimientos = new ArrayList<Requerimiento>();
        Conexion conex=new Conexion();
        try {
             conex.conectar();
             String sql = "SELECT * FROM requerimiento ";
             System.out.println(sql);
             PreparedStatement st=(PreparedStatement) conex.getConexion().prepareStatement(sql);
             ResultSet rs=st.executeQuery();
             while(rs.next()){
                 Requerimiento req = new Requerimiento(rs.getString("gerencia_ID"),rs.getString("departamento_ID"), rs.getString("asignar_ID"), rs.getString("encargado_ID"), rs.getString("descripcion"), rs.getInt("ID") );
                 requerimientos.add(req);
             }
        } catch (Exception e) {
            
            System.out.println("ERRRRORRRRR");
        }
        return requerimientos;
    }
    
    
    
    
    
    
    
    
}
