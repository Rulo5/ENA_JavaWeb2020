/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Mysql.Conexion;
import clases.Requerimiento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author andre
 */
public class requerimiento {

    public requerimiento() {
    }

    public boolean guardarRequerimiento(Requerimiento req) {
        boolean ok = true;

        Conexion conex = new Conexion();
        try {
            conex.conectar();
            String sql = "INSERT INTO requerimiento (descripcion, gerencia_ID, asignar_ID, encargado_ID, departamento_ID) VALUES ('" + req.getComentario() + "', '" + req.getGenrente() + "', '" + req.getAsignar() + "', '" + req.getEncargado() + "', '" + req.getDpto() + "')";
            System.out.println(sql);
            PreparedStatement st = (PreparedStatement) conex.getConexion().prepareStatement(sql);
            ok = (st.executeUpdate() >= 1);

        } catch (Exception e) {

            System.out.println(e);
        }

        return ok;
    }

    public boolean elimanrRequerimiento(String id) {
        boolean ok = true;

        Conexion conex = new Conexion();
        try {
            conex.conectar();
            String sql = "delete from requerimiento where ID='"+id+"'";
            System.out.println(sql);
            PreparedStatement st = (PreparedStatement) conex.getConexion().prepareStatement(sql);
            ok = (st.executeUpdate() >= 1);

        } catch (Exception e) {

            System.out.println(e);
        }

        return ok;
    }

}
