package vn.edu.nlu.management;

import vn.edu.nlu.entity.BillManagement;
import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/AddBill")
public class AddBill extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        String makh = request.getParameter("makh");
        String diachi = request.getParameter("diachi");
        String sodt = request.getParameter("sodt");
        String email = request.getParameter("email");
        String ghichu= request.getParameter("ghichu");
        String trigia = request.getParameter("trigia");


        BillManagement bm= new BillManagement();
        int size = bm.getAll().size();
        String madh= "HD" + (size +1);
        bm.addBill(madh,makh,diachi,sodt,email,ghichu,trigia);
        response.sendRedirect("Home");

    }
}
