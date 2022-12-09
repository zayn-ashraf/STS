<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer</title>
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
a {
	color: black;
	font-family: ;
	font-size: 18px;
	text-decoration: none;
}

h1 {
	background-color: none;
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
		
		<nav>				<a href='a.jsp'><b>Home</b></a>&emsp; &emsp;
		
			<a href='New.jsp'><b>New Account</b></a>&emsp; &emsp; <a
				href='Balance.jsp'><b>Balance</b></a>&emsp; &emsp; <a
				href='Deposite.jsp'><b>Deposit </b></a>&emsp; &emsp; <a
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
		<form action="TransferCode.jsp" method="post">
			<h2>TRANSFER FORM</h2>
			<table width='300' height='250'>
				<tr>
					<td><b>Account No.:</td>
					<td><input type="text" name="acc"></b></td>
				</tr>

				<tr>
					<td><b>Name:</td>
					<td><input type="text" name="uname"></b></td>
				</tr>
				<tr>
					<td><b>Password:</td>
					<td><input type="password" name="psw"></b></td>
				</tr>
				<tr>
					<td><b> Target Account No.:</td>
					<td><input type="text" name="acc1"></b></td>
				</tr>

				<tr>
					<td><b>Amount:</td>
					<td><input type="text" name="amt"></b></td>
				</tr>
				<tr>
					<th><input type="submit" value="Submit"></th>
					<th><input type="reset" value="Clear"></th>
				</tr>
			</table>

		</form>
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
	</center>
</body>
</html>