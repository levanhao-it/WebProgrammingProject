package vn.edu.nlu.beans;

import java.util.Date;

public class Product {
    private String id;
    private String name;
    private String img;
    private int price;
    private int priceSale;
    private int quantityOrder,quantity;
    private boolean isSale,isNew;
    private String description,descriptionDetail;
    private Date datePost;
    private int idCategory;
    private String status;

    public Product(){

    }

    public Product(String id, String name, String img, int price, int priceSale, int quantityOrder, int quantity , boolean isSale, boolean isNew, String description, String descriptionDetail, Date datePost, int idCategory, String status) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.priceSale = priceSale;
        this.quantityOrder = quantityOrder;
        this.quantity=quantity;
        this.isSale = isSale;
        this.isNew = isNew;
        this.description = description;
        this.descriptionDetail = descriptionDetail;
        this.datePost = datePost;
        this.idCategory = idCategory;
        this.status = status;
    }
    public void quantityUp(){
        this.quantity++;
    }
    public void quantityUp(int quantity){
        setQuantity(this.quantity+quantity);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(int priceSale) {
        this.priceSale = priceSale;
    }

    public int getQuantityOrder() {
        return quantityOrder;
    }

    public void setQuantityOrder(int quantityOrder) {
        this.quantityOrder = quantityOrder;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        if(quantity<1) quantity=1;
        this.quantity = quantity;
    }

    public boolean isSale() {
        return isSale;
    }

    public void setSale(boolean sale) {
        isSale = sale;
    }

    public boolean isNew() {
        return isNew;
    }

    public void setNew(boolean aNew) {
        isNew = aNew;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescriptionDetail() {
        return descriptionDetail;
    }

    public void setDescriptionDetail(String descriptionDetail) {
        this.descriptionDetail = descriptionDetail;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public void add(){
        this.quantity++;

    }
}
