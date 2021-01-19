package vn.edu.nlu.management;

import vn.edu.nlu.entity.UserManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUserControl", urlPatterns = "/delete")

public class DeleteUserControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");
        UserManagement userM = new UserManagement();
        userM.deleteUser(uid);
        response.sendRedirect("ManagerUser");

    }
}
