<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shopping Cart</title>
<%@page import="java.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
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
<li><a href="signout.jsp">Sign Out</a></li>
<%
String utype=session.getAttribute("utype").toString();
%>
<%if(utype.equals("a")){ %>
<li><a href="addProduct.jsp">Add New Product</a></li>


<%}%>


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


<%
if(request.getParameter("cid")!=null){
String cid=request.getParameter("cid");
 ResultSet rs=null;
 try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingcart","root","root");
        PreparedStatement pstmt=con.prepareStatement("select * from shoppingcart.products where cid=?");
        pstmt.setInt(1,Integer.parseInt(cid));
        pstmt.execute();
        rs =pstmt.getResultSet();
    }catch(Exception e){
        e.printStackTrace();
        }
%>


<table>

    <tr>
        <td><b>Shop The Latest Here!!</b></td>
    </tr>
   
    <tr width="100%">
        <table width="100%">
             <% while(rs.next()){

                 String pname=rs.getString("pname");
                 String price=rs.getString("mrp");
                 String dis=rs.getString("discount");
                 String dd="";
                 if(dis.contains("%")){
                 String d[]=dis.split("%");
                 dd=d[0];
                 }
                 %>
            <tr width="100%" bgColor=#e4f3f9>
                <td>
                   <b> <%=pname%> </b>
                </td>
            </tr>
            <%
            String image=rs.getString("imagename");
           
            %>
            <tr width="100%">
                <td><img src="cartimages/<%=image%>"></td>
               <td> <b> Brand: &nbsp;</b>
                <b><%=rs.getString("brand")%></b><br>  

                <b>Price: &nbsp;</b> <b><%=price%></b><br>
                 <b>Discount: &nbsp;</b><b><%=dis%></b><br>
                 <b>Manufacture Date: &nbsp;</b><b><%=rs.getString("mfd")%></b>
                </td>
            </tr>
            <tr>  
            <td> <a href="cart.jsp?pid=<%=rs.getString("pid")%>&discount=<%=dd%>&cost=<%=price%>&pname=<%=pname%>"><img src="images/addtocart.gif"></a> </td>
            </tr> 
                <%}%>   
        </table>
    </tr>


</table>

<%}%>
</div>

<div class="right">
<h2>Advertisements</h2>
<table>
    <tr><td width="200">
        <img src="images/6.gif" width="150">
    </td></tr>
</table>
</div>

<div style="clear: both;">

    </div>


</div>
<div id="bottom"> </div>
<div id="footer">

</div>

</div>
</body>
</html> 