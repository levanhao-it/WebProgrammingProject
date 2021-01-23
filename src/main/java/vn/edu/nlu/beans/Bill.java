package vn.edu.nlu.beans;

public class Bill {
    private String madh,makh,diachi,sodt,email,ghichu,trigia,trangthai,ngaydat;

    public Bill(String madh, String makh, String diachi, String sodt, String email, String ghichu, String trigia, String trangthai, String ngaydat) {
        this.madh = madh;
        this.makh = makh;
        this.diachi = diachi;
        this.sodt = sodt;
        this.email = email;
        this.ghichu = ghichu;
        this.trigia = trigia;
        this.trangthai = trangthai;
        this.ngaydat = ngaydat;
    }

    public Bill() {
    }

    public String getMadh() {
        return madh;
    }

    public void setMadh(String madh) {
        this.madh = madh;
    }

    public String getMakh() {
        return makh;
    }

    public void setMakh(String makh) {
        this.makh = makh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getTrigia() {
        return trigia;
    }

    public void setTrigia(String trigia) {
        this.trigia = trigia;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    public String getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(String ngaydat) {
        this.ngaydat = ngaydat;
    }
}
