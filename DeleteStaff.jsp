<%-- 
    Document   : DeleteStaff
    Created on : May 23, 2022, 4:10:09 PM
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image" href="images/logo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>DELETE STAFF / PhoenixAirline</title>
    
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
                    <span>DELETE STAFF</span>
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
                    <h2>DELETE STAFF</h2>
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
    <div class="tickets">
    <div class="card">
        <div class="card-header"> 
             <h3>SEARCH THE STAFF MEMBER FOR DELETE</h3>
        </div>
        <div class="card-body">
             
            <table width="100%">
            <tr>
            <td>Staff ID</td>
            <td>Staff Name</td>
            <td>NIC</td>
            <td>Contact</td>
            <td>Gender</td>
            <td>Username</td>
            <td>Password</td>
            <td>Action</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from staff";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
            %>
            <tr>
            <td><%=resultSet.getString("staffid") %></td>
            <td><%=resultSet.getString("staffname") %></td>
            <td><%=resultSet.getString("nic") %></td>
            <td><%=resultSet.getString("contact") %></td>
            <td><%=resultSet.getString("gender") %></td>
            <td><%=resultSet.getString("username") %></td>
            <td><%=resultSet.getString("password") %></td>
            <td><a href="DS.jsp?id=<%=resultSet.getString("id") %>"><button type="button"  class="delete">Delete</button></a></td>
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

<!--END TICKETS IS HRE-->

</body>
</html>
