package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.DanhMucBlog;
import vn.edu.nlu.entity.BlogManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/BlogDetail")
public class BlogDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idBlog");
        BlogManagement bm = new BlogManagement();
        List<Blog> data = bm.getBlogWithID(id);
        List<Blog> dataNew = bm.getBlogNew();
        List<DanhMucBlog> dataDanhMuc = bm.getAllDMB();
        List<Blog> dataLike = bm.getBlogRand(id);
        Blog b = data.get(0);

        request.setAttribute("data", b);
        request.setAttribute("dataDM", dataDanhMuc);
        request.setAttribute("dataNew", dataNew);
        request.setAttribute("dataLike", dataLike);
        request.getRequestDispatcher("blog-details.jsp").forward(request,response);
    }
}

