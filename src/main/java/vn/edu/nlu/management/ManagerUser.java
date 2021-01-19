package vn.edu.nlu.management;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerUser", urlPatterns = "/ManagerUser")

public class ManagerUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserManagement userM = new UserManagement();
        List<User> list = userM.getAllKhachHang();
        request.setAttribute("listU", list);
        request.getRequestDispatcher("/admin/quanlyuser.jsp").forward(request,response);

    }
}
