package process;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author aayus
 */
@WebServlet(name = "registerProcess", urlPatterns = {"/registerProcess"})
public class favorite extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println ("<script>alert('Added To Favorite');</script>");
            RequestDispatcher rd=request.getRequestDispatcher("homePage.jsp");
            rd.include(request, response);
        }
    }
}
