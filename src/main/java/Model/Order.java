package Model;

import java.util.List;

public class Order {
    private String madh;
    private String matk;
    private String matt;
    private String maShip;
    private String ngaydat;
    private String ngaygiao;
    private int trang_thai;
    private int tong_tien;

    public Order(String madh, String matk, String matt, String maShip, String ngaydat, String ngaygiao, int trang_thai, int tong_tien) {
        this.madh = madh;
        this.matk = matk;
        this.matt = matt;
        this.maShip = maShip;
        this.ngaydat = ngaydat;
        this.ngaygiao = ngaygiao;
        this.trang_thai = trang_thai;
        this.tong_tien = tong_tien;
    }

    public String getMadh() {
        return madh;
    }

    public void setMadh(String madh) {
        this.madh = madh;
    }

    public String getMatk() {
        return matk;
    }

    public void setMatk(String matk) {
        this.matk = matk;
    }

    public String getMatt() {
        return matt;
    }

    public void setMatt(String matt) {
        this.matt = matt;
    }

    public String getMaShip() {
        return maShip;
    }

    public void setMaShip(String maShip) {
        this.maShip = maShip;
    }

    public String getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(String ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getNgaygiao() {
        return ngaygiao;
    }

    public void setNgaygiao(String ngaygiao) {
        this.ngaygiao = ngaygiao;
    }

    public int getTrang_thai() {
        return trang_thai;
    }

    public void setTrang_thai(int trang_thai) {
        this.trang_thai = trang_thai;
    }

    public int getTong_tien() {
        return tong_tien;
    }

    public void setTong_tien(int tong_tien) {
        this.tong_tien = tong_tien;
    }

    @Override
    public String toString() {
        return "Order{" +
                "madh='" + madh + '\'' +
                ", matk='" + matk + '\'' +
                ", matt='" + matt + '\'' +
                ", maShip='" + maShip + '\'' +
                ", ngaydat='" + ngaydat + '\'' +
                ", ngaygiao='" + ngaygiao + '\'' +
                ", trang_thai=" + trang_thai +
                ", tong_tien=" + tong_tien +
                '}';
    }
}

