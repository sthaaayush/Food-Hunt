<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Food Hunt</title>   
        <link rel="stylesheet" href="homePageStyle.css">
        <link rel="icon" href="./imgs/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--  yo chai cdnjs website bata link leko icon haru rakhnu ko lagi  such as search ko icon rakheko-->
        <!-- yo chai kind ko library ho icon haru use garnu lai -->
    </head>
    <body>
        <section id="Home">

            <nav>
                <div class="logo">
                    <img src="./imgs/logo.png">
                </div>
                <ul>
                    <li><a href="#Home" >Home</a></li>
                    <li><a href="#About" >About</a></li>
                    <li><a href="#Menu" >Menu</a></li>
                    <li><a href="#Review"> Review</a></li>
                    <li><a href="#Login" >Login</a></li>
                </ul>

                <div class="icon">
                    <i class="fa-sharp fa-solid fa-magnifying-glass" style="color: rgb(238, 134, 36);"></i>
                    <!-- fa-search vaneko chai search icon rakhkeo  -->
                    <button class="fa-regular fa-heart myButtton"style="color: rgb(238,134,36);" id="myButtton" onclick="toggleVisibility()"></button>

                    <i class="fa-solid fa-cart-shopping" style="color: rgb(238,134,36);"></i>      
                </div>
            </nav>
            <div class="favContainer" id="myDiv" style="display: none">
                <h4>Your Favorite</h4>
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/food_hunt", "root", "");
                        String sql = "Select * From favorites;";
                        PreparedStatement stm = con.prepareStatement(sql);
                        ResultSet rs = stm.executeQuery();
                        while (rs.next()) {
                            String id = rs.getString("resturant_id");

                %>
                <div class="content">
                    <b><%= rs.getString("resturant_name")%></b>
                    <br>
                    djdjsjdnlddfn dfkd fdjfjflnikfd jdfsdffksdnf<br>
                    djdjsjdnlddfn dfkd fdjfjflnikfd jdfsdffksdnf<br>
                    djdjsjdnlddfn dfkd fdjfjflnikfd jdfsdffksdnf<br>
                    <a style="font-size:15px" href="deletingFav.jsp?id=<%= id%>"><i class="fa fa-trash-o dustbin"></i></a>
                </div>
                <%                        }
                        con.close();
                    } catch (Exception e) {

                    }
                %>
            </div>
            <script>
                const div = document.getElementById("myDiv");
                const button = document.getElementById("myButton");
                function toggleVisibility() {
                    if (div.style.display === "none") {
                        div.style.display = "inline";
                    } else {
                        div.style.display = "none";
                    }
                }
                button.addEventListener("click", toggleVisibility);

            </script>

            <div class="main">
                <div class="men_text">
                    <h1> Get Fresh <span> Food</span><br> in a Easy way</h1>
                </div>
                <div class="main_image">
                    <img src="./imgs/mm.png">
                </div>   
            </div>

            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Ipsam sapiente aliquam debitis totam provident! Repellat excepturi ea
                nihil voluptas veniam ratione quos? Laboriosam beatae eligendi voluptatibus, error cupiditate 
                consequuntur praesentium.Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequuntur obcaecati iste blanditiis eos,
                facilis quisquam ipsam cumque unde repudiandae odit perspiciatis nisi nostrum pariatur
                quod itaque fuga id delectus necessitatibus!
            </p>

            <div class="main_btn">
                <a href="#">Explore</a>
                <i class="fa-solid fa-angle-right"></i>
            </div>
        </section>

        <!-- ABOUT -->
        <div class="about" id="About">
            <div class="about_main">

                <div class="image">
                    <img src="./imgs/ab.png">

                </div>

                <div class="about_text">
                    <h1> <span>About</span>Us</h1>
                    <h3>Why Choose Us? </h3>
                    <p>At Food Hunt, we're passionate about bringing the world's culinary treasures to your doorstep. 
                        Our mission is to transform every meal into a global gastronomic adventure by curating a diverse range of 
                        dishes that celebrate flavors from every corner of the world. With a commitment to quality, we collaborate
                        with dedicated chefs and trusted suppliers to ensure that every ingredient is chosen for its authenticity 
                        and freshness.Our seamless platform offers a convenient way to embark on this culinary journey, making it easy
                        to savor exceptional dishes without leaving your home. Beyond the convenience, we cherish the connections that 
                        food fosters, whether it's a solo indulgence, a family gathering, or a virtual feast with friends. As stewards 
                        of the culinary world, we also prioritize sustainability by embracing eco-friendly practices and supporting 
                        local producers.Join us in celebrating the art of food, as Food Hunt becomes your passport to explore, 
                        experience, and enjoy the diverse world of flavors, one delivery at a time.
                    </p><br>
                    <a href="#" class="about_btn">Order now</a>
                </div>
            </div>
        </div>

        <!-- MENU -->


        <div class="menu" id="Menu">
            <h1> Our<span>Menu</span></h1>
            <div class="menu_box">
                <%
                    String shop_name[] = {"Fresh Kathmandu", "Aku Pema Restaurant", "Third Eye Restaurant",
                        "Agan", "Khaja Ghar", "Bota Momo", "Pumpernickel Bakery", "Tandoori House"};
                    String resturant_name[] = {"resturant1.jsp", "resturant2.jsp", "resturant1.jsp", "resturant2.jsp",
                        "resturant1.jsp", "resturant2.jsp", "resturant1.jsp", "resturant2.jsp"};
                    for (int i = 0; i < 8; i++) {
                %>
                <div class="menu_card">

                    <div class="menu_image">
                        <img src="<%out.write("./imgs/menu" + (i + 1) + ".png");%>"%>
                    </div>
                    <div class="small_card">   
                        <!-- heart ko shape -->
                        <i >
                            <form action="favSelect" method="post">
                                <input type="hidden" name="restuName" value="<%= shop_name[i]%>">
                                <input type="hidden" name="id" value="<%= "0" + (i + 1)%>">
                                <input type="submit" value="&hearts;" class="submit-button">
                            </form>
                        </i>
                    </div>
                    <div class="menu_info">
                        <h2><%=shop_name[i]%></h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                            Consequatur non asperiores minus rerum iste ex. Aliquid 
                            corporis neque necessitatibus? 
                        </p>
                        <div class="menu_icon">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star-half-stroke"></i>
                        </div>
                        <a href="<%out.write(resturant_name[i]);%>" class="menu_btn">Order Now </a>
                    </div>
                </div>
                <% }%>
            </div>
        </div>



        <!-- Review -->

        <div class="review" id="Review">
            <h1>Customer <span>Review</span></h1> 
            <div class="review_box">
                <%
                    String reviewer_name[] = {"Rima Pradhan", "Roshan Shrestha", "Roshan Shrestha"};
                    for (int i = 0; i < 3; i++) {
                %>
                <div class="review_card">
                    <div class="review_profile">
                        <img src=<%out.write("./imgs/rv" + (i + 1) + ".png");%> >
                    </div>

                    <div class="review_text">
                        <h2 class="name"><%=reviewer_name[i]%></h2>

                        <div class="review_icon">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star-half-stroke"></i>
                        </div>
                        <div class="review_social">
                            <i class="fa-brands fa-facebook"></i>
                            <i class="fa-brands fa-instagram"></i>
                            <i class="fa-brands fa-twitter"></i>
                        </div>
                        <p>
                            As a self-proclaimed baking enthusiast, Food Hunt's bakery options have me hooked. 
                            The variety of fresh bread, pastries, and desserts available is a dream come true.
                            I can now relish croissants that rival those from my favorite local bakery, all while wearing my pajamas. 
                            It's as if the best bakeries have opened their doors exclusively for me, and I couldn't be happier!
                        </p>
                    </div>
                </div>
                <%}%>
            </div>
        </div>

        <!-- Login -->
        <div class="login" id="Login">
            <h1><span>Login</span>Now</h1>

            <div class="login_main">
                <div class="login_image">
                    <img src="./imgs/login.jpeg">

                </div>
            </div>
            <a href="#" class="login_btn">Login Now </a>

        </div>


        <!-- footer -->
        <footer>
            <div class="footer_main">
                <div class="footer_tag">
                    <h2>Location</h2>
                    <p>Kathmandu</p>
                    <p>Dharan</p>
                    <p>Pokhara</p>
                </div>

                <div class="footer_tag">
                    <h2>Contact</h2>
                    <p>+977 987654667</p>
                    <p>+977 963555636</p>
                    <p>foodhub12@gmail.com</p>
                </div>
                <div class="footer_tag">
                    <h2>Our Service</h2>
                    <p>Fast Delivery</p>
                    <p>Easy Payment</p>
                    <p>24*7 Service</p>
                </div>

                <div class="footer_tag">
                    <h2> Follows us </h2>
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-tiktok"></i>
                </div>
            </div>
        </footer>
    </body>
</html>