package Model;

import Connection.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class OrderDetail {
    private String mactdh;
    private String madh;
    private String masp;
    private int so_luong;
    private int gia;
    Connection con;
    String sql;
    PreparedStatement ps;
    ResultSet rs;

    public OrderDetail(String mactdh, String madh, String masp, int so_luong, int gia) throws SQLException, ClassNotFoundException {
        this.mactdh = mactdh;
        this.madh = madh;
        this.masp = masp;
        this.so_luong = so_luong;
        this.gia = gia;
        con = ConnectionDB.getConnection();
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

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "mactdh='" + mactdh + '\'' +
                ", madh='" + madh + '\'' +
                ", masp='" + masp + '\'' +
                ", so_luong=" + so_luong +
                ", gia=" + gia +
                '}';
    }


//    tao ra danh sach CTDH
    public List<OrderDetail> listCTDH() {
        sql = "select * from ctdh";
        List<OrderDetail> list = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                list.add(new OrderDetail(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

//    Tao ra danh sach MACTDH
    public List<String> listMACTDH() {
        List<String> list = new ArrayList<>();
        List<OrderDetail> listCTDH = listCTDH();
        for (OrderDetail l : listCTDH) {
            list.add(l.getMactdh());
        }
        Collections.sort(list, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });
        return list;
    }

    public int maxMACTDH(){
        List<String> list = listMACTDH();
        return
    }


}

