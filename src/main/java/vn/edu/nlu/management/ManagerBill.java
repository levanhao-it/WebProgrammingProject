package vn.edu.nlu.management;

import vn.edu.nlu.beans.Bill;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.BillManagement;
import vn.edu.nlu.entity.ProductManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(urlPatterns = "/ManagerBill")
public class ManagerBill extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        BillManagement bm= new BillManagement();
        Collection<Bill> data= bm.getAll();
        request.setAttribute("data",data);
        request.getRequestDispatcher("/admin/quanlydonhang.jsp").forward(request,response);

    }
}
