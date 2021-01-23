package vn.edu.nlu.management;

import vn.edu.nlu.entity.BlogManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/EditBlogControl")
public class EditBlogControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("idBlog");
        String name = request.getParameter("nameBlog");
        String danhmuc = request.getParameter("danhmuc");
        String date = request.getParameter("date");
        String img = request.getParameter("img");
        String content = request.getParameter("content");
        BlogManagement bm = new BlogManagement();
        bm.editBlog(id, name, danhmuc, date, img, content);
        response.sendRedirect("ManagerBlog");
    }
}

