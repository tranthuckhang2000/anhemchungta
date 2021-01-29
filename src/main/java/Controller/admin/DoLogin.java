package Controller.admin;

import Controller.web.SessionUtil;
import Model.Account;
import Model.AccountEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/login")
public class DoLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/View/web/login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ten_dang_nhap = request.getParameter("ten_dang_nhap");
        String mat_khau = request.getParameter("mat_khau");
        Account ac = null;
        AccountEntity ae = new AccountEntity();
        ac = ae.login(ten_dang_nhap, mat_khau);
        if (ac != null) {
            SessionUtil.getInstance().putValue(request, "acc", ac);
            if(ac.getQuyen_truy_cap() == 0)
                request.getRequestDispatcher("Iphone").forward(request, response);
            if(ac.getQuyen_truy_cap() == 1)
                request.getRequestDispatcher("Managent_Product").forward(request, response);
        } else {
//            request.getRequestDispatcher("login").forward(request, response);
            response.sendRedirect("login");
//            rec
        }
//        doGet(request, response);
    }
}