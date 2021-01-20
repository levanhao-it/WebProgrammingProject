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

@WebServlet(urlPatterns = "/Products")
public class Products extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int index = Integer.parseInt(request.getParameter("index"));
        int value = Integer.parseInt(request.getParameter("value"));
        int valueFilter = Integer.parseInt(request.getParameter("valueFilter"));

        ProductEntity pe = new ProductEntity();
        int countProduct = pe.getAll().size();
        int pageSize = 21;
        int endPage;
        if(countProduct % pageSize ==0)
            endPage = countProduct/pageSize;
        else endPage = (countProduct/pageSize) +1;
        int beginPage = index*pageSize - (pageSize-1) - 1;

        Collection<Product> data = pe.getAllProductsWithFilter(beginPage,pageSize,valueFilter);
        Collection<Product> dataNew = pe.getNewProduct();
        request.setAttribute("list", data);
        request.setAttribute("value", value);
        request.setAttribute("endPage", endPage);
        request.setAttribute("size", countProduct);
        request.setAttribute("dataNew", dataNew);
        request.setAttribute("index", index);
        request.setAttribute("valueFilter", valueFilter);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }
}

