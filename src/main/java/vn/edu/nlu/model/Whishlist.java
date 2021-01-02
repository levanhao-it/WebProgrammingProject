package vn.edu.nlu.model;

import vn.edu.nlu.beans.Product;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Whishlist implements Serializable {
    Map<String, Product> data= new HashMap<>();

    public Whishlist(){

    }
    public static Whishlist getWhishlist(HttpSession session) {
        return session.getAttribute("whishlist")==null
                ? new Whishlist()
                : (Whishlist) session.getAttribute("whishlist");
    }

    public Product get(int id){
        return data.get(id);
    }
    public void put(Product p){
        if(p==null) return ;
        if(data.containsKey(p.getId())){
            data.get(p.getId()).add();
            return;
        }
        p.setQuantity(1);
        data.put(p.getId(),p);
    }
    public void price(int id){
        data.get(id);
    }
    public void update(int id,int quantity){
        if(quantity<0) return;
        if(data.containsKey(id)) data.get(id).setQuantity(quantity);

    }
    public void detail(){
    }
    public void add(){

    }
    public void remove(int id){
        data.remove(id);
    }
    public Collection<Product> getData(){
        return data.values();
    }
    public void commit(HttpSession session) {
        session.setAttribute("whishlist",this);
    }
}
