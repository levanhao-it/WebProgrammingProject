package vn.edu.nlu.beans;

import java.util.LinkedList;
import java.util.List;

public class Role {
    private List<Integer> accept = new LinkedList<>();

    public Role(int typeAccount) {
        // nếu tham số truyền vào là admin thì thêm vào list admin
        if (typeAccount==1)
            admin();
        else
            notAdmin();
    }
    public void admin() {
        accept.add(1);

    }
    public void notAdmin() {
        accept.add(0);
    }
    public void setAccept(List<Integer> accept){
        this.accept=accept;
    }

    public boolean accept(int access) {
        return accept !=null && accept.contains(access);
    }
}
