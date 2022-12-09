
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shopping Cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
     <script type="text/javascript" src="script/calendarDateInput.js"></script>
</head>
<script language="JavaScript">
function validate(formObj)
		{  
		

           if(formObj.fname.value.length==0)
		     {
		        alert("Please Enter First Name");
		        formObj.fname.focus();
		        return false;
			 }
		   if(formObj.lname.value.length==0)
		     {
		        alert("Please Enter last Name");
				formObj.lname.focus();
				return false;
	 		 }
           if(formObj.address.value.length==0)
			 {
				alert("Please enter address!");
				formObj.address.focus();
				return false;
             }
           if(formObj.phno.value.length==0)
			 {
				alert("Enter Phone number ");
				formObj.phno.focus();
				return false;
			  }
			if(isNaN(formObj.phno.value))
	          {
				alert("Enter valid Phone number");
				formObj.phno.focus();
				return false;
	          }
	
            if(formObj.contact.value.length==0)
			  {
				alert("Enter Mobile number");
				formObj.contact.focus();
				return false;
			  }
			if(isNaN(formObj.contact.value))
			  {
				alert("Enter valid  Mobile number");
				formObj.contact.focus();
				return false;
			  }
	
			if(formObj.contact.value.length!=10)
			  {
				alert("Mobile number should have 10 digits");
				formObj.contact.focus();
				return false;
			  }
			

				/* if(formObj.email.value.length==0){
				alert("Please enter Email!");
				formObj.email.focus();
				return false;
				}
				if(formObj.email.value.indexOf("@")&&formObj.email.value.lastIndexOf(".")){
				alert("Please enter  valid Email!");
				formObj.email.focus();
				return false;
				}*/

				checkEmail = formObj.email.value
			if(checkEmail.length==0)
			  {
				alert("Please enter Email!");
				formObj.email.focus();
				return false;
              }



			if ((checkEmail.indexOf('@') < 0) ||				((checkEmail.charAt(checkEmail.length-4) != '.') &&		(checkEmail.charAt(checkEmail.length-3) != '.')))
			  {
				alert("You have entered an invalid email address. Please try again.");
			    formObj.email.select();
				return false;
			  }

                //if(formObj.email.value.lastIndexOf(".")){
				//alert("Please enter  proper Email!");
				//formObj.email.focus();
				 //return false;
				 // } 

	       

	        if(formObj.uname.value.length<4)
		      {
				alert("Please Enter User ID minimum of 4 characters");
				formObj.uname.focus();
				 return false;
		      }

				/*

				function ValidatemyForm(TheForm)
				{
				if (TheForm.Editbox1.value.length < 5)
				{
				 alert("Please enter at least 5 characters in the \"Editbox1\" field.");
				TheForm.Editbox1.focus();
				return false;
				}
				if (TheForm.Editbox1.value != TheForm.Editbox2.value) 
				{ 
				alert('Passwords do not match'); 
				return false; 
				} 
				return true;
				}
				*/

        
		    if(formObj.password.value.length==0)
		      {
				 alert("Please Enter Password");
				 formObj.password.focus();
				 return false;
			  }
		    if(formObj.password.value.length<4)
			  {
				 alert("Please Enter Pass Word minimum of 4 characters");
				 formObj.password.focus();
				 return false;
		      }
		    if(formObj.rpassword.value.length==0)
		      {
		         alert("Please Re - Enter Password");
		         formObj.rpassword.focus();
		         return false;
		     }
		        /* if(formObj.password.value.length!=formObj.rpassword.value.length )
		        {
		        alert("Both Passwords Should be Equal");
		        formObj.password.focus();
		        return false;
		       }*/
		    if (formObj.Editbox1.value != formObj.Editbox2.value) 
              { 
                  alert("Passwords do not match"); 
                  return false; 
			  } 
               
			if(formObj.accno.value.length==0)
			  {
				 alert("Please enter account No.");
				 formObj.accno.focus();
                 return false;
              }
        
				formObj.actionUpdateData.value="update";
				return true;
		}
</script>
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
<li><a href="#">About Us</a></li>
<li><a href="#">Contact US</a></li>
<%if(session.getAttribute("user")!=null){%>
<li><a href="#">Welcome, <%=session.getAttribute("user")%></a></li>
 <%}else{%>
<li><a href="registration.jsp">Register</a></li>
<li><a href="login.jsp">Sign In</a></li>
<%}%>
<li><a href="#">Cart</a></li>
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
<form name="form1" method="post" action="userReg.jsp"  onsubmit="return validate(this);">
    <table width="100%">
        <tr bgColor=#e4f3f9 ><td width="100%" colspan="2"><b>Registration</b></td></tr>
        <tr><td colspan="2">Registration with Online Shopping is Fast and Easy !
            By registering with Online Shopping, you get access to India's largest online services ,more value for your shopping. </td></tr>
      <tr bgColor=#e4f3f9><td colspan="2"><b>Personal Information</b></td></tr>
      <tr>
            <td>First Name</td> <td><input type="text" name="fname"></td>
        </tr>
        <tr>
            <td>Last Name</td> <td><input type="text" name="lname"></td>
        </tr>
        <tr>
            <td>Gender: </td>
			
            <td>

            <select name="sex">
              <option value="" selected="selected">--Select --</option>
              <option value="M">Male</option>		
              <option value="F">Female</option>
           </select>
            </td>

    	</tr>
        <tr>
            <td valign="top">Address</td><td><textarea name="address" cols="20" rows="5"></textarea></td>
        </tr>
        <tr><td>Phone No</td><td><input type="text" name="phno"></td></tr>
        <tr><td>Mobile No</td><td><input type="text" name="contact"></td></tr>
        <tr><td>Email</td><td><input type="text" name="email"></td></tr>
        <tr><td>Date of Birth</td><td><script>DateInput('dob', true, 'YYYY/MM/DD')</script></td></tr>
        <tr bgColor=#e4f3f9><td colspan="2"><b>Account Information</b></td></tr>
       <tr>
            <td>User Name</td> <td><input type="text" name="uname"></td> 
        </tr>
        <tr>
            <td>Password</td> <td><input type="password" id="Editbox1" name="password"></td> 
        </tr>
        <tr>
            <td>Retype Password</td> <td><input type="password" id="Editbox2" name="rpassword"></td>
        </tr>
         <tr>
            <td>Enter Account No</td> <td><input type="text" name="accno"></td>
        </tr>




        <tr>
			<td>Default Payment Option:</td>
			<td>


		   <select name="paymentoption">
               <option value="">--Select Default Payment Option--</option>              
                <option value="Credit Card(Visa/MasterCard/Diner-W2l)">Credit Card(Visa/MasterCard/Diner-W2l)</option>
                <option value="Kotak Mahindra Bank Visa Net C@rd">Kotak Mahindra Bank Visa Net C@rd</option>
                <option value="HDFC Net Banking">HDFC Net Banking</option>
                <option value="Pay in 6 easy installments with your ICICI BANK Credit Card">Pay in 6 easy installments with your ICICI BANK Credit Card</option>
            
                <option value="American Express Credit Card">American Express Credit Card</option>
                <option value="SBI Credit Card">SBI Credit Card</option>
                <option value="ICICI Bank Online Credit Card">ICICI Bank Online Credit Card</option>

                </select>


	       <td>
       </tr>
       <tr><td colspan="2"><input name="submit" type="submit" id="AddNumbers" value="Submit"/>

    </table>

</form>

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