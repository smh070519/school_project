package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.HelloDAO;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String rentalNo = request.getParameter("rental_no");
        String custNo = request.getParameter("cust_no");
        String rentalDateStr = request.getParameter("rental_date");
        String equipCode = request.getParameter("equip_code");
        String returnDueStr = request.getParameter("return_due");

        System.out.println("111:"+rentalNo);
        System.out.println("111:"+custNo);
        System.out.println("111:"+rentalDateStr);
        System.out.println("111:"+equipCode);
        System.out.println("111:"+returnDueStr);
        try {
            HelloDAO dao = new HelloDAO();
            dao.insertRental(rentalNo, custNo, rentalDateStr, equipCode, returnDueStr);
            response.sendRedirect("list");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
