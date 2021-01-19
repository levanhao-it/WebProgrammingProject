package vn.edu.nlu.management;

import vn.edu.nlu.entity.ProductManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addProduct")
public class addProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pId=request.getParameter("id");
        String pName=request.getParameter("name");
        String pimg=request.getParameter("image");
        long pPrice=Long.parseLong(request.getParameter("price"));
        long pPriceSale=Long.parseLong(request.getParameter("priceSale"));
        String pdescription=request.getParameter("description");
        String pdescriptionDetail=request.getParameter("descriptionDetail");
        int pisNew=Integer.parseInt(request.getParameter("isNew"));
        int pisSale=Integer.parseInt(request.getParameter("isSale"));
        String pdate=request.getParameter("datePost");
        String pidcategory=request.getParameter("idCategory");
        String pStatus=request.getParameter("status");

        ProductManagement pm= new ProductManagement();
        pm.insertProduct(pId,pName,pimg,pPrice,pPriceSale,pisSale,pisNew,pdescription,pdescriptionDetail,pdate,pidcategory,pStatus);
        response.sendRedirect("DataProducts");

    }
}
