package vn.edu.nlu.controller;

import vn.edu.nlu.beans.DanhMucBlog;
import vn.edu.nlu.entity.BlogManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/Blog")
public class Blog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogManagement bm = new BlogManagement();
        List<vn.edu.nlu.beans.Blog> data = bm.getAllBlog();
        List<vn.edu.nlu.beans.Blog> dataNew = bm.getBlogNew();
        List<DanhMucBlog> dataDanhMuc = bm.getAllDMB();
        request.setAttribute("data", data);
        request.setAttribute("dataDM", dataDanhMuc);
        request.setAttribute("dataNew", dataNew);
        request.getRequestDispatcher("blog.jsp").forward(request,response);
    }
}

