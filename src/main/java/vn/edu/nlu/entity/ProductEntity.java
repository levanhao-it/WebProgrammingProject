package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {
    public List<Product> getAll(){
        Statement s= null;
        try {
            List<Product> re= new LinkedList<>();
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery("select id,name,img,price,priceSale from product");
            while (rs.next()){
                re.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getBoolean(8),
                        rs.getBoolean(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDate(12),
                        rs.getInt(13),
                        rs.getString(14)));

            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }
    public int insertList(Collection<Product> data){
        Statement s= null;
        try {
            s= ConnectionDB.connect();
            String sql= "INSERT INTO product (id,name,img,price,priceSale)\n" +
                    "VALUES\n" +
                    "";
            for(Product d:data){
                sql+="("+d.getId()+",\""+d.getName()+"\",\""+d.getImg()+"\","+d.getPrice()+","+d.getPriceSale()+"), \n";

            }
            System.out.println(sql);

//            int re=s.executeUpdate(sql);
            s.close();
            return 0;


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }

    }
}
