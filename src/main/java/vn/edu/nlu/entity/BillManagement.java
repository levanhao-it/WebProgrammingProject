package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Bill;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class BillManagement {
    public List<Bill> getAll(){
        Statement s= null;
        try {
            List<Bill> re= new LinkedList<>();
            s= ConnectionDB.connect();
            ResultSet rs=s.executeQuery("select * from donhang");
            while (rs.next()){
                re.add(new Bill(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)

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

//    public String getIdNew() {
//        Statement s= null;
//
//        String sql = "select * from donhang";
//        String id = "";
//
//        try {
//            s = ConnectionDB.connect();
//            ResultSet rs = s.executeQuery(sql);
//
//            while (rs.next()){
//                id = rs.getString(1);
//            }
//            rs.close();
//            s.close();
//            String id1=Integer.parseInt(id.substring(2))+1+"";
//            String idNew = "DH"+id1 ;
//            return idNew;
//        } catch (SQLException | ClassNotFoundException throwables) {
//            throwables.printStackTrace();
//            return null;
//        }
//    }

    public void addBill(String madh, String makh, String diachi, String sodt, String email, String ghichu, String trigia) {
        PreparedStatement s = null;
        String sql = "insert into donhang(madh,makh,diachi,sodt,email,ghichu,trigia,trangthai,ngaydat) values(?,?,?,?,?,?,?,'Đang Giao','2020-11-02')";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,madh);
            s.setString(2,makh);
            s.setString(3,diachi);
            s.setString(4,sodt);
            s.setString(5,email);
            s.setString(6,ghichu);
            s.setString(7,trigia);
            s.executeUpdate();
            s.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        BillManagement mb= new BillManagement();
//        System.out.println(mb.getIdNew());
    }
}
