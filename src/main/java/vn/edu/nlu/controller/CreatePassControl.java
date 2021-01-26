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

@WebServlet(urlPatterns = "/CreatePassControl")
public class CreatePassControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usern");
        System.out.println(username);
        String password = request.getParameter("passw");
        System.out.println(password);
        ProductEntity pe = new ProductEntity();
        User a = pe.checkAccountExist(username);
        if(a!=null){
            pe.editpass(username,password);
            User a1 = pe.login(username,password);
            HttpSession session = request.getSession();
            session.setAttribute("acc", a1);
            session.setMaxInactiveInterval(1000);
            response.sendRedirect("Home");
        }else{
            request.setAttribute("mess","Tên người dùng không tồn tại");
            response.sendRedirect("register.jsp");
        }
    }


}
