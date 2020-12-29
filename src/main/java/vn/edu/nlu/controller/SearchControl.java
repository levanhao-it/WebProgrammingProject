package vn.edu.nlu.controller;

import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/SearchControl")
public class SearchControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductEntity pe = new ProductEntity();
        String txtSearch = request.getParameter("txtSearch");
        int count  = pe.count(txtSearch);
        int pageSize = 21;

        int endPage;
        if(count%pageSize ==0)
            endPage = count/pageSize;
        else endPage = (count/pageSize) +1;

        request.setAttribute("endPage", endPage);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }
}

