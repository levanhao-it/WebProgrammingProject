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

public class ProductManagement {
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

    public void deleteProduct(String pid) {
        PreparedStatement ps = null;
        Product pro = new Product();
        try {

            String sql = "delete from product where id= ? ";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
    public void insertProduct(String id,String name,String img,long price,long priceSale,int isSale,int isNew
            ,String description,
                              String descriptionDetail,
                              String datePost,
                              String idCategory,
                              String status){
        PreparedStatement s= null;
        try {

            String sql= "INSERT INTO product (id,name,img,price,priceSale,quantityOrder,quantity ,isSale,isNew,description,descriptionDetail,datePost,idCategory,status) values(?,?,?,?,?,0,0,?,?,?,?,?,?,?)";
            s= ConnectionDB.connect(sql);
            s.setString(1,id);
            s.setString(2,name);
            s.setString(3,img);
            s.setLong(4,price);
            s.setLong(5,priceSale);
            s.setInt(6,isSale);
            s.setInt(7,isNew);
            s.setString(8,description);
            s.setString(9,descriptionDetail);
            s.setString(10,datePost);
            s.setString(11,idCategory);
            s.setString(12,status);
            s.executeUpdate();

            s.close();



        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }
    }
    public void updateProduct(String id,String name,String img,long price,long priceSale,int isSale,int isNew
            ,String description,
                              String descriptionDetail,
                              String datePost,
                              String idCategory,
                              String status){
        PreparedStatement s= null;
        try {

            String sql= "update product set name=?,img=?,price=?,priceSale=?,quantityOrder=0,quantity=0 ,isSale=?,isNew=?,description=?,descriptionDetail=?,datePost=?,idCategory=?,status=? where id=?";
            s= ConnectionDB.connect(sql);

            s.setString(1,name);
            s.setString(2,img);
            s.setLong(3,price);
            s.setLong(4,priceSale);
            s.setInt(5,isSale);
            s.setInt(6,isNew);
            s.setString(7,description);
            s.setString(8,descriptionDetail);
            s.setString(9,datePost);
            s.setString(10,idCategory);
            s.setString(11,status);
            s.setString(12,id);
            s.executeUpdate();




//            int re=s.executeUpdate(sql);
            s.close();



        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }
    }
    public List<Product> getProductById(String id) {
        PreparedStatement s= null;
        try {
            List<Product> re= new LinkedList<>();
            String sql = "SELECT * FROM product where id=?";
            s= ConnectionDB.connect(sql);
            s.setString(1,id);
            ResultSet rs=s.executeQuery();
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



    public static void main(String[] args) {
//        ProductManagement p= new ProductManagement();
//        System.out.print(p.getIDNewProduct());


    }

//    public String getIDNewProduct() {
//        Statement s= null;
//
//        String sql = "select * from product";
//        String id = ;
//
//        try {
//            s = ConnectionDB.connect();
//            ResultSet rs = s.executeQuery(sql);
//
//            while (rs.next()){
//                if(rs.)
//                id = rs.getString(1);
//            }
//            rs.close();
//            s.close();
//            String id1=Integer.parseInt(id.substring(1))+1+"";
//            String idNew = "P"+id1 ;
//            return idNew;
//        } catch (SQLException | ClassNotFoundException throwables) {
//            throwables.printStackTrace();
//            return null;
//        }
//    }
}
