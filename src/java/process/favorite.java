package process;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author aayus
 */
@WebServlet(name = "registerProcess", urlPatterns = {"/registerProcess"})
public class favorite extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");
            String resturant_name = request.getParameter("restuName");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/food_hunt", "root", "");
                String sql = "Insert Into favorites Values(?,?);";
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString(1, id);
                stm.setString(2, resturant_name);
                int count = stm.executeUpdate();
                con.close();
                if (count != 0) {
                    out.println("<script>alert('Added To Favorite');</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("homePage.jsp");
                    rd.include(request, response);
                } else {
                    out.println("<script>alert('Already exist in Favorite');</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("homePage.jsp");
                    rd.include(request, response);
                }

            } catch (Exception e) {
                out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("homePage.jsp");
                rd.include(request, response);
            }

        }
    }
}
