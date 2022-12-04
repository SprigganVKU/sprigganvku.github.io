/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SearchByAjaxShop", urlPatterns = {"/searchAjaxShop"})
public class SearchByAjaxShop extends HttpServlet {

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
        
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        List<Product> list = dao.searchByName(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product o : list) {
        	out.println("<div class=\"col-lg-4 col-md-6 col-12\">\r\n"
        			+ "								<div class=\"single-product\">\r\n"
        			+ "									<div class=\"product-img\">\r\n"
        			+ "										<a href=\"detail?pid="+o.getId()+"\"> <img class=\"default-img\"\r\n"
        			+ "											src=\""+o.getImage()+"\" alt=\"#\">\r\n"
        			+ "										</a>\r\n"
        			+ "										<div class=\"button-head\">\r\n"
        			+ "											<div class=\"product-action-2\">\r\n"
        			+ "												<a title=\"Add to cart\" href=\"#\">Add to cart</a>\r\n"
        			+ "											</div>\r\n"
        			+ "										</div>\r\n"
        			+ "									</div>\r\n"
        			+ "									<div class=\"product-content\">\r\n"
        			+ "										<h3>\r\n"
        			+ "											<a href=\"detail?pid="+o.getId()+"\">"+o.getName()+"</a>\r\n"
        			+ "										</h3>\r\n"
        			+ "										<div class=\"product-price\">\r\n"
        			+ "											<span>"+o.getPrice()+"$</span>\r\n"
        			+ "										</div>\r\n"
        			+ "									</div>\r\n"
        			+ "								</div>\r\n"
        			+ "							</div>");
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
