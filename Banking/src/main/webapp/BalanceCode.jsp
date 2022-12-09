<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Balance</title>
<style type="text/css">
body {
	background-color: white;
	background-image: url(".png");
	background-repeat: no-repeat;
	background-size: 1500px 1500px;
	background-blend-mode: lighten;
}

nav {
	background: linear-gradient(90deg, #d5e1df, #b5e7a0, #d5e1df);
	align: center;
	color: #adadad;
}

h2 {
	background: linear-gradient(90deg, #d5e1df, #b5e7a0, #d5e1df);
	color: black;
	text-align: center;
	border: 3px;
	border-radius: 20px;
}

h1 {
	background-color: none;
}
table, tr, th, td {
	border: 1px white;
	border-collapse:collapse;
	
}
a {
	color: black;
	font-family: ;
	font-size: 18px;
	text-decoration: none;
}

div {
	border: none;
	width: 25%;
	display: table;
	margin: 10px;
	padding: 30px;
	border-radius: 20px;
	display: table-cell;
}
</style>

</head>
<body>
	<center>
<table>
			<tr>
				<td><img src="l.jpg" width=200 height=100 align=center></td>
				<td><h1 style="color: black; text-align: center;">SDFC
						BANK</h1>
					<h3 style="color: black; text-align: center;">EXTRAORDINARY
						SERVICES</h3></td>
			</tr>
		</table>
		<nav>
						<a href='a.jsp'><b>Home</b></a>&emsp; &emsp;
		
			<a href='New.jsp'><b>New Account</b></a>&emsp; &emsp; <a
				href='Balance.jsp'><b>Balance</b></a>&emsp; &emsp; <a
				href='Deposite.jsp'><b>Deposit </b></a>&emsp; &emsp; <a
				href='Withdraw.jsp'><b>Withdraw</b></a>&emsp; &emsp; <a
				href='Transfer.jsp'><b>Transfer</b></a>&emsp; &emsp; <a
				href='Close.jsp'><b>Close A/C</b></a>&emsp; &emsp; <a
				href='About.jsp'><b>AboutUs</b></a><br> <br>
		</nav>
		<div>
			<h2>SERVICES</h2>
				<ul type="square">
					<li><a href='icicibank.com'>WhatsApp Banking </a></li>
					<li><a href='discover.com'>Doorstep Banking</a></li>
					<li><a href='royalbank.com'>UPI Autopay</a></li>
					<li><a href='onlinesbi.com'>Mobile Banking </a></li>
					<li><a href='wise.com'> Online Banking </a></li>
					<li><a href='wise.com'> Remote Banking </a></li>

					<li><a href='wise.com'> Branch Banking </a></li>

					<li><a href='wise.com'> NextGen Banking </a></li>
					<li><a href='wise.com'> Phone Banking </a></li>

					<li><a href='wise.com'> Online Banking </a></li>

				</ul>
		</div>
		<div>

			<%
			String num = request.getParameter("acc");
			int accountno = Integer.parseInt(num);

			String username = request.getParameter("uname");
			String password = request.getParameter("psw");
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sheetal", "gunjan");
				PreparedStatement ps = con.prepareStatement("select acc_no,name,amount,address,mob_no from bank where acc_no=?");
				ps.setInt(1, accountno);

				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					out.println("<h3>WELCOME " + username + "...</h3>");

					out.println("<center><table  width='550' height='150'>");
					out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");

					out.print("<tr>");
					out.print("<td>" + rs.getInt(1) + "</td>");
					out.print("<td>" + rs.getString(2) + "</td>");
					out.print("<td>" + rs.getInt(3) + "</td>");
					out.print("<td>" + rs.getString(4) + "</td>");
					out.print("<td>" + rs.getLong(5) + "</td>");
					out.print("</tr>");
					out.println("</center></table>");

				}
				else
				{
					out.println("<h3>Account not exist...</h3>");

				}
			} 
				catch(Exception obj)
				{
					System.out.print(obj);

				}
			
			%>
		</div>
		<div>
			<h2>WELCOME..</h2>
			<img src="w.png" width=200 height=100 align=center>

			<p>Say hello to a unique banking experience that meets all your
				requirements and guarantees a personalised service. We offer a wide
				range of accounts, deposits and loans in all the major currencies,
				including the below:</p>
			Accounts Payments & transfers eBanking
			<p>QNB provides a comprehensive suite of products and services,
				so please take a moment to browse our page to get more familiar with
				them. You can also visit any of our branches or contact us on (+91)
				22 6229 6300 with any comments and suggestions you might have.</p>
		</div>
</body>
</html>