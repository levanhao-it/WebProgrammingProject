package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
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
                        rs.getLong(4),
                        rs.getLong(5)
                ));

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
            String sql= "INSERT INTO product (id,name,img,price,priceSale,quantityOrder,quantity ,isSale,isNew,description,descriptionDetail,datePost,idCategory,status)\n" +
                    "VALUES\n" +
                    "";
            for(Product d:data){
                sql+="("+d.getId()+",\""+d.getName()+"\",\""+d.getImg()+"\","+d.getPrice()+","+d.getPriceSale()+","+d.getQuantityOrder()+","
                        +d.getQuantity()+","+
                        d.isNew()+","+d.isSale()+",\""+d.getDescription()+"\",\""+d.getDescriptionDetail()+
                        "\",\'"+d.getDatePost()+"\',\""+d.getIdCategory()+"\",\""+d.getStatus()+"\"), \n";

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

    public Product getById(String id) {
        PreparedStatement s= null;
        try {
            String sql = "select * from product where id=?";
            s = ConnectionDB.connect(sql);
            s.setString(1, id);
            ResultSet rs = s.executeQuery();
            Product p;
            if (rs.next()) {
                p = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getLong(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getBoolean(8),
                        rs.getBoolean(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14)
                );

                rs.close();
                s.close();
                return p;
        }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    //Chuc nang tim kiem
// tinh so luong data tim duoc
    public int count(String txtSearch) {
        Statement s = null;
        try {
            s= ConnectionDB.connect();
            String sql = "SELECT COUNT(*) FROM SanPham where TenSP like %" + txtSearch + "%";
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                return rs.getInt(1);
            }

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
    public List<Product> getProduct(int index, int sizeData){
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
                        rs.getString(12),
                        rs.getString(13),
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




}
