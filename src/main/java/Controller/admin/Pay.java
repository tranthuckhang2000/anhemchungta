package Controller.admin;

import Controller.web.SessionUtil;
import Model.Account;
import Model.Cart;
import Model.CartEntity;
import Model.CartItem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Pay", value = "/Pay")
public class Pay extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            CartEntity ce = new CartEntity();
            Account acc = (Account) SessionUtil.getInstance().getValue(request, "acc");
            if(acc == null){
//                request.getRequestDispatcher("/login").forward(request, response);
                response.sendRedirect("login");
                return;
            }
            Cart cart = (Cart) SessionUtil.getInstance().getValue(request, "cart");
            if(cart == null){
//                request.getRequestDispatcher("Iphone").forward(request, response);
                response.sendRedirect("Iphone");
                return;
            }
            else{
                String sdt = request.getParameter("sdt");
                System.out.println(sdt);
                String dia_chi = request.getParameter("dia_chi");
                System.out.println(dia_chi);
                String matt = request.getParameter("thanh_toan");
                System.out.println(matt);
                String madh =ce.createNewMADH();
                System.out.println(madh);
                String ngaydat = ce.getNgayDat();
                String ngaygiao = ce.getNgayGiao();
                String matk = acc.getMatk();
                System.out.println(matk);
                int tong_tien = (int) cart.total();
                System.out.println(tong_tien);
                for (CartItem item : cart.getCart().values()){
                    System.out.println(item);
                ce.insertCTDH(item, madh);
                }
                ce.insertDH(madh, matk, matt, ngaydat, ngaygiao, "Đang giao", tong_tien, sdt, dia_chi);
//                request.getRequestDispatcher("/Home").forward(request, response);
                SessionUtil.getInstance().removeValue(request, "cart");
                 response.sendRedirect("Home");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doGet(request, response);
    }
}
