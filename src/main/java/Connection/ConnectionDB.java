package Connection;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB<a> {
    static Connection con;

    static {
        try {
            con = getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public ConnectionDB() throws SQLException, ClassNotFoundException {
    }

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroupWeb", "root", "");
            return con.createStatement();

        } else {
            return con.createStatement();
        }
    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/GroupWeb", "root", "");

    }

    public static PreparedStatement connect(String sql) throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/GroupWeb?useUnicode=true&characterEncoding=utf-8","root","");
            return con.prepareStatement(sql);
        }
        else {
            return con.prepareStatement(sql);
        }

    }

    public static void main(String[] args) throws Exception {
        String ten_dang_nhap = "khang";
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement("select * from account where ten_dang_nhap like 'khang' ");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            System.out.println(rs.getString("ho_va_ten"));
        }

    }


//        String img = "111233";
//        String name = "111233";
//        String price = "111233";
//        String priceSale = "1112333";
//
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroupWeb", "root", "");
//        PreparedStatement pst = conn.prepareStatement("insert into "
//                + "test(id, img, name, price, priceSale) values(?,?,?,?,?)");

//             PreparedStatement pst = conn.prepareStatement("select * from smart_phone where id like ?");

//        pst.setString(1, id);
//        pst.setString(2, img);
//        pst.setString(3, name);
//        pst.setString(4, price);
//        pst.setString(5, priceSale);
//        pst.executeUpdate();

//        Statement s = ConnectionIphone.connect();
//        ResultSet rs = s.executeQuery("select * from test  ");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()) {
//            System.out.println(rs.getString(1));
//        }

//    String a = "ip0001";
//     Connection conn = getConnection();
//     String sql = "select * from smart_phone where id like ?";
//     PreparedStatement pst = conn.prepareStatement("select * from smart_phone where id like ?");
//     ps.setString(1, a)
}
