package Controller.admin;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "SearchSmartphone", value = "/SearchSmartphone")
public class SearchSmartphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ten_san_pham = request.getParameter("tim_kiem");
        SmartphoneEntity se = new SmartphoneEntity();
        Collection<Smartphone> values = null;
        try {
            values = se.getSmartPhoneByName(ten_san_pham);
            request.setAttribute("data", values);
            request.getRequestDispatcher("View/web/smartphone.jsp").forward(request, response);
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
