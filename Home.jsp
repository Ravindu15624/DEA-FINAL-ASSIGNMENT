<%-- 
    Document   : Home
    Created on : May 21, 2022, 7:05:50 PM
    Author     : Ravindu
--%>



<!DOCTYPE html>
<html lang="en">

    <head>
        <%
            String user=(String)session.getAttribute("name");
            if(user==null)
            {
                response.sendRedirect("Login.jsp");
                return;
            }
            %>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME / PhoenixAirline</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Supermercado+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="shortcut icon" type="image" href="images/logo.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <section class="sec">

        <header>
            <div class="container1">
                <nav class="navcheckbox">
                   <!---<a href="#" class="logo"></a>
                   -->
                       <div class="phenx"> 
                        <h2>Phoenix Airline</h2>
                        <small>Travel like a Phoenix</small> 
                       </div>
                    
                    <input type="checkbox" id="tabnav" class="tabnav">
                    <label for="tabnav" class="label">
                        <div class="burger"></div>
                        <div class="burger"></div>
                        <div class="burger"></div>

                    </label>
                    <ul class="contentnav">
                        <li><a href="#">Home</a></li>
                        <li><a href="UserProfile.jsp">Profile</a></li>
                        <li><a href="#">About us</a></li>
                    
                    </ul>
                    
                </nav>
               
            </div>

        </header>
        
        <div class="three">
        

         <class="pic">

            <div class="row">
                <div class="pic-column">
                    <a href="Flight.jsp"><img src="images/1.jpg" alt=""></a>
                    <a href="Flight.jsp"><h2 style="color:white;" >CHECK FLIGHT</h2></a>
                </div>
                <div class="pic-column">
                    <a href="AddTicket.jsp"><img src="images/2.jpg" alt=""></a>
                    <a href="AddTicket.jsp"><h2 style="color:white;" >BOOK TICKET</h2></a>
                </div>

            </div>

        </class>
        </div>
    
</section>
            <!-- footer area -->
           
            <footer>
                <div class="main-content">
                    <div class="left box">
                        <h2>About us</h2>
                        <div class="content">
                            <p>Pheonix airline &copy; 2022<br>We are a flight support services providing company in Sri Lanka. We specialize in supporting flight operators that fly into the Middle East, Europe, CIS, Africa, Asia, and the Pacific.</p>
                            <div class="social">
                                <a href="#"><span class="fa fa-facebook"></span></a>
                                <a href="#"><span class="fa fa-twitter"></span></a>
                                <a href="#"><span class="fa fa-instagram"></span></a>
                                <a href="#"><span class="fa fa-youtube"></span></a>
                            </div>
   
   
   
                         </div>
                    </div>
                    <div class="center box">
                        <h2>contact</h2>
                        <div class="content">
                            <div class="place">
                                <span class="fa fa-map-marker"></span>
                                <span class="text">1st Street, Colombo, Sri Lanka</span>
                            </div>
                            <div class="phone">
                               <span class="fa fa-phone "></span>
                               <span class="text">(+94) 11 22 22 500</span>
                           </div>
                           <div class="email">
                               <span class="fa fa-envelope"></span>
                               <span class="text">phoenixairline@gmail.com</span>
                           </div>
                        </div>
                    </div>
                    <div class="right box">
                        <h2>write to us</h2>
                        <div class="content">
                            <form action="Chat" method="POST">
                                <div class="username">
                                    <div class="text">Username *</div>
                                    <input type="text" name="uname" required>
                                </div>
                                <div class="msg">
                                    <div class="text">Message *</div>
                                    <textarea name="msg" rows="2" cols="25" required></textarea>
                                </div>
                                <div class="btn">
                                    <button type="submit">send</button>
                                </div>
                            </form>
                            
                        </div>
   
                    </div>
                </div>



                
            </footer>

        
        </body>
            
    



</html>