package vn.edu.nlu.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "DoLogin", urlPatterns = "/DoLogin")

public class DoLogin extends HttpServlet {

    static HashMap<String, String> data = new HashMap<>();

    static{
        data.put("tanhuy", "123");
        data.put("vanhao", "123");
        data.put("huuhuy","123");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        if(data.containsKey(username) && password.equals(data.get(username))) {
            response.sendRedirect("index.jsp");
        }else{
            request.setAttribute("errMer","Bạn đã nhập sai tên đăng nhập hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request,response);

        }
    }
}
