package vn.edu.nlu.management;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.entity.AdminManagement;
import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerAdmin", urlPatterns = "/ManagerAdmin")

public class ManagerAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminManagement am= new AdminManagement();
        List<User> list = am.getAllAdmin();
        request.setAttribute("listadmin", list);
        request.getRequestDispatcher("/admin/quanlyadmin.jsp").forward(request,response);

    }
}
