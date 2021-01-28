//package Controller.admin;
//
//import Model.AccountEntity;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.SQLException;
//
//@WebServlet(name = "Logup", value = "/dologup")
//public class Logup extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        try {
//            AccountEntity ae = new AccountEntity();
//            String ten_dang_nhap = request.getParameter("ten_dang_nhap");
//            String ho_va_ten = request.getParameter("ho_va_ten");
//            String gmail = request.getParameter("gmail");
//            String mat_khau_1 = request.getParameter("mat_khau_1");
//            String mat_khau_2 = request.getParameter("mat_khau_2");
//
//            System.out.println(ae.checkAccountForUsername(ten_dang_nhap));
//            System.out.println(ae.checkAccountForGmail(gmail));
//            System.out.println(mat_khau_1);
//            System.out.println(mat_khau_2);
//            if (ae.checkAccountForUsername(ten_dang_nhap) == true && mat_khau_1.equals(mat_khau_2) && ae.checkAccountForGmail(gmail) == true) {
//                ae.createAccount(ten_dang_nhap, gmail, mat_khau_1, ho_va_ten);
//                request.getRequestDispatcher("Iphone").forward(request, response);
//            } else {
//                if (mat_khau_1.equals(mat_khau_2)) ;
//                request.setAttribute("mess", "sai cmnr");
//                request.setAttribute("mat_khau", "Mật khẩu  không trùng nhau");
//                if (ae.checkAccountForUsername(ten_dang_nhap) == false)
//                   request.setAttribute("ten_dang_nhap", "Tên đăng nhập đã tồn tại");
//                if (ae.checkAccountForGmail(gmail) == false) ;
//                request.setAttribute("gmail", "Email đã tồn tại");
//                request.setAttribute("dang-ky-khong-thanh-cong", "Đăng ký không thành công");
//                request.setAttribute("mess", "ocdb");
//                response.sendRedirect("logup");
//
//            }
//
//
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//}
