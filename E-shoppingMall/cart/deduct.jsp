<%@page import="java.sql.*"%>
<% 
   int ball=0;
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   String accno=request.getParameter("accno");
   //String bal=request.getParameter("amt");

   session=request.getSession(true);

//int a=session.getAttribute("grandTotal");

int a=(Integer)session.getAttribute("grandTotal");
System.out.println("session vaue in deduct page is  "+a);






    try{ 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingcart","root","root");

        //Statement pstmt=con.Statement();
        //ResultSet rs=pstmt.executeQuery("select bal from users where //uname='"+uname+"');

        PreparedStatement pstmt=con.prepareStatement("select bal from users where uname=?");
        pstmt.setString(1,uname);
        ResultSet rs=pstmt.executeQuery();

		while(rs.next())
		{
			 ball=rs.getInt(1);
			System.out.println("the ball is:"+ball);

		}

        if(ball>a)
            {
			//int bal=bal1-a;
            PreparedStatement pstmt1=con.prepareStatement("update users set bal=bal-? where uname=? and accno=? and password=?");
			pstmt1.setInt(1,a);
			pstmt1.setString(2,uname);
			pstmt1.setString(3,accno);
			pstmt1.setString(4,pwd);
			int i=pstmt1.executeUpdate();
			out.println("<font color=red>Your Transaction succesfully completed</font>");
		    
			
				%>

				<a href="checkout.jsp"><font color="blue">Back</font></a>

				<%
			}
			
       else
			{ 
            out.println("You have no suffucient Balance");
			out.println("Remove items from ur cart");
			%>
			<a href="checkout.jsp">Back</a>
			<%
            }
	

	}catch(Exception e)
			{
             e.printStackTrace();
            }
    %> 
   
