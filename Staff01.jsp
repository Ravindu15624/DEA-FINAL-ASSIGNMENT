<%-- 
    Document   : Staff01
    Created on : May 21, 2022, 7:06:51 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "phoenixdb";
        String userid = "root";
        String password = "";
        try {
        Class.forName(driver);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
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
    <link rel="stylesheet" href="css/staff01.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>STAFFG1 / PhoenixAirline</title>
    <link rel="shortcut icon" type="image" href="images/logo.png" />
</head>
<body>
    <!-- Sidebar start-->
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
     
    <div class="sidebar-brand"> 
        <h2><span class="lab la-PHEONIX AIRLINES"></span><span>PHOENIX AIRLINES</span> 
        </h2>
    </div>

    <div class="sidebar-menu">
        <ul>
            <li>  
                <a href="" class="Active"><span class="las la-igloo"></span>
                    <span>DASHBOARD</span>
                </a>
            </li>
            <li>
                <a href=""><span class="las la-fighter-jet"></span>
                    <span>FLIGHT</span>
                </a>
            </li>
            <li>
                <a href=""><span class="las la-sticky-note"></span>
                    <span>TICKETS</span>
                </a>
            </li>
            <li>
                <a href=""><span class="las la-user"></span>
                    <span>ACCOUNTS</span>
                </a>
            </li>
        </ul>
    </div>
    </div>
    <!-- End Sidebar start-->

    <!-- MAIN CONTENT-->
         <div class="main-content">
             <header>
                 <h2>
                    <label for="nav-toggle">
                        <span class="las la-bars"></span>
                    </label>
                   DASHBOARD
                 </h2>
                 <!-- search wrapper was hear-->
                 <div>
                    <h2>STAFF GRADE ONE</h2>
                 </div>
                 <div class="user-wrapper">
                     <img src="images/user.webp" height="50px" width="50px" alt="">
                 </div>
             </header>
        
    <!-- Card Section-->
    <main>
            <div class="Campaign-bottom">
                <div class="Campaign-card">
                    <DIV>
                        <h4>5</h4>
                        <h5>FLIGHTS</h5>
                    </DIV>
                    <div>
                        <span class="las la-fighter-jet"></span>
                    </div>
                </div>

                <div class="Campaign-card">
                    <DIV>
                        <h4>6</h4>
                        <h5>TICKETS</h5>
                    </DIV>
                    <div>
                        <span class="las la-sticky-note"></span>
                    </div>
                </div>

                <div class="Campaign-card">
                    <DIV>
                        <h4>7</h4>
                        <h5>USER ONLINE</h5>
                    </DIV>
                    <div>
                        <span class="las la-users"></span>
                    </div>
               </div>

               <div class="Campaign-card">
                <DIV>
                    <h4>7</h4>
                    <h5>ACCOUNTS</h5>
                </DIV>
                <div>
                    <span class="las la-user-circle"></span>
                </div>
        </div>
        </div>
    <!--End Card Section-->  


    <!--flight Section-->  

    <div class="recent-grid">
         <div class="flights">
         <div class="card">
             <div class="card-header"> 
                  <h3>FLIGHTS</h3>
                  <a href="AddFlight.jsp"><Button>ADD</Button></a>
                  <a href="UpdateFlight.jsp"><Button>UPDATE</Button></a>
                  <a href="DeleteFlight.jsp"><Button>DELETE</Button></a>
                     
             </div>
             <div class="card-body">
                 <table width="100%">
            <tr>
            <td>Flight ID</td>
            <td>Flight Name</td>
            <td>Country</td>
            <td>Seats</td>
            <td>Package</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from flight";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
            %>
            <tr>
            <td><%=resultSet.getString("flightid") %></td>
            <td><%=resultSet.getString("flightname") %></td>
            <td><%=resultSet.getString("country") %></td>
            <td><%=resultSet.getString("seats") %></td>
            <td><%=resultSet.getString("package") %></td>
            </tr>
            <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>
             </div>
         </div>
         </div>
<!--FLIGHTS HERE-->


<!--TICKETS IS HERE-->

<div class="recent-grid">
    <div class="tickets">
    <div class="card">
        <div class="card-header"> 
             <h3>TICKETS</h3>
             <a href="UpdateFlight.jsp"><Button>UPDATE</Button></a>
             <a href="DeleteTicket.jsp"><Button>DELETE</Button></a>
                
        </div>
        <div class="card-body">
            <table width="100%">
            <tr>
            <td>Ticket ID</td>
            <td>Date</td>
            <td>Time</td>
            <td>Arrival</td>
            <td>Departure</td>
            <td>Flight ID</td>
            <td>Passengers</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from ticket";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
            %>
            <tr>
            <td><%=resultSet.getString("ticketid") %></td>
            <td><%=resultSet.getString("date") %></td>
            <td><%=resultSet.getString("time") %></td>
            <td><%=resultSet.getString("arrival") %></td>
            <td><%=resultSet.getString("depature") %></td>
            <td><%=resultSet.getString("flightid") %></td>
            <td><%=resultSet.getString("passengers") %></td>
            </tr>
            <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>
        </div>
    </div>
    </div>

<!--END TICKETS IS HRE-->


<!--user account IS HRE-->

<div class="recent-grid">
    <div class="flights">
    <div class="card">
        <div class="card-header"> 
             <h3>USER ACCOUNTS</h3>
             <a href="UpdateClient.jsp"><Button>UPDATE</Button></a>
             <a href="DeleteClient.jsp"><Button>DELETE</Button></a>
                
        </div>
        <div class="card-body">
            <table width="100%">
            <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>NIC</td>
            <td>Contact</td>
            <td>Gender</td>
            <td>Country</td>
            <td>Username</td>
            <td>Password</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from client";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
            %>
            <tr>
            <td><%=resultSet.getString("firstname") %></td>
            <td><%=resultSet.getString("lastname") %></td>
            <td><%=resultSet.getString("nic") %></td>
            <td><%=resultSet.getString("contact") %></td>
            <td><%=resultSet.getString("gender") %></td>
            <td><%=resultSet.getString("country") %></td>
            <td><%=resultSet.getString("username") %></td>
            <td><%=resultSet.getString("password") %></td>
            </tr>
            <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>
        </div>
    </div>
    </div>
    
</body>
</html>
