<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="g.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<td width="1200" valign="top"> 
      
     <%  
%> 
<table><% 
      
        String num=request.getParameter("accountno"); 
  int accountno=Integer.parseInt(num); 
   
   
        String username=request.getParameter("username"); 
  String password=request.getParameter("password"); 
   
  String num1=request.getParameter("taccountno"); 
  int taccountno=Integer.parseInt(num1); 
   
  String amoun=request.getParameter("amount"); 
  int accoun=Integer.parseInt(amoun); 
  //accountno=taccountno; 
     boolean status=verifyLogin1.checkLogin(accountno,username,password); 
  //if(status==true){ 
  // out.print("Welcome    " + username); 
  try { 
  if(status==true){ 
   out.print("Welcome    " + username); 
      out.print("       TARGET ACCOUNT NO DOES NOT EXSIT -->    " + taccountno); 
      %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href='index.html'><IMG SRC='images/home1.gif'></IMG></A> 
   <%  
   Connection con=GetCon.getCon(); 
   PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno='"+taccountno+"'"); 
    
            //ps.setInt(1,accountno); 
   ResultSet rs=ps.executeQuery(); 
   int dataamount=0; 
    
   if(rs.next()){ 
   dataamount=accoun+rs.getInt(5);  
    
   } 
   Connection con1=GetCon.getCon(); 
    
   PreparedStatement ps1=con1.prepareStatement("update NEWACCOUNT set amount=? where accountno='"+taccountno+"'"); 
   ps1.setInt(1,dataamount); 
   ps1.executeUpdate(); 
   ResultSet rs1=ps1.executeQuery(); 
   
   if(rs1.next()){} 
   System.out.println("data amonut"+dataamount); 
   request.setAttribute("target account A ",dataamount); 
   Connection con2=GetCon.getCon(); 
   PreparedStatement ps2=con2.prepareStatement("Select * from NEWACCOUNT where accountno=?"); 
    
            ps2.setInt(1,accountno); 
   ResultSet rs2=ps2.executeQuery(); 
    
   int dataamount1=0; 
   if(rs2.next()){ 
   dataamount1=rs2.getInt(5)-accoun;  
   System.out.println(dataamount1); 
   } 
   Connection con3=GetCon.getCon(); 
    
   PreparedStatement ps3=con3.prepareStatement("update NEWACCOUNT set amount=? where accountno='"+accountno+"'"); 
   ps3.setInt(1,dataamount1); 
   ps3.executeUpdate(); 
   ResultSet rs3=ps3.executeQuery(); 
    
   if(rs3.next()){ 
   
   request.setAttribute("target account A",dataamount); 
   request.setAttribute("account B",dataamount1);  
   %> 
   <jsp:forward page="tbalance.jsp"></jsp:forward>  
   <%  
   
   } 
   //out.print("your balance has increase"); 
   //request.setAttribute("totaldataamount",dataamount); 
   //request.setAttribute("balance","your balance has decrease");  
   
   //} 
    
   //out.print("your balance has increase"); 
   //request.setAttribute("totaldataamount",dataamount); 
   //request.setAttribute("balance","your balance has increase");  
   //} 
   
   /*out.print("<table align='left' width='50%' border='4' bgcolor='###FFF'>"); 
   out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>"); 
   while(rs.next()){ 
       int accountno1=rs.getInt(1); 
    session.setAttribute("accountno",accountno1); 
     
    System.out.print(accountno); 
     
    out.print("<tr>"); 
    out.print("<td>" + rs.getInt(1) + "</td>"); 
    out.print("<td>" + rs.getString(2) + "</td>"); 
    out.print("<td>" + rs.getInt(5) + "</td>"); 
    out.print("<td>" + rs.getString(6) + "</td>"); 
    out.print("<td>" + rs.getInt(7) + "</td>"); 
    //out.print("<td><a href='DeleteServlet' >Delete</a></td>"); 
    
    out.print("</tr>"); 
    
   } 
   out.print("</table>"); 
    
    
   */ 
  } 
  else{ 
   out.print("Please check your username and Password and target accountno"); 
   request.setAttribute("balance","Please check your username and Password and target acountno"); 
   %> 
   <jsp:forward page="transfer1.jsp"></jsp:forward>  
   <%  
   } 
   }catch (SQLException e) { 
   e.printStackTrace(); 
  } 
   
   
   %></table><% 
%> 
      
      
   </table> 
  

</body>
</html>