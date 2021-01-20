package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.model.Whishlist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/addWhishlist")
public class addWhishlist extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        System.out.println(page);
        System.out.println(id);
        if(id==null) response.sendRedirect("Home");
        ProductEntity pe = new ProductEntity();
        Product p = pe.getById(id);

        if(p==null){
            response.sendRedirect("Home");
            return;
        }
        HttpSession session =request.getSession();
        Whishlist wl = Whishlist.getWhishlist(session);
        wl.put(p);
        response.sendRedirect(page);
        wl.commit(session);

    }

}
