package vn.edu.nlu.management;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

@WebServlet(urlPatterns = "/deleteProduct")
public class deleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
      String pid=request.getParameter("pid");
      ProductManagement pm= new ProductManagement();
      pm.deleteProduct(pid);
      response.sendRedirect("DataProducts");
    }
}
