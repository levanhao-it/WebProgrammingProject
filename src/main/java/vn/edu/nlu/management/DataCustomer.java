package vn.edu.nlu.management;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/DataCustomer")
public class DataCustomer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserManagement management = new UserManagement();
        List<User> data = management.getAllKhachHang();
        request.setAttribute("data", data);
        request.getRequestDispatcher("/pages/quanlyuser.jsp").forward(request,response);
    }
}

