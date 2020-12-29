package vn.edu.nlu;

import vn.edu.nlu.beans.Product;

import java.util.HashMap;
import java.util.Map;

public class Products {
    public static Map<String, Product> data= new HashMap<>();
    static {
        data.put("1", new Product("1","Gỏi","http://localhost:8080/WebProgrammingProject/img/monchinh/2.jpg",111,11,3,1,false,false,"","", "20011001","H1","Còn hàng"));
    }
}
