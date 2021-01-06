package vn.edu.nlu.controller;

import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterControl", urlPatterns = "/RegisterControl")

public class RegisterControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String cpassword = request.getParameter("repass");
        if(!password.equals(cpassword)){
            response.sendRedirect("login.jsp");
        }else{
            ProductEntity pe = new ProductEntity();
            Account a = pe.checkAccountExist(username);
            if(a==null){
                pe.register(username,password);
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("login.jsp");
            }
        }
//        if(!email.equals(email)){
//            response.sendRedirect("login.jsp");
//        }
    }
}
