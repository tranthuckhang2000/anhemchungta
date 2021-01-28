package Controller.admin;

import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteDeleteSmartPhone", value = "/DeleteSmartPhone")
public class DeleteSmartphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String masp = request.getParameter("masp");
        SmartphoneEntity se = new SmartphoneEntity();
        se.deleteSmartphone(masp);
        response.sendRedirect("Managent_Product");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
