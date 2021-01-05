package vn.edu.nlu.controller;

import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginControl", urlPatterns = "/LoginControl")

public class LoginControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        ProductEntity pe = new ProductEntity();
        Account a = pe.login(username,password);
        if(a==null){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("index.jsp").forward(request,response);
            response.sendRedirect("index.jsp");
        }
    }
}
