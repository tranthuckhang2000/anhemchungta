package Model;

public class Order {
    private String madh;
    private String matk;
    private String matt;
    private String ngay_dat;
    private String ngay_giao;
    private String trang_thai;
    private int tong_tien;
    private String sdt;
    private String dia_chi;


    public Order(String madh, String matk, String matt, String ngay_dat, String ngay_giao, String trang_thai, int tong_tien, String sdt, String dia_chi) {
        this.madh = madh;
        this.matk = matk;
        this.matt = matt;
        this.ngay_dat = ngay_dat;
        this.ngay_giao = ngay_giao;
        this.trang_thai = trang_thai;
        this.tong_tien = tong_tien;
        this.sdt = sdt;
        this.dia_chi = dia_chi;
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

    public String getNgay_dat() {
        return ngay_dat;
    }

    public void setNgay_dat(String ngay_dat) {
        this.ngay_dat = ngay_dat;
    }

    public String getNgay_giao() {
        return ngay_giao;
    }

    public void setNgay_giao(String ngay_giao) {
        this.ngay_giao = ngay_giao;
    }

    public String getTrang_thai() {
        return trang_thai;
    }

    public void setTrang_thai(String trang_thai) {
        this.trang_thai = trang_thai;
    }

    public int getTong_tien() {
        return tong_tien;
    }

    public void setTong_tien(int tong_tien) {
        this.tong_tien = tong_tien;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }

    @Override
    public String toString() {
        return "Order{" +
                "madh='" + madh + '\'' +
                ", matk='" + matk + '\'' +
                ", matt='" + matt + '\'' +
                ", ngay_dat='" + ngay_dat + '\'' +
                ", ngay_giao='" + ngay_giao + '\'' +
                ", trang_thai='" + trang_thai + '\'' +
                ", tong_tien=" + tong_tien +
                ", sdt='" + sdt + '\'' +
                ", dia_chi='" + dia_chi + '\'' +
                '}';
    }
}
