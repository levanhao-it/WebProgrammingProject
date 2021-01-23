package vn.edu.nlu.Utility;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserMode {
    public User FindUserPassword(String idUser) {

        User user = null;
        PreparedStatement s = null;
        try {
            s = ConnectionDB.connect("Select matkhau from user where idUser=?");
            s.setString(1, idUser);
            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                user = new User();

                user.setPassword(rs.getString("matkhau"));
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return user;

    }

    public static void main(String[] args) {
        UserMode u = new UserMode();
        System.out.println(u.FindUserPassword("4"));
    }
}
