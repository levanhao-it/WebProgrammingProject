package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.db.ConnectionDB;
import vn.edu.nlu.model.Account;

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
        PreparedStatement s = null;
        try {
            String sql = "SELECT COUNT(*) FROM Product where name like ? ";
            s= ConnectionDB.connect(sql);

            s.setString(1,"%" + txtSearch + "%");

            ResultSet rs = s.executeQuery();
            while(rs.next()){
                System.out.println(rs.getInt(1));
                return rs.getInt(1);
            }

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
    public List<Product> getProductWhenSearch(int index, int sizeData, String txtSearch){
        PreparedStatement s= null;
        try {
            List<Product> re= new LinkedList<>();
            String sql = "SELECT * FROM product where name like ? limit ? , ?";
            s= ConnectionDB.connect(sql);
            s.setString(1, "%" + txtSearch + "%");
            s.setInt(2,index - 1);
            s.setInt(3,sizeData);
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

    public Account login(String user, String pass){
        PreparedStatement s= null;
        String sql = "select * from account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try{
            s = new ConnectionDB().connect(sql);
            ResultSet rs = s.executeQuery();
            while(rs.next()){
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        }catch (Exception e){
        }
        return null;
    }

    public Account checkAccountExist(String user){
        PreparedStatement s= null;
        String sql = "select * from account\n"
                + "where [user] = ?\n";
        try{
            s = new ConnectionDB().connect(sql);
            s.setString(1,user);
            ResultSet rs = s.executeQuery();
            while(rs.next()){
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        }catch (Exception e){
        }
        return null;
    }
    public void register(String user, String pass) {
        PreparedStatement s = null;
        String sql = "insert into account\n"
                + "values(?,?,0,0)";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,user);
            s.setString(2,pass);
            int rs = s.executeUpdate();


            }catch(Exception e){

            }
        }




    public static void main(String[] args) {

    }


}
