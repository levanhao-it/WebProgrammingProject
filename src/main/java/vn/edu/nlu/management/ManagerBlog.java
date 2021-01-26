package vn.edu.nlu.management;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.DanhMucBlog;
import vn.edu.nlu.db.ConnectionDB;
import vn.edu.nlu.entity.BlogManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/ManagerBlog")
public class ManagerBlog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogManagement mb = new BlogManagement();
        List<Blog> data = mb.getAllBlog();
        List<DanhMucBlog> dataDMB = mb.getAllDMB();
        request.setAttribute("data", data);
        request.setAttribute("dataDMB", dataDMB);
        request.getRequestDispatcher("/admin/quanlyblog.jsp").forward(request,response);
    }


}

