package Controller.admin;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

@WebServlet(urlPatterns = "/Managent_Product")
public class Managent_Product extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SmartphoneEntity ie = new SmartphoneEntity();
        Collection<Smartphone> values = ie.getAllSmartphone();
        request.setAttribute("data", values);
        request.getRequestDispatcher("View/admin/managentproduct.jsp").forward(request, response);
    }

}
