package Controller.admin;

import Model.CartEntity;
import Model.Order;
import Model.Smartphone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;

@WebServlet(name = "ManagentOrder", value = "/ManagentOrder")
public class ManagentOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            CartEntity ce = new CartEntity();
            Collection<Order> values = ce.getListOrder();
            request.setAttribute("data", values);
            request.getRequestDispatcher("View/admin/managentorder.jsp").forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
