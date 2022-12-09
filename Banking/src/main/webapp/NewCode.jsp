<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New_Account</title>
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
}s

table, tr, th, td {
	
}

h1 {
	background-color: none;
}

a {
	color: black;
	font-family:;
	font-size: 18px;
	text-decoration: none;
}

div {
	border: none;
	width: 30%;
	display: table;
	margin: 7px;
	padding: 25px;
	border-radius: 15px;
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
			<a href='a.jsp'><b>Home</b></a>&emsp; &emsp; <a href='New.jsp'><b>New
					Account</b></a>&emsp; &emsp; <a href='Balance.jsp'><b>Balance</b></a>&emsp;
			&emsp; <a href='Deposite.jsp'><b>Deposit </b></a>&emsp; &emsp; <a
				href='Withdraw.jsp'><b>Withdraw</b></a>&emsp; &emsp; <a
				href='Transfer.jsp'><b>Transfer</b></a>&emsp; &emsp; <a
				href='Close.jsp'><b>Close A/C</b></a>&emsp; &emsp; <a
				href='Aboutus.jsp'><b>AboutUs</b></a><br> <br>
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
			String num = request.getParameter("accno");
			int accountno = Integer.parseInt(num);

			String username = request.getParameter("uname");
			String password = request.getParameter("psw");
			String rpassword = request.getParameter("psw2");

			String amount = request.getParameter("amt");
			int amt = Integer.parseInt(amount);
			String address = request.getParameter("add");

			String num1 = request.getParameter("mno");
			long mno = Long.parseLong(num1);
			if (!password.equals(rpassword)) {
				RequestDispatcher rd = request.getRequestDispatcher("New.jsp");
				rd.include(request, response);

				out.println("<h3><center>Error: password & confirm password must be same</center></h3>");

			} else {
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");

					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sheetal", "gunjan");

					PreparedStatement ps = con.prepareStatement("insert into bank values(?,?,?,?,?,?)");

					ps.setInt(1, accountno);
					ps.setString(2, username);
					ps.setString(3, password);
					ps.setInt(4, amt);
					ps.setString(5, address);
					ps.setLong(6, mno);

					int i = ps.executeUpdate();

					out.println("<h3>Hello " + username + " your Account is created...</h3>");
					out.println("<center><table width='280' height='100' style='border: 1px solid gray;border-collapse:collapse;' >");
					out.print(
					"<tr style='border: 1px solid gray;border-collapse:collapse;'><th style='border: 1px solid gray;border-collapse:collapse;'>ACCOUNT NO</th><th style='border: 1px solid gray;border-collapse:collapse;'>USERNAME</th><th style='border: 1px solid gray;border-collapse:collapse;'>PASSWORD</th><th style='border: 1px solid gray;border-collapse:collapse;'>AMOUNT</th><th style='border: 1px solid gray;border-collapse:collapse;'>ADDRESS</th><th style='border: 1px solid gray;border-collapse:collapse;'>PHONE</th></tr>");

					out.print("<tr style='border: 1px solid gray;border-collapse:collapse;'>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + accountno + "</td>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + username + "</td>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + password + "</td>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + amt + "</td>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + address + "</td>");
					out.print("<td style='border: 1px solid gray;border-collapse:collapse;'>" + mno + "</td>");

					out.print("</tr>");
					out.println("</center></table>");
					con.close();
				} catch (Exception ex) {
					System.out.print(ex);
				}
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