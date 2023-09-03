package process;

import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author aayus
 */
@WebServlet(name = "registerProcess", urlPatterns = {"/registerProcess"})
public class orderProcess extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String resturant_name = request.getParameter("restuName");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String number = request.getParameter("number");
            String qty = request.getParameter("quantity");
            String food = request.getParameter("food");
            String address = request.getParameter("address");
            
            String fileName=request.getParameter("fileName");
            
            if (name.equals("") || email.equals("") || number.equals("") || qty.equals("") || food.equals("") || address.equals("")) {
                out.write("<script>alert('Order Field should be fill Properly');</script>");
                RequestDispatcher rd = request.getRequestDispatcher(fileName);
                rd.include(request, response);
            } else {
                if (name.matches("^[A-Za-z][A-Za-z ]{2,29}$")) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/food_hunt", "root", "");
                        String sql = "Insert Into orders Values(?,?,?,?,?,?,?,?);";
                        PreparedStatement stm = con.prepareStatement(sql);
                        stm.setInt(1, 0);
                        stm.setString(2, resturant_name);
                        stm.setString(3, name);
                        stm.setString(4, email);
                        stm.setString(5, number);
                        stm.setString(6, qty);
                        stm.setString(7, food);
                        stm.setString(8, address);
                        stm.executeUpdate();
                        con.close();
                        out.write("<script>alert('Order Placed Sucessfully');</script>");
                        RequestDispatcher rd = request.getRequestDispatcher(fileName);
                        rd.include(request, response);
                    } catch (Exception e) {
                        out.write("<script>alert('Error: " + e.getMessage() + "');</script>");
                        RequestDispatcher rd = request.getRequestDispatcher(fileName);
                        rd.include(request, response);
                    }
                } else {
                    out.write("<script>alert('Invalid name');</script>");
                    RequestDispatcher rd = request.getRequestDispatcher(fileName);
                    rd.include(request, response);
                }
            }
        }
    }
}
