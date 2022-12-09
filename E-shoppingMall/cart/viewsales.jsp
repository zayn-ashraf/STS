<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shopping Cart</title>
<%@page import="java.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
     <script type="text/javascript" src="script/calendarDateInput.js"></script>
</head>

<body>
<div id="wrap">

<div id="header">
    <br>
<h2>Online Shopping</h2>
<h2></h2>
</div>

<div id="top"> </div>
<div id="contentt">
<div id="headermenu">
<div class="headerm">
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href="about.jsp">About Us</a></li>
<li><a href="contact.jsp">Contact US</a></li>
<%if(session.getAttribute("user")!=null){%>
<li><a href="#">Welcome, <%=session.getAttribute("user")%></a></li>
 <%}else{%>
<li><a href="registration.jsp">Register</a></li>
<li><a href="login.jsp">Sign In</a></li>
<%}%>
<li><a href="viewcart.jsp">Cart</a></li>
</ul>
</div>
</div>

<div class="left">
<h2>Categories :</h2>
<ul>
<li><a href="viewproducts.jsp?cid=1">Automobiles</a></li>
<li><a href="viewproducts.jsp?cid=2">Electornics & Computers</a></li>
<li><a href="viewproducts.jsp?cid=3">Home Appliances</a></li>
<li><a href="viewproducts.jsp?cid=4">Jewellery</a></li>

<li><a href="viewproducts.jsp?cid=5">Moblies & Cameras</a></li>
<li><a href="viewproducts.jsp?cid=6">Toys & Gifts</a></li>
</ul>

 <img src="images/7.gif" width="150">
</div>

<div class="middle">
<br>


    <table width="100%">
        <tr bgColor=#e4f3f9 ><td width="100%" colspan="5"><b>Sales Report</b></td></tr>
        <tr><td>Customer Name</td><td>Product Name</td><td>Price</td><td>Quantity</td><td>Total</td></tr>
    <%
    ResultSet rs=null;
    try{

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingcart","root","root");

          Statement st=con.createStatement();
        rs=st.executeQuery("select uname,pname,price,qty,total from shoppingcart.salesreport s,shoppingcart.users u where s.uid=u.uid");
        while(rs.next()){
       %>
        
         <tr>   <td><%=rs.getString(1)%></td> <td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td> <td><%=rs.getString(5)%></td>
         </tr>
       



   <%}
    }catch(Exception e){
            e.printStackTrace();
            }
        %>
       
    </table>


<br><br><br>
    
</div>

<div class="right">
<h2>Advertisements</h2>

</div>

<div style="clear: both;"> </div>

</div>
<div id="bottom"> </div>
<div id="footer">

</div>

</div>
</body>
</html>