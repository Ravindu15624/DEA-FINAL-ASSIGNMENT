<%-- 
    Document   : UserProfile
    Created on : May 22, 2022, 7:20:16 PM
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
    <link rel="shortcut icon" type="image" href="images/logo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>USER PROFILE / PhoenixAirline</title>
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
                    <span>PROFILE</span>
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
                  
                 </h2>
                 <!-- search wrapper was hear-->
                 <div>
                    <h2>USER PROFILE</h2>
                 </div>
                 <div class="user-wrapper">
                     <img src="images/user.webp" height="50px" width="50px" alt="">
                 </div>
             </header>
        
    <!-- Card Section-->
    <main>
    <!--End Card Section-->  


    <!--flight Section-->  

<!--FLIGHTS HERE-->


<!--TICKETS IS HERE-->
<div class="recent-grid">
    <div class="flights">
    <div class="card">
        <div class="card-header"> 
             <h3>YOUR ACCOUNT</h3>
                
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
            <td>Action</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from client where username='rd@gmail.com'";
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
            <td><button type="button"  class="delete">Update</button></td>
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

<div class="recent-grid">
    <div class="tickets">
    <div class="card">
        <div class="card-header"> 
             <h3>TICKETS</h3>
                
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
            String sql ="select * from ticket where flightid='F02'";
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

</body>
</html>
