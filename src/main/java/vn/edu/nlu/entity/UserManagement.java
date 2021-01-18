
package vn.edu.nlu.entity;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class UserManagement {
    public List<User> getAllKhachHang(){
        Statement s= null;
        try {
            List<User> re= new LinkedList<>();
            String sql = "Select * from user ";
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery(sql);
            while (rs.next()){
                re.add(new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9)
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
    public void deleteUser(String uid){
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
    public void addUser(String idUser, String username, String password, String name, String address, String phone, String email, String regisDate) {
        PreparedStatement s = null;
        String sql = "insert into user(idUser,tendangnhap,matkhau,hoten,diachi,sodt,email,dateRegister,quyen) values(?,?,?,?,?,?,?,?,0)";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,idUser);
            s.setString(2,username);
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
    public static void main(String[] args) {
        UserManagement man = new UserManagement();
        List<User> data = man.getAllKhachHang();
        for(User u : data)
            System.out.println(u.getUserName());
    }
}
