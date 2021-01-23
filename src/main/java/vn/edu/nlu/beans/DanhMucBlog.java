package vn.edu.nlu.beans;

import java.io.Serializable;

public class DanhMucBlog implements Serializable {
    private String idDMBlog;
    private String nameDMBlog;

    public DanhMucBlog(String idDMBlog, String nameDMBlog) {
        this.idDMBlog = idDMBlog;
        this.nameDMBlog = nameDMBlog;
    }

    public String getIdDMBlog() {
        return idDMBlog;
    }

    public void setIdDMBlog(String idDMBlog) {
        this.idDMBlog = idDMBlog;
    }

    public String getNameDMBlog() {
        return nameDMBlog;
    }

    public void setNameDMBlog(String nameDMBlog) {
        this.nameDMBlog = nameDMBlog;
    }
}
