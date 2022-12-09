<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Online Payment </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>
<script language="JavaScript">
function validate(formObj)
		{  
		

           if(formObj.uname.value.length==0)
		   {
		   alert("Please Enter user Name");
		   formObj.uname.focus();
		   return false;
		   }
		   if(formObj.pwd.value.length==0)
		   {
		   alert("Please Enter password Name");
		   formObj.pwd.focus();
		   return false;
	 	   }
           if(formObj.accno.value.length==0){
           alert("Please enter Acvcount number");
           formObj.accno.focus();
           return false;
           }
		     
		formObj.actionUpdateData.value="update";
		return true;
		}
</script>



 <BODY>
 <%!
 String session;
 %>


<%

session=request.getSession(true);

//int a=session.getAttribute("grandTotal");

int a=(Integer)session.getAttribute("grandTotal");
System.out.println("session vaue in paymetn page is attribue "+a);
%>
<form name="form1" method="post" action="deduct.jsp"  onsubmit="return validate(this);">



 
 <center>


 <table width="40%">
        <tr bgColor=#e4f3f9 ><th width="100%" colspan="2"><b><font color="red">Customer Bill Payment</font></b></th></tr>

		<tr>
            <td><font color="red">User Name:</font></td> <td><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td><font color="green">Password:</font></td> <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
		<tr>
            <td><font color="blue">Account No:</font></td> <td><input type="text" name="accno"></td>
        </tr>
        
        <tr>
		 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="PayBill"></td></tr>

        </table>
		</center>
  
  
 </BODY>
</HTML>
