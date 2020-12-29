package vn.edu.nlu.dao;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.db.ConnectionDB;

public class Khachhang implements Object {

    @Override
    public boolean themTaiKhoan(Object obj) {
       User user = (User) obj;
        try{
            new ConnectionDB().thucThiSQL("insert into dangnhap values("+user.getUserName()+"",""+user.getPass()+"",""+user.getName()));
                return true;
        }catch (Exception e){
            e.printStackTrace();
        }
    return false;
    }

    @Override
    public boolean kiemTraDangNhap(String username) {
        return false;
    }
    public static void main(String [] args){
        User user = new User("huynhhuy","123","TanHuy");
        System.out.println();
    }

}
