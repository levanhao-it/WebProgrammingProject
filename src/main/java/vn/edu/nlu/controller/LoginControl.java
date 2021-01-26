package vn.edu.nlu.controller;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginControl", urlPatterns = "/LoginControl")

public class LoginControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usern");
        String password = request.getParameter("passw");
        String mess= request.getParameter("mess");
        ProductEntity pe = new ProductEntity();
        User a = pe.login(username,password);
        if(a==null){
            request.setAttribute("mess","Sai tên đăng nhập hoặc mật khẩu. Mời bạn nhập lại!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else {
            //day a len session
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(1000);
            response.sendRedirect("Home");
        }
    }
}
