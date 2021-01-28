package Controller.web;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;

@WebServlet(name = "Home", value = "/Home")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SmartphoneEntity ie = new SmartphoneEntity();
        try {
            Collection<Smartphone> values1 = ie.listSortByPrice(5);
            Collection<Smartphone> values2 = ie.listSortByDate(5);

            request.setAttribute("new_product", values2);
            request.setAttribute("best_price_product", values1);
            request.getRequestDispatcher("View/web/index.jsp").forward(request, response);
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
