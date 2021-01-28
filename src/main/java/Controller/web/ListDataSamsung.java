package Controller.web;

import Model.SmartphoneEntity;
import Model.Smartphone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(urlPatterns = "/Samsung")
public class ListDataSamsung extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SmartphoneEntity pe = new SmartphoneEntity();
        Collection<Smartphone> values = pe.getAllSamsung();
        request.setAttribute("data", values);
        request.getRequestDispatcher("View/web/smartphone.jsp").forward(request, response);
    }
}
