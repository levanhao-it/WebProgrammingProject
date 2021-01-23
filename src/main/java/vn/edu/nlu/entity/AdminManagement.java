
package vn.edu.nlu.entity;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class AdminManagement {
    public List<User> getAllAdmin(){
        Statement s= null;
        try {
            List<User> re= new LinkedList<>();
            String sql = "Select * from user where quyen=1";
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery(sql);
            while (rs.next()){
                re.add(new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9)));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public String getIdNew(){
        Statement s= null;

        String sql = "select * from user";
        String id = "";

        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(sql);

            while (rs.next()){
                id = rs.getString(1);
            }
            rs.close();
            s.close();
            String idNew = (Integer.parseInt(id) + 1) + "";
            return idNew;
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }
    public void deleteAdmin(String uid){
       PreparedStatement s = null;
       try{
           String sql = "delete from user where idUser=?";
           s = new ConnectionDB().connect(sql);
           s.setString(1,uid);
           s.executeUpdate();
       }catch (Exception e) {
           e.printStackTrace();
       }

    }
    public void addUser(String idUser, String userName, String password, String name, String address, String phone, String email, String regisDate) {
        PreparedStatement s = null;
        String sql = "insert into user(idUser,tendangnhap,matkhau,hoten,diachi,sodt,email,dateRegister,quyen) values(?,?,?,?,?,?,?,?,1)";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,idUser);
            s.setString(2,userName);
            s.setString(3,password);
            s.setString(4,name);
            s.setString(5,address);
            s.setString(6,phone);
            s.setString(7,email);
            s.setString(8,regisDate);
            s.executeUpdate();
            s.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }



    }
    public void editUser(String idUser, String userName, String password, String name, String address, String phone, String email, String regisDate){
        PreparedStatement s = null;
        String sql ="UPDATE user Set tendangnhap = ?,matkhau = ?, hoten = ?,diachi = ?,sodt = ?,email = ?,dateRegister = ?, quyen = 1 WHERE idUser = ?";
        try {
            s = ConnectionDB.connect(sql);

            s.setString(1,userName);
            s.setString(2,password);
            s.setString(3,name);
            s.setString(4,address);
            s.setString(5,phone);
            s.setString(6,email);
            s.setString(7,regisDate);
            s.setString(8,idUser);
            s.executeUpdate();
            s.close();

        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }


    }
//    public void updateUser(String idUser, String userName, String password, String name, String address, String phone, String email,Stri){
//        PreparedStatement s = null;
//        String sql ="UPDATE user Set tendangnhap = ?,matkhau = ?, hoten = ?,diachi = ?,sodt = ?,email = ?, quyen = 0 WHERE idUser = ?";
//        try {
//            s = ConnectionDB.connect(sql);
//
//            s.setString(1,userName);
//            s.setString(2,password);
//            s.setString(3,name);
//            s.setString(4,address);
//            s.setString(5,phone);
//            s.setString(6,email);
//            s.setString(8,idUser);
//            s.executeUpdate();
//            s.close();
//
//        }catch (ClassNotFoundException | SQLException e){
//            e.printStackTrace();
//        }
//
//    }
    public List<User> getAdminById(String uid) {
        PreparedStatement s= null;
        try {
            List<User> re= new LinkedList<>();
            String sql = "SELECT * FROM user where idUser=?";
            s= ConnectionDB.connect(sql);
            s.setString(1,uid);
            ResultSet rs=s.executeQuery();
            while (rs.next()){
                re.add(new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9)));
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
        AdminManagement man = new AdminManagement();
        man.editUser("3", "levanhao", "123", "le", "hcm", "", "", "2021-12-01");
    }


}
