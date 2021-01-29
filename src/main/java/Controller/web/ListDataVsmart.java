package Controller.web;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(urlPatterns = "/Vsmart")
public class ListDataVsmart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SmartphoneEntity ie = new SmartphoneEntity();
        Collection<Smartphone> values = ie.getAllVsmart();
        System.out.println(values);
        request.setAttribute("data", values);
        request.getRequestDispatcher("View/web/smartphone.jsp").forward(request, response);
    }
}


