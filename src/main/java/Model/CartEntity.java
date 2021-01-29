package Model;

import Connection.ConnectionDB;
import Model.SmartphoneEntity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import java.util.Calendar;

public class CartEntity {
    Connection con = ConnectionDB.getConnection();
    String sql;
    PreparedStatement ps;
    ResultSet rs;


    public CartEntity() throws SQLException, ClassNotFoundException {

    }



//    tao ra danh sach CTDH
    public List<CartItem> listCTDH() {
        sql = "select * from ctdh";
        List<CartItem> list = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String a = rs.getString(1);
                list.add(new CartItem(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

//    Tao ra danh sach MACTDH
    public List<String> listMACTDH() {
        List<String> list = new ArrayList<>();
        List<CartItem> listCTDH = listCTDH();
        for (CartItem l : listCTDH) {
            String[] result = l.getMactdh().split("dh");
            list.add(result[0]);
        }
        Collections.sort(list, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });
        return list;
    }
//   Tinh ra MACTDH moi
    public int newMACTDH(){
        List<String> list = listMACTDH();
        int newMACTDH = Integer.parseInt(list.get(list.size() - 1) ) + 1;
        return newMACTDH;
    }
    public String mACTDH(){
        int a = newMACTDH();
        return "dh" + a;
    }

//    Tao danh sach CTDT
    public List<String> getListCTDH() throws SQLException, ClassNotFoundException {
        List<String> list = new ArrayList<>();
        String sql = "SELECT * FROM ctdh";
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String id = rs.getString(1);
            list.add(id);
        }
        return list;
    }

    // Tim ra CTDH co MACTDH lớn nhất
    public int findMaxMACTDH() throws SQLException, ClassNotFoundException {
        List<String> list = getListCTDH();
        List<Integer> listMASP = new ArrayList<>();
        for (String s : list) {
            String[] line = s.split("ctdh");
            int maxMASP = Integer.parseInt(line[1]);
            listMASP.add(maxMASP);
        }
        Collections.sort(listMASP, new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o1.compareTo(o2);
            }
        });

        return listMASP.get(listMASP.size() - 1);
    }
//    Tao ra MACTDH moi
    public String createNewMACTDH() throws SQLException, ClassNotFoundException {
        int newMASP = findMaxMACTDH() + 1;
        String result = "ctdh" + newMASP;
        return result;

    }

//Tao ra danh sach DON_HANG
    public List<String> getListDH() throws SQLException, ClassNotFoundException {
        List<String> list = new ArrayList<>();
        String sql = "SELECT * FROM don_hang";
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String id = rs.getString(1);
            list.add(id);
        }
        return list;
    }

    // Tim ra DON_HANG có MADH lớn nhất
    public int findMaxMADH() throws SQLException, ClassNotFoundException {
        List<String> list = getListDH();
        List<Integer> listMASP = new ArrayList<>();
        for (String s : list) {
            String[] line = s.split("dh");
            int maxMASP = Integer.parseInt(line[1]);
            listMASP.add(maxMASP);
        }
        Collections.sort(listMASP, new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o1.compareTo(o2);
            }
        });

        return listMASP.get(listMASP.size() - 1);
    }

    public String createNewMADH() throws SQLException, ClassNotFoundException {
        int newMASP = findMaxMADH() + 1;
        String result = "dh" + newMASP;
        return result;

    }



    //    Tao danh sach THANH_TOAN
    public List<String> getListTT() throws SQLException, ClassNotFoundException {
        List<String> list = new ArrayList<>();
        String sql = "SELECT * FROM thanh_toan";
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String id = rs.getString(1);
            list.add(id);
        }
        return list;
    }

    // Tim ra THANH_TOAN co MATT lớn nhất
    public int findMaxMATT() throws SQLException, ClassNotFoundException {
        List<String> list = getListTT();
        List<Integer> listMASP = new ArrayList<>();
        for (String s : list) {
            String[] line = s.split("tt");
            int maxMASP = Integer.parseInt(line[1]);
            listMASP.add(maxMASP);
        }
        Collections.sort(listMASP, new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o1.compareTo(o2);
            }
        });

        return listMASP.get(listMASP.size() - 1);
    }
    //    Tao ra MATT moi
    public String createNewMATT() throws SQLException, ClassNotFoundException {
        int newMASP = findMaxMATT() + 1;
        String result = "tt" + newMASP;
        return result;

    }


//    Luu du lieu cho THANH_TOAN
    public void insertTT(String ten_thanh_toan) throws SQLException, ClassNotFoundException {
        SmartphoneEntity se = new SmartphoneEntity();
        String sql = "insert into thanh_toan values(?, ?)";
        ps = con.prepareStatement(sql);
        String matt = createNewMATT();
        ps.setString(1, matt);
        ps.setString(2, ten_thanh_toan);
        ps.executeUpdate();

    }
    //    Luu du lieu cho DON_HANG
    public void insertDH(String matk, String matt, String ngay_dat, String ngay_giao, String trang_thai, int tong_tien, String sdt, String dia_chi) throws SQLException, ClassNotFoundException {
        SmartphoneEntity se = new SmartphoneEntity();
        String sql = "insert into don_hang values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        String madh = createNewMADH();
        ps.setString(1, madh);
        ps.setString(2, matk);
        ps.setString(3, matt);
        ps.setString(4, ngay_dat);
        ps.setString(5, ngay_giao);
        ps.setString(6, trang_thai);
        ps.setInt(7, tong_tien);
        ps.setString(8, sdt);
        ps.setString(9, dia_chi);

        ps.executeUpdate();
    }

    public void insertDH(String madh, String matk, String matt, String ngay_dat, String ngay_giao, String trang_thai, int tong_tien, String sdt, String dia_chi) throws SQLException, ClassNotFoundException {
        SmartphoneEntity se = new SmartphoneEntity();
        String sql = "insert into don_hang values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, madh);
        ps.setString(2, matk);
        ps.setString(3, matt);
        ps.setString(4, ngay_dat);
        ps.setString(5, ngay_giao);
        ps.setString(6, trang_thai);
        ps.setInt(7, tong_tien);
        ps.setString(8, sdt);
        ps.setString(9, dia_chi);
        ps.executeUpdate();
    }

    // Luu du lieu CTDH
    public void insertCTDH(CartItem c, String madh) throws SQLException, ClassNotFoundException {
        SmartphoneEntity se = new SmartphoneEntity();
        String sql = "insert into ctdh values(?, ?, ?, ?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        String mactdh = createNewMACTDH() ;
        ps.setString(1, mactdh);
        ps.setString(2, madh);
        ps.setString(3, c.getMasp());
        ps.setString(4, c.getHinh_mo_ta_1());
        ps.setString(5, c.getTen_san_pham());
        ps.setInt(6, c.getGia());
        ps.setInt(7, c.getSo_luong());
        ps.executeUpdate();
    }

    public String getNgayDat(){
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);
        String result = String.valueOf(date);
        return result;
    }
    public  String getNgayGiao(){
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);
        Calendar c1 = Calendar.getInstance();
        c1.setTime(date);
        c1.roll(Calendar.DATE, 2);
//        String ngaygiao = String.valueOf(c1.getTime(DATE));
        System.out.println();
       String ngaygiao = c1.get(Calendar.DATE) + "/" + c1.get(Calendar.MONTH) + "/" + c1.get(Calendar.YEAR);
        return  ngaygiao;
    }




//    public insertCTDH = new D

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        CartEntity od = new CartEntity();
////        System.out.println(od.createNewMACTDH());
        CartItem c = new CartItem("1003", "10003", "10003", "10003", 2, 3);
//        od.insertCTDH(c, "hhhh");
        od.insertDH("123", "123", "123", "123", "123", 123, "123", "123");
//        System.out.println(od.createNewMACTDH());
//        System.out.println(od.createNewMACTDH());

    }

}

