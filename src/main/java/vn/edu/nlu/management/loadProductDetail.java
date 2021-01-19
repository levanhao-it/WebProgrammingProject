package vn.edu.nlu.management;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/loadProductDetail")
public class loadProductDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid=request.getParameter("pid");
        System.out.println(pid);
        ProductManagement pm= new ProductManagement();
        List<Product> p = pm.getProductById(pid);
        request.setAttribute("detail",p);
        request.setAttribute("id",pid);
       request.getRequestDispatcher("/admin/editProduct.jsp").forward(request,response);
    }
}
