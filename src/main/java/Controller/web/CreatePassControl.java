package Controller.web;

import Model.Account;
import Model.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/CreatePassControl")
public class CreatePassControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("ten_dang_nhap");
        String password = request.getParameter("mat_khau_1");
        AccountEntity pe = new AccountEntity();
        pe.editpass(username, password);
        request.getRequestDispatcher("View/web/createnewpass.jsp").forward(request,response);
    }



}
