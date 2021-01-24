package vn.edu.nlu.management;

import vn.edu.nlu.entity.BlogManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/AddBlog")
public class AddBlog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("nameBlog");
        String danhmuc = request.getParameter("danhmuc");
        String img = request.getParameter("imageBlog");
        String date = request.getParameter("date");
        String content = request.getParameter("content");
        String srcImg = "http://localhost:8080/WebProgrammingProject/img/blog/" + img;
        BlogManagement bm = new BlogManagement();
        String idBlog = bm.getNewIDBlog();
        bm.addBlog(idBlog,name,danhmuc,srcImg,date,content);
        response.sendRedirect("ManagerBlog");
    }
}

