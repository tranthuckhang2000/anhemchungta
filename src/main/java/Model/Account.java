package Model;

//import java.sql.Connection;

import java.io.Serializable;

import Connection.ConnectionDB;


import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class Account {
    private String matk;
    private String ten_dang_nhap;
    private String gmail;
    private String mat_khau;
    private String ho_va_ten;
    private int quyen_truy_cap;
    private String key;


    public Account(String matk, String ten_dang_nhap, String gmail, String mat_khau, String ho_va_ten, int quyen_truy_cap
    ) {
        this.matk = matk;
        this.ten_dang_nhap = ten_dang_nhap;
        this.gmail = gmail;
        this.mat_khau = mat_khau;
        this.ho_va_ten = ho_va_ten;
        this.quyen_truy_cap = quyen_truy_cap
        ;
    }

    public Account(){
    }
    public Account(String ten_dang_nhap, String gmail, String key) {
        this.ten_dang_nhap = ten_dang_nhap;
        this.gmail = gmail;
        this.key = key;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }


    public String getMatk() {
        return matk;
    }

    public void setMatk(String matk) {
        this.matk = matk;
    }

    public String getTen_dang_nhap() {
        return ten_dang_nhap;
    }

    public void setTen_dang_nhap(String ten_dang_nhap) {
        this.ten_dang_nhap = ten_dang_nhap;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getMat_khau() {
        return mat_khau;
    }

    public void setMat_khau(String mat_khau) {
        this.mat_khau = mat_khau;
    }

    public String getHo_va_ten() {
        return ho_va_ten;
    }

    public void setHo_va_ten(String ho_va_ten) {
        this.ho_va_ten = ho_va_ten;
    }

    @Override
    public String toString() {
        return "Account{" +
                "matk='" + matk + '\'' +
                ", ten_dang_nhap='" + ten_dang_nhap + '\'' +
                ", gmail='" + gmail + '\'' +
                ", mat_khau='" + mat_khau + '\'' +
                ", ho_va_ten='" + ho_va_ten + '\'' +
                '}';
    }

//    public List<Account> getListAccount() throws SQLException, ClassNotFoundException {
//        List<Account> list = new ArrayList<>();
//        Connection con = ConnectionDB.getConnection();
//        PreparedStatement ps = con.prepareStatement("select * from account");
//        ResultSet rs = ps.executeQuery();
//        while (rs.next()) {
//            Account ac = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
//            list.add(ac);
//        }
//        return list;
//    }
//
//
//
//    public static Account checkAccount(String ten_dang_nhap, String mat_khau) throws SQLException, ClassNotFoundException {
//        Account ac;
//        List<Account> list = getListAccount();
//        for ( Account a : list) {
//            if(a.getTen_dang_nhap().equals(ten_dang_nhap) && a.getMat_khau().equals(mat_khau))
//                return a;
//            break;
//        }
//        return null;
//    }

    public  String optionAccount(String matk){
        String [] array = matk.split("");
        String result = array[0] + array[1];
        return result;
    }



    public int getQuyen_truy_cap() {
        return quyen_truy_cap;
    }

    public void setQuyen_truy_cap(int quyen_truy_cap) {
        this.quyen_truy_cap = quyen_truy_cap;
    }
}
