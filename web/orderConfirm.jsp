<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="orderConfirm.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Confirming Order</title>
    </head>
    <body>
    <center><h1>Confirm Order</h1></center>
    <div class="container">
        <div class="box1">
            <div class="name">Name<br /></div>
            <div class="email">Email<br /></div>
            <div class="number">Number<br /></div>
            <div class="qty">Quantity<br /></div>
            <div class="order">Order<br /></div>
            <div class="address">Address<br /></div>
            <div class="price">Price<br /></div>
        </div>
        <div class="box2">
            <%if (request.getMethod().equalsIgnoreCase("post")) {
                    String resturant_name = request.getParameter("restuName");
                    String fileName = request.getParameter("fileName");
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String number = request.getParameter("number");
                    String order = request.getParameter("order");
                    String address = request.getParameter("address");
                    String amt=request.getParameter("quantity");
                    int qty = Integer.parseInt(request.getParameter("quantity"));
                    int price=Integer.parseInt(request.getParameter("dishPrice"));
            %>
            <form action="orderPlaced.jsp" method="post">
                <div><input  type="text" name="name"  value="<%= name%>"></div>
                <div><input  type="text" name="email"  value="<%= email%>"></div>
                <div><input  type="text" name="number"  value="<%= number%>"></div>
                <div><input  type="text" name="quantity"  value="<%= amt%>"></div>
                <div><input  type="text" name="food"  value="<%= order%>"></div>
                <div><input  type="text" name="address"  value="<%= address%>"></div>
                <div>Rs.<input  type="text" name="price"  value="<%= (qty*price)%>"></div>
                <input  type="hidden" name="restuName" value="<%= resturant_name%>">
                <input  type="hidden" name="fileName" value="<%= fileName%>">
                <div class="confirmButton"><input type="submit" value="Confirm"></div>
            </form>
            <%}%>
        </div>
    </div>
</body>
</html>
