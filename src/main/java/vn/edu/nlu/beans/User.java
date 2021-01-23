package vn.edu.nlu.beans;

import java.io.Serializable;

public class User implements Serializable {
    private String idUser;
    private String userName;
    private String password;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String regisDate;
    private int access;
    private String key;


    public User(){

    }

    public User(String idUser, String userName, String password, String email, int access) {
        this.idUser = idUser;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.access = access;
    }

    public User(String idUser, String userName, String password, String name, String address, String phone, String email,String regisDate,int access,String key) {
        this.idUser = idUser;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.regisDate = regisDate;
        this.access = access;
        this.key=key;
    }
    public User(String idUser, String userName, String password, String name, String address, String phone, String email,String regisDate,int access) {
        this.idUser = idUser;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.regisDate = regisDate;
        this.access = access;
    }

    public User(String name) {
        this.name = name;
    }

    public String getRegisDate() {
        return regisDate;
    }

    public void setRegisDate(String regisDate) {
        this.regisDate = regisDate;
    }

    public int getAccess() {
        return access;
    }

    public void setAccess(int access) {
        this.access = access;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public User(String string, String rsString, String s, String string1, String rsString1, String s1, String string2, int anInt, String rsString2) {
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}


