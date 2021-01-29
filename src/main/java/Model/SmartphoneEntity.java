package Model;

import Connection.ConnectionDB;

import java.math.BigDecimal;
import java.sql.*;
import java.util.*;
import java.util.Date;

public class SmartphoneEntity {
    static Connection con;

    public List<Smartphone> listSmarphoneByMASP(String masp) throws SQLException, ClassNotFoundException {
        Connection con = ConnectionDB.getConnection();
        String sql = "select * from smart_phone where masp like ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, masp + "%");
        ResultSet rs = ps.executeQuery();
        List<Smartphone> re = new LinkedList<>();
        while (rs.next()) {
            re.add(new Smartphone(
                    rs.getString(1),
                    rs.getString(2),
                    rs.getInt(3),
                    rs.getString(4),
                    rs.getInt(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10),
                    rs.getString(11),
                    rs.getString(12),
                    rs.getString(13),
                    rs.getString(14),
                    rs.getString(15),
                    rs.getString(16),
                    rs.getString(17),
                    rs.getString(18),
                    rs.getString(19),
                    rs.getString(20),
                    rs.getString(21),
                    rs.getString(22),
                    rs.getString(23),
                    rs.getInt(24)

            ));
        }
        return re;

    }

    public List<Smartphone> getData(char ten_san_pham) {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like + ten_san_pham%");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)

                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Smartphone> getAllSmartphone() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE");

            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)

                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }

    public List<Smartphone> getAllIphone() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 'ip%'");

            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)

                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }

    public List<Smartphone> getAllOppo() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 'op%'");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }


    public List<Smartphone> getAllXiaomi() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 'xi%'");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }


    public List<Smartphone> getAllVsmart() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 'vm%'");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }


    public List<Smartphone> getAllSamsung() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 'ss%'");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }

    public List<Smartphone> getAllRealme() {
        List<Smartphone> re = new LinkedList<>();
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from SMART_PHONE where masp like 're%'");
            while (rs.next()) {
                re.add(new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                ));
            }
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }


    // lọc ra danh sách MASP theo loại sản phẩn cần
    public List<String> getListMASP(String MASP) throws SQLException, ClassNotFoundException {
        List<String> list = new ArrayList<>();
        String sql = "SELECT * FROM SMART_PHONE WHERE MASP LIKE ?";
        Connection con = ConnectionDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, MASP + "%");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String id = rs.getString(1);
            list.add(id);
        }
        return list;
    }

    //    Tao ra một sản phẩm
    public void createSmartphone(String masp, String ten_san_pham, int gia, String ngay_ra_mat, int gia_khuyen_mai, String hinh_mo_ta_1, String hinh_mo_ta_2, String hinh_mo_ta_3, String mau, String thuong_hieu, String man_hinh, String kich_thuoc_man_hinh, String he_dieu_hanh, String cpu, String camera_truoc, String camera_sau, String bo_nho, String ram, String the_sim, String pin, String mo_ta_1, String mo_ta_2, String mo_ta_3, int so_luong) throws SQLException, ClassNotFoundException {
        Connection con = ConnectionDB.getConnection();
        String newMasp = createNewMASP(masp);
        String sql = "insert into SMART_PHONE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, newMasp);
        ps.setString(2, ten_san_pham);
        ps.setInt(3, gia);
        ps.setString(4, ngay_ra_mat);
        ps.setInt(5, gia_khuyen_mai);
        ps.setString(6, hinh_mo_ta_1);
        ps.setString(7, mau);
        ps.setString(8, hinh_mo_ta_2);
        ps.setString(9, hinh_mo_ta_3);
        ps.setString(10, thuong_hieu);
        ps.setString(11, man_hinh);
        ps.setString(12, kich_thuoc_man_hinh);
        ps.setString(13, he_dieu_hanh);
        ps.setString(14, cpu);
        ps.setString(15, camera_truoc);
        ps.setString(16, camera_sau);
        ps.setString(17, bo_nho);
        ps.setString(18, ram);
        ps.setString(19, the_sim);
        ps.setString(20, pin);
        ps.setString(21, mo_ta_1);
        ps.setString(22, mo_ta_2);
        ps.setString(23, mo_ta_3);
        ps.setInt(24, so_luong);
        ps.executeUpdate();
    }


    // Tim ra san pham có mssp lớn nhất
    public int findMaxMASP(String ip) throws SQLException, ClassNotFoundException {
        List<String> list = getListMASP(ip);
        List<Integer> listMASP = new ArrayList<>();
        for (String s : list) {
            String[] line = s.split(ip);
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
    //    tạo một MSSP mới
    public String createNewMASP(String masp) throws SQLException, ClassNotFoundException {
        int newMASP = findMaxMASP(masp) + 1;
        String result = masp + newMASP;
        return result;

    }

    // Update dữ liệu cho smartphone
    public void updateSmartphone(String masp, String ten_san_pham,
                                 int gia, String ngay_ra_mat, int gia_khuyen_mai, String hinh_mo_ta_1,
                                 String mau, String hinh_mo_ta_2, String hinh_mo_ta_3, String thuong_hieu,
                                 String man_hinh, String kich_thuoc_man_hinh, String he_dieu_hanh,
                                 String cpu, String camera_truoc, String camera_sau, String bo_nho,
                                 String ram, String the_sim, String pin, String mo_ta_1, String mo_ta_2, String mo_ta_3, int so_luong) {
        try {
            Connection con = ConnectionDB.getConnection();
            String sql = "update smart_phone set ten_san_pham = ?, gia = ?, ngay_ra_mat = ?, gia_khuyen_mai = ?, hinh_mo_ta_1 = ?, mau = ?, hinh_mo_ta_2 = ?, hinh_mo_ta_3 = ?, thuong_hieu = ?, man_hinh = ?, kich_thuoc_man_hinh = ?, he_dieu_hanh = ?, cpu = ?, camera_truoc = ?, camera_sau = ?, bo_nho = ?, ram = ?, the_sim = ?, pin = ?, mo_ta_1 = ?, mo_ta_2 = ?, mo_ta_3 = ?, so_luong = ?  where masp = ? ";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ten_san_pham);
            ps.setInt(2, gia);
            ps.setString(3, ngay_ra_mat);
            ps.setInt(4, gia_khuyen_mai);
            ps.setString(5, hinh_mo_ta_1);
            ps.setString(6, mau);
            ps.setString(7, hinh_mo_ta_2);
            ps.setString(8, hinh_mo_ta_3);
            ps.setString(9, thuong_hieu);
            ps.setString(10, man_hinh);
            ps.setString(11, kich_thuoc_man_hinh);
            ps.setString(12, he_dieu_hanh);
            ps.setString(13, cpu);
            ps.setString(14, camera_truoc);
            ps.setString(15, camera_sau);
            ps.setString(16, bo_nho);
            ps.setString(17, ram);
            ps.setString(18, the_sim);
            ps.setString(19, pin);
            ps.setString(20, mo_ta_1);
            ps.setString(21, mo_ta_2);
            ps.setString(22, mo_ta_3);
            ps.setInt(23, so_luong);
            ps.setString(24, masp);
            ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Smartphone getSmartphoneByMasp(String masp) {
        Smartphone smartphone = null;
        try {
            Connection con = ConnectionDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from SMART_PHONE where masp like ?");
            ps.setString(1, masp);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                smartphone = new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                );
            }
            return smartphone;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    //     xoa san pham
    public void deleteSmartphone(String masp) {
        try {
            Connection con = ConnectionDB.getConnection();
            String sql = "delete from smart_phone where masp = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public boolean check(Smartphone s, List<Smartphone> list) {
        boolean result = false;
        for (Smartphone sm : list) {
            if (sm.getMasp().equals(s.getMasp()))
                result = true;
        }
        return result;
    }

    //    Tạo ra danh sách sản phẩm dưa vào từ khóa tìm kiếm
    public List<Smartphone> getSmartPhoneByName(String ten_san_pham) throws SQLException, ClassNotFoundException {
        Connection con = ConnectionDB.getConnection();
        Smartphone sm = null;
        List<Smartphone> list = new ArrayList<Smartphone>();
        String[] array = ten_san_pham.split(" ");
        ResultSet rs = null;
        for (String s : array) {
            String sql = "select * from smart_phone where ten_san_pham like ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + s + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                sm = new Smartphone(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getString(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22),
                        rs.getString(23),
                        rs.getInt(24)
                );
                if (check(sm, list) == false)
                    list.add(sm);
            }
        }
        return list;
    }


    //    Danh sách sản phẩm mới ra mắt với số lượng nhất định
    public List<Smartphone> listSortByDate(int size) throws SQLException, ClassNotFoundException {
        List<Smartphone> list = getAllSmartphone();
        List<Smartphone> newList = new ArrayList<>();
        Collections.sort(list, new Comparator<Smartphone>() {
            @Override
            public int compare(Smartphone o1, Smartphone o2) {
                return o1.getNgay_ra_mat().compareTo(o2.getNgay_ra_mat());
            }
        });
        for (int i = 0; i < size; i++) {
            newList.add(list.get(i));
        }
        return newList;
    }
    //  tạo danh sach sản phẩm được sắp theo giá khuyến
    public List<Smartphone> listSortByPrice(int size) throws SQLException, ClassNotFoundException {
        List<Smartphone> list = getAllSmartphone();
        List<Smartphone> newList = new ArrayList<>();
        Collections.sort(list, new Comparator<Smartphone>() {
            @Override
            public int compare(Smartphone o1, Smartphone o2) {
                int price1 = o1.getGia() - o1.getGia_khuyen_mai();
                String p1 = String.valueOf(price1);
                int price2 = o2.getGia() - o2.getGia_khuyen_mai();
                String p2 = String.valueOf(price2);
                return p1.compareTo(p2);
            }
        });
        for (int i = 0; i < size; i++) {
            newList.add(list.get(i));
        }
        return newList;
    }

    public static void main(String[] args) throws Exception {

        SmartphoneEntity se = new SmartphoneEntity();
//        System.out.println(se.getSmartphoneByMasp("ip0003"));
//        se.createSmartphone("ip", "iphone moi", 123, "22/23/2001", 12, "111", "222", "333", "vang", "apple", "6.8", "6.7", "ios", "a16", "12", "34", "512", "12", "qwe", "12345", "777", "888", "99", 9);
//        se.updateSmartphone("ip21", "xxxxxx ssss  samsung", 123, "22/23/2001", 12, "111", "222", "333", "vang", "apple", "6.8", "6.7", "ios", "a16", "12", "34", "512", "12", "qwe", "12345", "777", "888", "99", 900);
//        se.deleteSmartphone("ip20");
//        System.out.println(se.sortByDate("ip", 7).size());
//        System.out.println(se.sortByPrice(5).get(0));
        System.out.println(se.getAllIphone().get(1).getHinh_mo_ta_1());
    }


}