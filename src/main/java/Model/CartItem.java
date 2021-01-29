package Model;

public class CartItem {
    private String mactdh;
    private String madh;
    private String masp;
    private String hinh_mo_ta_1;
    private String ten_san_pham;
    private int gia;
    private int so_luong;

    public CartItem(String masp, String hinh_mo_ta_1, String ten_san_pham, int gia, int so_luong) {
         this.masp = masp;
         this.hinh_mo_ta_1 = hinh_mo_ta_1;
         this.ten_san_pham = ten_san_pham;
         this.gia = gia;
         this.so_luong = so_luong;

    }

//    gia;

    public String getten_san_pham() {
        return ten_san_pham;
    }

    public void setten_san_pham(String ten_san_pham) {
        this.ten_san_pham = ten_san_pham;
    }

    public CartItem(String mactdh, String masp, String hinh_mo_ta_1, String ten_san_pham, int gia, int so_luong) {
        this.mactdh = mactdh;
        this.masp = masp;
        this.hinh_mo_ta_1 = hinh_mo_ta_1;
        this.ten_san_pham = ten_san_pham;
        this.gia = gia;
        this.so_luong = so_luong;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getHinh_mo_ta_1() {
        return hinh_mo_ta_1;
    }

    public void setHinh_mo_ta_1(String hinh_mo_ta_1) {
        this.hinh_mo_ta_1 = hinh_mo_ta_1;
    }

    public String getTen_san_pham() {
        return ten_san_pham;
    }

    public void setTen_san_pham(String ten_san_pham) {
        this.ten_san_pham = ten_san_pham;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public void add() {
        this.so_luong++;
    }

    public String getMactdh() {
        return mactdh;
    }

    public void setMactdh(String mactdh) {
        this.mactdh = mactdh;
    }

    public String getMadh() {
        return madh;
    }

    public void setMadh(String madh) {
        this.madh = madh;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "mactdh='" + mactdh + '\'' +
                ", masp='" + masp + '\'' +
                ", hinh_mo_ta_1='" + hinh_mo_ta_1 + '\'' +
                ", ten_san_pham='" + ten_san_pham + '\'' +
                ", gia=" + gia +
                ", so_luong=" + so_luong +
                '}';
    }
}
