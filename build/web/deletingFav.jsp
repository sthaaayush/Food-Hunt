<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleting</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/food_hunt", "root", "");
                String sql="Delete From favorites where resturant_id="+id+";";
                PreparedStatement stm= con.prepareStatement(sql);
                stm.executeUpdate();
                con.close();
                RequestDispatcher rd=request.getRequestDispatcher("homePage.jsp");
                rd.forward(request, response);
            } catch (Exception e) {
                out.write(e.getMessage());
            }
        %>
    </body>
</html>
