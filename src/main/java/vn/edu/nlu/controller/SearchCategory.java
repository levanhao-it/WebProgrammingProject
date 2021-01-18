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
import java.util.List;

@WebServlet(urlPatterns = "/SearchCategory")
public class SearchCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= request.getParameter("idCategory");
        int index = Integer.parseInt(request.getParameter("index"));
        ProductEntity pe = new ProductEntity();


        String name = "";
        if(id.equals("DM1")) name = "Khai Vị";
        else if(id.equals("DM2")) name = "Món Chính";
        else if(id.equals("DM3")) name = "Tráng Miệng";
        else if(id.equals("DM4")) name = "Đồ Uống";

        int count  = pe.countCategory(id);
        int pageSize = 12;
        int endPage;
        if(count % pageSize ==0)
            endPage = count/pageSize;
        else endPage = (count/pageSize) +1;
        int beginPage = index*pageSize - (pageSize-1);

        Collection<Product> data = pe.getProductWithCategory(id,beginPage -1,pageSize);
        Collection<Product> dataNew = pe.getNewProductWithCategory(id);

        request.setAttribute("endPage", endPage);
        request.setAttribute("list", data);
        request.setAttribute("idCategory", id);
        request.setAttribute("index", index);
        request.setAttribute("size", count);

        request.setAttribute("data", data);
        request.setAttribute("title", name);

        request.setAttribute("dataNew", dataNew);

        request.getRequestDispatcher("food.jsp").forward(request,response);
    }
}

