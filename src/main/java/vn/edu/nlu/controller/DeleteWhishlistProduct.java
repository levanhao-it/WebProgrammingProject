package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.model.Cart;
import vn.edu.nlu.model.Whishlist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/DeleteWhishlistProduct")
public class DeleteWhishlistProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        ProductEntity pe= new ProductEntity();
        Product p=pe.getById(id);
        if(p==null){
            response.sendRedirect("Home");
            return;
        }
        HttpSession session=request.getSession();
        Whishlist w=Whishlist.getWhishlist(session);
        w.remove(p.getId());
        response.sendRedirect("whishlist.jsp");
        w.commit(session);

    }
}
