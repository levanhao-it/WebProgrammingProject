package vn.edu.nlu.controller;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.entity.ProductEntity;

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
        String username = request.getParameter("usern");
        String email = request.getParameter("email");
        String password = request.getParameter("passw");
        String cpassword = request.getParameter("cpassw");
        if(!password.equals(cpassword)){
            response.sendRedirect("login.jsp");
        }else{
            ProductEntity pe = new ProductEntity();
            User a = pe.checkAccountExist(username);
            if(a==null){
                pe.register(username,password,email);
                response.sendRedirect("index.jsp");
            }else{ 
                request.setAttribute("mess","Tên đăng nhập đã tồn tại");
                response.sendRedirect("register.jsp");
            }
        }
    }
}
