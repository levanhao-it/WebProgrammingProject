package vn.edu.nlu.db;



import vn.edu.nlu.Products;
import vn.edu.nlu.entity.ProductEntity;

import java.sql.*;

public class ConnectionDB {
    static Connection con;
    public static Statement connect() throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?useUnicode=true&characterEncoding=utf-8","root","levanhao");
            return con.createStatement();
        }
        else {
            return con.createStatement();
        }

    }
    public static PreparedStatement connect(String sql) throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?useUnicode=true&characterEncoding=utf-8","root","levanhao");
            return con.prepareStatement(sql);
        }
        else {
            return con.prepareStatement(sql);
        }

    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ProductEntity pe= new ProductEntity();
        pe.insertList(Products.data.values());

//        Statement s= ConnectionDB.connect();
//        ResultSet rs=s.executeQuery("select * from product ");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()){
//            System.out.println(rs.getString(2));
       // }
    }
}
