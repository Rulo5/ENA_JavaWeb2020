/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import clases.Asignar;
import clases.Encargado;
import clases.Gerencia;
import clases.Requerimiento;
import clases.departamentos;
import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author andre
 */
@Local
public interface servicioLocal {

    ArrayList<Gerencia> getGerencias();

    ArrayList<departamentos> getDepartamentos(String id);

    ArrayList<Asignar> getAsignar();

    ArrayList<Encargado> getEncargado(String id);

    ArrayList<Requerimiento> getRequerimientos();
}
