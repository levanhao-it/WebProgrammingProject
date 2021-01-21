package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(urlPatterns = "/Home")
public class Home extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String index = request.getParameter("index");
        int indexPage = 0;
        if(index == null){
            indexPage = 1;
        }else{
            indexPage = Integer.parseInt(index);
        }
        ProductEntity pe = new ProductEntity();
        int countProduct = pe.getAll().size();
        int pageSize = 24;
        int endPage;
        if(countProduct % pageSize ==0)
            endPage = countProduct/pageSize;
        else endPage = (countProduct/pageSize) +1;
        int beginPage = indexPage*pageSize - (pageSize-1) - 1;
        Collection<Product> data = pe.getAllProducts(beginPage,pageSize);
        request.setAttribute("index", indexPage);
        request.setAttribute("data", data);
        request.setAttribute("endPage", endPage);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
}
