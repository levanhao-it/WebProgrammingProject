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
        System.out.println(makh);
        String diachi = request.getParameter("diachi");
        System.out.println(diachi);

        String sodt = request.getParameter("sodt");
        System.out.println(sodt);
        String email = request.getParameter("email");
        System.out.println(email);
        String ghichu= request.getParameter("ghichu");
        System.out.println(ghichu);
        String trigia = request.getParameter("trigia");
        System.out.println(trigia);


        BillManagement bm= new BillManagement();
        String madh= bm.getIdNew();
        bm.addBill(madh,makh,diachi,sodt,email,ghichu,trigia);
        response.sendRedirect("Home");

    }
}
