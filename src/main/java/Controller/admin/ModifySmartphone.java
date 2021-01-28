package Controller.admin;

import Model.Smartphone;
import Model.SmartphoneEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifySmartphone", value = "/ModifySmartphone")
public class ModifySmartphone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String masp = request.getParameter("idProduct");
        SmartphoneEntity se = new SmartphoneEntity();
        Smartphone smartphone = se.getSmartphoneByMasp(masp);
        request.setAttribute("d", smartphone);
        request.setAttribute("masp", masp);
        request.getRequestDispatcher("View/admin/modifysmartphone.jsp").forward(request, response);
    }

}
