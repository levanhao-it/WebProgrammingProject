package vn.edu.nlu.controller;

import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ForgotControl", urlPatterns = "/ForgotControl")

public class ForgotControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        ProductEntity pe = new ProductEntity();
        Account a = pe.forgot(email);
    }
}
