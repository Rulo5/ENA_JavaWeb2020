/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mysql;
import java.sql.*;
/**
 *
 * @author andre
 */
public class Conexion {
    private String URL="jdbc:mysql://localhost:3306/Requerimiento";
    private String Driver="com.mysql.cj.jdbc.Driver";
    private String user="root";
    private String pass="root";
    private Connection conex;
    
     public void conectar() throws ClassNotFoundException, SQLException{
        Class.forName(Driver);
        conex=DriverManager.getConnection(URL, user,pass);
    }
    public void desconectar() throws SQLException{
        conex.close();
    }

    public Connection getConexion() {
        return conex;
    }
}
