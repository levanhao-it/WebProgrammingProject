
package vn.edu.nlu.entity;
import jdk.nashorn.internal.runtime.regexp.joni.constants.AsmConstants;
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
            String sql = "Select * from user where quyen = 0";
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
                        rs.getString(8)
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

    public static void main(String[] args) {
        UserManagement man = new UserManagement();
        List<User> data = man.getAllKhachHang();
        for(User u : data)
            System.out.println(u.getName());
    }
}
