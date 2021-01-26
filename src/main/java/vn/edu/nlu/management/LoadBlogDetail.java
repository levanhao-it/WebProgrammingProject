package vn.edu.nlu.management;

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

@WebServlet(urlPatterns = "/LoadBlogDetail")
public class LoadBlogDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String idBlog = request.getParameter("idBlog");
        BlogManagement bm = new BlogManagement();
        List<Blog> data = bm.getBlogWithID(idBlog);
        List<DanhMucBlog> dataDMB = bm.getAllDMB();

        request.setAttribute("dataBlog", data);
        request.setAttribute("dataDMB", dataDMB);
        request.getRequestDispatcher("/admin/editBlog.jsp").forward(request,response);
    }
}

