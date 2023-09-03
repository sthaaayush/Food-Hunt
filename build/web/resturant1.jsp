<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width . initial-scale=1.0" />
        <title>Welcome to Tandoori House</title>
        <link rel="stylesheet" href="resturant1.css"/>
        
        <link rel="stylesheet"href="https://cdnresturant1js.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    </head>
    <body>
        <section id="Home">
            <nav>
                <div class="logo">
                    <img src="resturant/r_imgs/tj.jpg" />
                </div>
                <ul>
                    <li><a href="home">Home</a></li>
                    <li><a href="#Menu">Menu</a></li>
                    <li><a href="#Order">Order</a></li>
                    <li><a href="#Review">Review</a></li>
                    <li><a href="#About">About</a></li>
                </ul>
                <div class="icon">
                    <i class="fa fa-search"></i>
                    <i class="fa fa-heart"></i>
                    <i class="fa fa-shopping-cart"></i>
                </div>
            </nav>
            <div class="main">
                <div class="main_txt">
                    <h1>Eat Delicious<span>Tandoori</span><br />Daily</h1>
                </div>
                <div class="main_img">
                    <img src="resturant/r_imgs/r1d3.jpg" />
                </div>
            </div>
            <br />
            <br />

            <p>
                Lorem ipsum dolor, sit amet consectetur adipisicing elit.Quo, dolores
                voluptas alias excepturi vel porro ipsam atque, enim voluptatem, est
                tenetur ullam expedita accusantium quia error pariatur doloribus. Hic,
                repudiandae. Lorem ipsum dolor sit amet, consectetur adipisicing
                elit.Eligendi odit, nisi error tenetur id ullam quidem ea, libero totam
                molestias, cupiditate quae deserunt repudiandae non suscipit fuga ad
                voluptatum dolor. Lorem ipsum dolor sit, amet consectetur adipisicing
                elit. Dignissimos voluptate maiores dolores architecto officiis, et
                possimus sequi! Facere blanditiis, fugit ipsum eos repellendus officiis
                est totam deserunt, minus earum hic!
            </p>

            <div class="main_btn">
                <a href="#">Oder Now</a>
                <i class="fa fa-angle-right"></i>
            </div>
        </section>

        <!--ABOUT-->
        <div class="about" id="About">
            <div class="about_main">
                <div class="image">
                    <img src="resturant/r_imgs/t1.jpg" />
                </div>
                <div class="about_txt">
                    <h1>Our<span>Special</span></h1>
                    <h3>Why Choose Us?</h3>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa a
                        cumque inventore, molestias doloribus qui? Ex, amet.Et hic, soluta
                        esse, aut illo quisquam, sint odit fugit molestiae veritatis ad?
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem
                        inventore aliquid alias incidunt ipsa ab, placeat aut rerum eius
                        deserunt tenetur ut dolor nobis nihil excepturi. Ea porro
                        consequatur libero.
                    </p>
                </div>
            </div>
            <a href="#Order" class="about_btn">Order Now</a>
        </div>
        <!--MENU-->

        <div class="menu" id="Menu">
            <h1>Our <span>Menu</span></h1>

            <div class="menu_box">
                <%
                    String dish_name[] = {"Kebab", "Kebab Set", "Tandoori", "Biryani", "Butter Naan", "Gulab Jamun", "Lassi"};
                    int dish_price[] = {2500, 2000, 1000, 900, 150, 80, 280};
                    for (int i = 0; i < 7; i++) {
                %>
                <div class="menu_card">
                    <div class="menu_image">
                        <img src="resturant/r_imgs/<%="r1d" + (i + 1) + ".jpg"%>" />
                    </div>
                    <div class="small_card">
                        <i class="fa fa-heart"></i>
                    </div>
                    <div class="menu_info">
                        <h2><%=dish_name[i]%></h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus
                            facere quo amet unde consequatur adipisci at quam iste ipsa!
                        </p>
                        <h3><%="Rs." + dish_price[i]%></h3>
                        <div class="menu_icon">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                        </div>
                        <a href="#Order" class="menu_btn">Order Now</a>
                    </div>
                </div>
                <%}%>
            </div>
        </div>

        <!--REVIEW-->
        <div class="review" id="Review">
            <h1>Customer <span>Review</span></h1>
            <div class="review_box">
                <%
                    String reviewer_name[] = {"Jake", "Blake", "Jessi"};
                    for (int i = 0; i < 3; i++) {
                %>
                <div class="review_card">
                    <div class="review_profile">
                        <img src=<%="resturant/r_imgs/r1r" + (i + 1) + ".jpg"%> alt="" />
                    </div>
                    <div class="review_txt">
                        <h2 class="name"><%=reviewer_name[i]%></h2>
                        <div class="review_icon">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half"></i>
                        </div>
                        <div class="review_social">
                            <i class="fa fa-facebook"></i>
                            <i class="fa fa-instagram"></i>
                            <i class="fa fa-twitter"></i>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus
                            explicabo iusto quisquam officiis natus sit rerum dolores hic,
                            consequatur et, dignissimos inventore fugiat quo iste recusandae!
                            Dolorum vel natus optio. Lorem, ipsum dolor sit amet consectetur
                            adipisicing elit. At, asperiores? Cum ea, modi consectetur libero
                            neque fugiat veniam doloremque sapiente, repellendus ab amet
                            voluptate voluptates debitis tempora eos, quae ipsum!
                        </p>
                    </div>
                </div>
                <%}%>
            </div>
        </div>

        <!--ORDER-->

        <div class="order" id="Order">
            <h1><span>Order Now</span></h1>
            <div class="order_main">
                <div class="order_img">
                    <img src="resturant/r_imgs/o.jpg" />
                </div>
                <form action="orderProcess" method='post'>
                    <div class="input">
                        <p>Name</p>
                        <input type="text"  placeholder="Your Name" name='name'/>
                    </div>
                    <div class="input">
                        <p>Email</p>
                        <input type="email" required placeholder="Your Email" name='email'/>
                    </div>
                    <div class="input">
                        <p>Number</p>
                        <input type="text"  placeholder="Your Number" name='number'/>
                    </div>
                    <div class="input">
                        <p>How much</p>
                        <input type="text"  placeholder="Number of orders" name='quantity'/>
                    </div>
                    <div class="input">
                        <p>Your Order</p>
                        <input type="text"  placeholder="Food name" name='food'/>
                    </div>
                    <div class="input">
                        <p>Address</p>
                        <input type="text"  placeholder="Your Address" name='address'/>
                    </div>
                    <input type="hidden" name="restuName" value="Tandoori House">
                    <input type="hidden" name="fileName" value="resturant1.jsp">
                    <input type="submit" value='Order Now' class="order_btn" name='resturant1'>
                </form>
            </div>
        </div>

        <!--FOOTER-->
        <footer>
            <div class="footer_main">
                <div class="footer_tag">
                    <h2>Locations</h2>
                    <p>Kathmandu</p>
                    <p>Pokhara</p>
                    <p>Dharan</p>
                    <p>Chitwan</p>
                </div>
                <div class="footer_tag">
                    <h2>Quick Link</h2>
                    <p>Home</p>
                    <p>About</p>
                    <p>Menu</p>
                    <p>Order</p>
                </div>
                <div class="footer_tag">
                    <h2>Contact</h2>
                    <p>+9779088857461</p>
                    <p>+9779841004454</p>
                    <p>tandoorihouse@gmail.com</p>
                    <p>tchihouse@gmail.com</p>
                </div>
                <div class="footer_tag">
                    <h2>Our Service</h2>
                    <p>Fast Delivery</p>
                    <p>Easy Payment</p>
                    <p>24x7</p>
                </div>
                <div class="footer_tag">
                    <h2>Follows</h2>
                    <i class="fa fa-facebook"></i>
                    <i class="fa fa-instagram"></i>
                    <i class="fa fa-twitter"></i>
                </div>
            </div>
        </footer>
    </body>
</html>
