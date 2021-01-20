package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/ProductDetail")
public class ProductDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProduct = request.getParameter("idProduct");

        ProductEntity pe = new ProductEntity();
        Product pro = pe.getProductWithId(idProduct);

        //lay danh sach san pham lien quan theo danhmuc
        int size =4;
        String idCategory = pro.getIdCategory();
        List<Product> dataRelative = pe.getRelativeProduct(idProduct,idCategory, size);
        //lay ten danh muc
        String nameCategory = "";
        if(idCategory.equals("DM1")) nameCategory = "Khai Vị";
        else if(idCategory.equals("DM2")) nameCategory = "Món Chính";
        else if(idCategory.equals("DM3")) nameCategory = "Tráng Miệng";
        else if(idCategory.equals("DM4")) nameCategory = "Đồ Uống";
        request.setAttribute("product",pro);
        request.setAttribute("dataRelative", dataRelative);
        request.setAttribute("nameCategory",nameCategory);
        request.getRequestDispatcher("shop-details.jsp").forward(request,response);
    }
}

