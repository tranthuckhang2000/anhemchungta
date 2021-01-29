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
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/UserVerity")
public class UserVerity extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //feth form value
            String name = request.getParameter("username");
            String email = request.getParameter("email");
            //create instance object of the SendEmail Class
            AccountEntity pe = new AccountEntity();
            Account u = pe.checkEmailAndUserName(name, email);
            System.out.println(u);
            if (u != null) {
                Mail sm = new Mail();
                //get the 6-digit code
                String code = sm.getRandom();

                //craete new user using all information
                Account user = new Account(name, email, code);

                //call the send email method
                boolean test = sm.sendEmail(user);

                //check if the email send successfully
                if (test) {
                    HttpSession session = request.getSession();
                    session.setAttribute("authcode", user);
                    response.sendRedirect("VerifyCode");
                } else {
                    out.println("Thất bại trong khi gửi mã tới email");
                }

            } else {
                request.setAttribute("mess1", "Tên đăng nhập hoặc email không đúng");
                request.getRequestDispatcher("View/web/forgotpass.jsp").forward(request,response);
            }
        }



    }
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        processRequest(request, response);

    }
}
