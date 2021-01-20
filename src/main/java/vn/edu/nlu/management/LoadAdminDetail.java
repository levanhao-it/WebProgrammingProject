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

@WebServlet(name = "LoadAdminDetail", urlPatterns = "/LoadAdminDetail")

public class LoadAdminDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String uid=request.getParameter("uid");
        AdminManagement adminManagement= new AdminManagement();
        List<User> user = adminManagement.getAdminById(uid);
        request.setAttribute("detail",user);
        request.setAttribute("id",uid);
        request.getRequestDispatcher("/admin/editAdmin.jsp").forward(request,response);
    }
}
