package vn.edu.nlu.management;

import vn.edu.nlu.entity.AdminManagement;
import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditAdminControl", urlPatterns = "/EditAdminControl")

public class EditAdminControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id=request.getParameter("idUser");
        String userName = request.getParameter("tendangnhap");
        String password = request.getParameter("matkhau");
        String name = request.getParameter("hoten");
        String address = request.getParameter("diachi");
        String phone = request.getParameter("sodt");
        String email = request.getParameter("email");
        String regisDate = request.getParameter("dateregister");

        AdminManagement am= new AdminManagement();
        am.editUser(id,userName,password,name,address,phone,email,regisDate);
        response.sendRedirect("ManagerAdmin");

    }
}
