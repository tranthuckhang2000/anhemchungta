package Controller.admin;

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
        System.out.println(ten_dang_nhap);
        String mat_khau = request.getParameter("mat_khau");
        Account ac = null;
        AccountEntity ae = new AccountEntity();
        ac = ae.login(ten_dang_nhap, mat_khau);
        if (ac != null) {
            HttpSession session = request.getSession();
            session.setAttribute("acc", ac);
            session.setMaxInactiveInterval(1000);
            request.setAttribute("mess", "okeee");
            request.getRequestDispatcher("Iphone").forward(request, response);


        } else {
//            request.getRequestDispatcher("login").forward(request, response);
            response.sendRedirect("login");
//            rec
        }
//        doGet(request, response);

    }
}