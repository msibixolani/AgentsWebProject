/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.AgentsFacadeLocal;
import za.ac.tut.entities.Agents;

/**
 *
 * @author Xolani Msibi
 */
public class AddAgentsServlet extends HttpServlet {
    @EJB AgentsFacadeLocal afl;
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddAgentsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddAgentsServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
            Long id = Long.valueOf(request.getParameter("id"));
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            char gender = request.getParameter("gender").charAt(0);
            String date = request.getParameter("date");
            SimpleDateFormat format = new SimpleDateFormat("dd MMMM yyyy");
            Date dateOfBirth = format.parse(date);
            String status = request.getParameter("status");
            
            Agents a = createAgent(id, name, age, gender, dateOfBirth, status);
            afl.create(a);
                    
            RequestDispatcher disp = request.getRequestDispatcher("agents_outcome.jsp");
            disp.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AddAgentsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    private Agents createAgent(Long id, String name, Integer age, char gender, Date dateOfBirth, String status) {
       Agents agent1 = new Agents();
       agent1.setId(id);
       agent1.setName(name);
       agent1.setAge(age);
       agent1.setGender(gender);
       agent1.setDateOfBirth(dateOfBirth);
       agent1.setMaritalStatus(status);
       
       return agent1;
    }

}
