package Model;


import Connection.ConnectionDB;

import java.math.BigDecimal;
import java.sql.*;
import java.util.*;
import java.util.Date;

public class AccountEntity {

    public Account login(String ten_dang_nhap, String mat_khau) {
        Account ac = null;
        Connection con = null;
        try {
            con = ConnectionDB.getConnection();
            String sql = "select * from account where ten_dang_nhap = ? and mat_khau = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ten_dang_nhap);
            ps.setString(2, mat_khau);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ac;

    }
    public static List<Account> getListAccount() throws SQLException, ClassNotFoundException {
        List<Account> list = new ArrayList<>();
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from account");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Account ac = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
            list.add(ac);
        }
        return list;
    }

    //   tao mot danh sach bao gom cac tai khoan hien co
    public static List<Account> getListAccountForMATK(String matk) throws SQLException, ClassNotFoundException {
        List<Account> list = new ArrayList<>();
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from account where matk like ?");
        ps.setString(1, matk + "%");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Account ac = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
            list.add(ac);
        }
        return list;
    }

    //   tao mot danh sach cac MATK tai khoan hien co
    public List<String> getListMATK(String matk) throws SQLException, ClassNotFoundException {
        List<Account> list = getListAccountForMATK(matk);
        List<String> listMATK = new ArrayList<>();
        for (Account a : list
        ) {
            listMATK.add(a.getMatk());
        }
        return listMATK;
    }

    public Account checkAccount(String ten_dang_nhap, String gmail) throws SQLException, ClassNotFoundException {
        Account ac;
        List<Account> list = getListAccount();
        for (Account a : list) {
            if (a.getTen_dang_nhap().equals(ten_dang_nhap) && a.getGmail().equals(gmail)) {
                return a;
            }
        }
        return null;
    }

    public boolean checkAccountForUsername(String ten_dang_nhap) throws SQLException, ClassNotFoundException {
        List<Account> list = getListAccount();
        List<String> listUsername = new ArrayList<>();
        for (Account a : list) {
            if(a.getTen_dang_nhap().equals(ten_dang_nhap))
                return false;
        }
        return true;
    }

    public boolean checkAccountForGmail(String gmail) throws SQLException, ClassNotFoundException {
        List<Account> list = getListAccount();
        List<String> listGmail = new ArrayList<>();
        for (Account a : list) {
            if(a.getGmail().equals(gmail))
                return false;
        }
        return true;
    }

        // Tim ra tai khoan có mssp lớn nhất
    public int findMaxMATK(String matk) throws SQLException, ClassNotFoundException {
        List<String> list = getListMATK(matk);
        List<Integer> listMATK = new ArrayList<>();
        for (String s : list) {
            String[] line = s.split(matk);
            int maxMASP = Integer.parseInt(line[1]);
            listMATK.add(maxMASP);
        }
        Collections.sort(listMATK, new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o1.compareTo(o2);
            }
        });

        return listMATK.get(listMATK.size() - 1);
    }

    public Account createAccount(String ten_dang_nhap, String gmail, String mat_khau, String ho_va_ten) {
        Account ac = null;
        try {
            int findMATK = findMaxMATK("tv") + 1;
            String matk = "tv" + String.valueOf(findMATK);
            ac = new Account(matk, ten_dang_nhap, gmail, mat_khau, ho_va_ten, 0);
            Connection con = ConnectionDB.getConnection();
            String sql = "insert into account values(?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,matk);
            ps.setString(2,ten_dang_nhap);
            ps.setString(3,gmail);
            ps.setString(4,mat_khau);
            ps.setString(5,ho_va_ten);
            ps.setInt(6,0);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        return ac;
    }

    public Account checkEmailAndUserName(String name, String email) {
        PreparedStatement s = null;
        String sql = "select * from account where ten_dang_nhap = ? and gmail=?";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1,name);
            s.setString(2,email);
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        PreparedStatement s = null;
        String sql = "select * from account where ten_dang_nhap = ?";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1, user);
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;

    }

    public Account editpass(String username, String password) {
        PreparedStatement s = null;
        String sql = "update account set mat_khau=? where ten_dang_nhap=?";
        try {
            s = new ConnectionDB().connect(sql);
            s.setString(1, password);
            s.setString(2, username);
            s.executeUpdate();
            s.close();
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        System.out.println(getListAccount());
//        System.out.println( login("khang", "khang123"));
        AccountEntity ae = new AccountEntity();
        System.out.println(ae.checkAccount("khangj", "khangtran0944@gmail.com"));
//        System.out.println(ae.findMaxMATK("tv"));
//        System.out.println(getListAccountForMATK("ad"));
//        System.out.println(ae.getListMATK("ad"));
//        System.out.println(ae.createAccount("huong123", "huong123@gmail.com", "huong123", "Nguyen Xuan Huong"));
        System.out.println();
    }
}
