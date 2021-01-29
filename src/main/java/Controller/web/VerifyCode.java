package Controller.web;


import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "VerifyCode", urlPatterns = "/VerifyCode")

public class VerifyCode extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            Account user= (Account) session.getAttribute("authcode");

            String code = request.getParameter("authcode");
            System.out.println(code);

            if(code.equals(user.getKey())){
                request.getRequestDispatcher("CreatePassControl").forward(request,response);
            }else{
                response.sendRedirect("VerifyCode");
            }

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/View/web/verify.jsp").forward(request, response);

    }
}
