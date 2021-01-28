package Model;

import java.util.List;

public class Order {
    private String madh;
    private Account account;
    private List<Smartphone> list;
    private String trang_thai;

    public Order(String madh, Account account, List<Smartphone> list, String trang_thai) {
        this.madh = madh;
        this.account = account;
        this.list = list;
        this.trang_thai = trang_thai;
    }

    public String getMadh() {
        return madh;
    }

    public void setMadh(String madh) {
        this.madh = madh;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Smartphone> getList() {
        return list;
    }

    public void setList(List<Smartphone> list) {
        this.list = list;
    }

    public String getTrang_thai() {
        return trang_thai;
    }

    public void setTrang_thai(String trang_thai) {
        this.trang_thai = trang_thai;
    }

    @Override
    public String toString() {
        return "Order{" +
                "madh='" + madh + '\'' +
                ", account=" + account +
                ", list=" + list +
                ", trang_thai='" + trang_thai + '\'' +
                '}';
    }
}

