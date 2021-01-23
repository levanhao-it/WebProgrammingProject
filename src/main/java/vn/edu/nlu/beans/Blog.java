package vn.edu.nlu.beans;

import java.io.Serializable;

public class Blog implements Serializable {
    private String idBlog;
    private String nameBlog;
    private String idCategoryBlog;
    private String dateBlog;
    private String content;
    private String pictureBlog;

    public Blog(String idBlog, String nameBlog, String idCategoryBlog, String dateBlog, String content, String pictureBlog) {
        this.idBlog = idBlog;
        this.nameBlog = nameBlog;
        this.idCategoryBlog = idCategoryBlog;
        this.dateBlog = dateBlog;
        this.content = content;
        this.pictureBlog = pictureBlog;
    }

    public String getPictureBlog() {
        return pictureBlog;
    }

    public void setPictureBlog(String pictureBlog) {
        this.pictureBlog = pictureBlog;
    }

    public String getIdBlog() {
        return idBlog;
    }

    public void setIdBlog(String idBlog) {
        this.idBlog = idBlog;
    }

    public String getNameBlog() {
        return nameBlog;
    }

    public void setNameBlog(String nameBlog) {
        this.nameBlog = nameBlog;
    }

    public String getIdCategoryBlog() {
        return idCategoryBlog;
    }

    public void setIdCategoryBlog(String idCategoryBlog) {
        this.idCategoryBlog = idCategoryBlog;
    }

    public String getDateBlog() {
        return dateBlog;
    }

    public void setDateBlog(String dateBlog) {
        this.dateBlog = dateBlog;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
