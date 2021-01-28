package Controller.admin;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailDelete", value = "/DetailDelete")
public class DetailDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String masp = request.getParameter("idProduct");
            SmartphoneEntity se = new SmartphoneEntity();
            Smartphone smartphone = se.getSmartphoneByMasp(masp);
            request.setAttribute("d", smartphone);
            request.setAttribute("masp", masp);
            request.getRequestDispatcher("View/admin/deletesmartphone.jsp").forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
