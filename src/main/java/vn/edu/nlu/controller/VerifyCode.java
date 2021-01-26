package vn.edu.nlu.controller;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.mail.Mail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "VerifyCode", urlPatterns = "/VerifyCode")

public class VerifyCode extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            User user= (User) session.getAttribute("authcode");

            String code = request.getParameter("authcode");

            if(code.equals(user.getKey())){
                request.getRequestDispatcher("createnewpass.jsp").forward(request,response);
            }else{
                response.sendRedirect("verify.jsp");
            }

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
