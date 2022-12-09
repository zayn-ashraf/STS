<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<link rel="icon" href="bank.svg" type="image/icon type">
<style>
body {
	background-color: white;
	background-image: url(".png");
	background-repeat: no-repeat;
	background-size: 1500px 1500px;
	background-blend-mode: lighten;
}

header {
	 linear-gradient(90deg, #d5e1df, #b5e7a0,#d5e1df)
	background-repeat: no-repeat;
	background-size: 1300px 200px;
	height: 30vh;
}

main {
	height: 6vh;
	background-color:;
}

nav {
background: linear-gradient(90deg, #d5e1df, #b5e7a0,#d5e1df);
	align: center;
	color: #adadad;
}

footer {
	height: 60vh;
	background-color:;
}

div {
	width: 25%;
	display: table;
	margin: 10px;
	padding: 30px;
	border-radius: 20px;
	display: table-cell;
}

h2 {
	background: linear-gradient(90deg, #d5e1df, #b5e7a0,#d5e1df);
	color: black;
	text-align: center;
	border: 3px ;
	border-radius: 20px;
}

p {
	text-align: justify;
	font-size: 18px;
	font-family: Arial, Helvetica, sans-serif;
	color: black;
}

a {
	color: black;
	font-family: ;
	font-size: 20px;
	text-decoration: none;
}

li {
	font-color: black;
	font-size: 18px;
	margin: 10px;
	padding: 10px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<center>
		<header>
		<table width="500" height="100">
			<tr><td><img src="l.jpg" width=200 height=100 align=center></td><td><h1 style="color: black; text-align: center;">SDFC BANK</h1>
			<h3 style="color: black; text-align: center;">EXTRAORDINARY
				SERVICES</h3></td></tr></table>
			<marquee
				style="font-family: sans-serif; font-size: 15px; font-weight: 800; color: black;">
				<h4>WELCOME TO SDFC BANK....!!</h4>
			</marquee>
		</header>
		<main>
			<nav>
				<a href='a.jsp'><b>Home</b></a>&emsp; &emsp; <a href='New.jsp'><b>New
						Account</b></a>&emsp; &emsp; <a href='Balance.jsp'><b>Balance</b></a>&emsp;
				&emsp; <a href='Deposite.jsp'><b>Deposit </b></a>&emsp; &emsp; <a
					href='Withdraw.jsp'><b>Withdraw</b></a>&emsp; &emsp; <a
					href='Transfer.jsp'><b>Transfer</b></a>&emsp; &emsp; <a
					href='Close.jsp'><b>Close A/C</b></a>&emsp; &emsp; <a
					href='Aboutus.jsp'><b>AboutUs</b></a><br> <br>
			</nav>
		</main>
		<footer>
			<div>
				<h2>Checking Account</h2>
				<p>
					<marque direction="down" scrollamount="2"> Choose from our checking
						options that allow you to earn interest, avoid fees, and easily
						manage your account. </marquee>

				</p>
			</div>

			<div>
				<h2>Savings Accounts</h2>
				<p>Save for your goals and watch your money grow with a CD, a
					money market account, a savings account.Your future starts now.</p>
			</div>

			<div>
				<h2>Business Account</h2>
				<p>
					<marque direction="down" scrollamount="2"> Take charge of your business
						banking with a business bank account. Services including virtual
						cards, team management and more. </marquee>
				</p>
			</div>
			<br>
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
				<h2>WELCOME..</h2>
				<img src="w.png" width=200 height=100 align=center>

				<p>Say hello to a unique banking experience that meets all your
					requirements and guarantees a personalised service. We offer a wide
					range of accounts, deposits and loans in all the major currencies,
					including the below:</p>
				Accounts Payments & transfers eBanking
				<p>QNB provides a comprehensive suite of products and services,
					so please take a moment to browse our page to get more familiar
					with them. You can also visit any of our branches or contact us on
					(+91) 22 6229 6300 with any comments and suggestions you might
					have.</p>
			</div>
			</div>

			<div>
				<h2>NEWS & EVENT</h2>
				<marquee direction="down" scrollamount="4"> <B>Nov. 17, 2008.</B>
				<p>Get your dream web design at no cost, no extra manpower for
					your professional website.</p>
				<br> <B>Nov. 17, 2008.</B>
				<p>Get your dream web design at no cost, no extra manpower for
					your professional website.</p>
					</marquee>
			</div>
		</footer>
		</div>
	</center>


</body>
</html>