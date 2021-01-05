package vn.edu.nlu.db;



import vn.edu.nlu.Products;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import java.sql.*;
import java.util.List;

public class ConnectionDB {
    static Connection con;
    public static Statement connect() throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/group12?useUnicode=true&characterEncoding=utf-8","root","");
            return con.createStatement();
        }
        else {
            return con.createStatement();
        }

    }
    public void thucThiSQL(String sql){

    }
    public static PreparedStatement connect(String sql) throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/group12?useUnicode=true&characterEncoding=utf-8","root","");
            return con.prepareStatement(sql);
        }
        else {
            return con.prepareStatement(sql);
        }

    }
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
            ProductEntity pe = new ProductEntity();
            List<Product> data = pe.getProductWhenSearch(1,2, "hk");
            for(Product i : data){
                System.out.println(i.getName());
            }


    }
}
