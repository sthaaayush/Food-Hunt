<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="orderPlaced.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Order</title>
    </head>

    <body>
        <div class="container">
            <div class="box1">
                <%
                    String displayVal = "";
                %>
                <%
                    String resturant_name = request.getParameter("restuName");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String number = request.getParameter("number");
                    String qty = request.getParameter("quantity");
                    String food = request.getParameter("food");
                    String address = request.getParameter("address");
                    String price = request.getParameter("price");
                    String fileName = "./" + request.getParameter("fileName");
                    if (name.equals("") || email.equals("") || number.equals("") || qty.equals("") || food.equals("") || address.equals("")) {
                        displayVal = "<h1>Order Field should be fill Properly</h1>";
                    } else {
                        if (name.matches("^[A-Za-z][A-Za-z ]{2,29}$")) {
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/food_hunt", "root", "");
                                String sql = "Insert Into orders Values(?,?,?,?,?,?,?,?,?);";
                                PreparedStatement stm = con.prepareStatement(sql);
                                stm.setInt(1, 0);
                                stm.setString(2, resturant_name);
                                stm.setString(3, name);
                                stm.setString(4, email);
                                stm.setString(5, number);
                                stm.setString(6, qty);
                                stm.setString(7, price);
                                stm.setString(8, food);
                                stm.setString(9, address);
                                stm.executeUpdate();
                                con.close();
                                displayVal = "<h1>Order Placed Sucessfully</h1>";
                            } catch (Exception e) {
                                displayVal = "<h1>('Error: " + e.getMessage() + "');</h1>";
                            }
                        } else {
                            displayVal = "<h1>Invalid name</h1>";
                        }
                    }
                %>
                <div class="context"><%= displayVal %></div>
                <div class="button"><a href="<%= fileName %>">Done</a></div>
            </div>
        </div>
    </body>

</html>