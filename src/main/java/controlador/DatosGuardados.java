/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import clases.Requerimiento;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.requerimiento;

/**
 *
 * @author andre
 */
@WebServlet(name = "DatosGuardados", urlPatterns = {"/DatosGuardados"})
public class DatosGuardados extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String geren;
        String depa;
        String asig;
        String encar;
        String come;

        geren = request.getParameter("gerente");
        depa = request.getParameter("dpto");
        asig = request.getParameter("asignar");
        encar = request.getParameter("encargado");
        come = request.getParameter("comentario");

        Requerimiento requerimiento = new Requerimiento(geren, depa, asig, encar, come);

        requerimiento req = new requerimiento();
        if (req.guardarRequerimiento(requerimiento)) {
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {

                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Guardar los datos</title>");
                out.println("<meta http-equiv=\"refresh\" content=\"1; url=./IngresarRequerimientos.jsp\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Los datos han sido guardados</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }else{
         response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {

                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Guardar los datos</title>");
                out.println("<meta http-equiv=\"refresh\" content=\"1; url=./IngresarRequerimientos.jsp\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>No se lograron almacenar los datos</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
