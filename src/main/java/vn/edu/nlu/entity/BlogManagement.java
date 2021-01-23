package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.DanhMucBlog;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class BlogManagement {
    public List<Blog> getAllBlog(){
        Statement s= null;
        try {
            List<Blog> re= new LinkedList<>();
            String sql = "Select * from blog";
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery(sql);
            while (rs.next()){
                re.add(new Blog(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<DanhMucBlog> getAllDMB() {
        Statement s= null;
        try {
            List<DanhMucBlog> re= new LinkedList<>();
            String sql = "Select * from dmblog";
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery(sql);
            while (rs.next()){
                re.add(new DanhMucBlog(rs.getString(1), rs.getString(2)));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public void addBlog(String id, String name, String danhmuc, String img, String date, String content) {
        PreparedStatement s = null;
        String sql = "insert into blog values(?,?,?,?,?,?)";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,id);
            s.setString(2,name);
            s.setString(3,danhmuc);
            s.setString(4,date);
            s.setString(5,content);
            s.setString(6,img);
            s.executeUpdate();
            s.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public String getNewIDBlog() {
        Statement s= null;
        try {
            String sql = "Select * from blog";
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery(sql);
            String id = "";
            while (rs.next()){
                id = rs.getString(1);
            }

            String idNewBlog = "B" + (Integer.parseInt(id.substring(1)) + 1);
            rs.close();
            s.close();
            return idNewBlog;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return "B01";
        }
    }

    public List<Blog> getBlogWithID(String idBlog) {
        PreparedStatement s= null;
        try {
            List<Blog> re= new LinkedList<>();
            String sql = "SELECT * FROM blog where mablog=?";
            s= ConnectionDB.connect(sql);
            s.setString(1,idBlog);
            ResultSet rs=s.executeQuery();
            while (rs.next()){
                re.add(new Blog(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public void editBlog(String id, String name, String danhmuc, String date, String img, String content) {
            PreparedStatement s = null;
            String sql ="UPDATE blog Set tenblog = ?, madmblog = ?, ngaydang = ?, noidung = ?, hinhanhblog = ? WHERE mablog = ?";
            try {
                s = ConnectionDB.connect(sql);
                s.setString(1,name);
                s.setString(2,danhmuc);
                s.setString(3,date);
                s.setString(4,content);
                s.setString(5,img);
                s.setString(6,id);
                s.executeUpdate();
                s.close();
            }catch (ClassNotFoundException | SQLException e){
                e.printStackTrace();
            }
        }

    public void deleteBlogWithID(String idBlog) {
        PreparedStatement ps = null;
        Product pro = new Product();
        try {

            String sql = "delete from blog where mablog= ? ";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, idBlog);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}



