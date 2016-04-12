<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<title>Airways</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">



<script type="text/javascript">

function DrawCaptcha()
{	    
var a = Math.ceil(Math.random() * 9)+ '';
var b = Math.ceil(Math.random() * 9)+ '';      
var c = Math.ceil(Math.random() * 9)+ ''; 
var d = Math.ceil(Math.random() * 9)+ ''; 
var e = Math.ceil(Math.random() * 25); 
var f = Math.ceil(Math.random() * 25);
var g = Math.ceil(Math.random() * 25);
var h=  String.fromCharCode(97 + e);
var i=  String.fromCharCode(97 + f);
var j=  String.fromCharCode(97 + g);

var code = h +a + b +j+ c + d +i;
document.getElementById("showCaptcha").innerHTML = code;
document.getElementById("captchaCode").value=code;
}

function captcha()
{
	document.getElementById("captchaError").innerHTML="";
	
	var x=document.getElementById("enteredCaptcha").value;
	
	if(x=="" || x==null)
	{
		document.getElementById("captchaError").innerHTML="Please enter the image code";
	}
}

function ValidCaptcha(){
    var str1 = removeSpaces(document.getElementById("captchaCode").value);
    var str2 = removeSpaces(document.getElementById("enteredCaptcha").value);
    if (str1 == str2){
        return true;   
    }else{
    	document.getElementById("captchaError").innerHTML="Incorrect image code";
        return false;
    }
}

function removeSpaces(x){
    return x.split(' ').join('');
}
</script>

<script type="text/javascript">
 function check(){
	 var pass=document.getElementById("username").value;
	 var pass1=document.getElementById("userpassword").value;
	 var pass2=document.getElementById("gender").value;
	 var pass3=document.getElementById("userdob").value;
	 var pass4=document.getElementById("useremail").value;
	 var pass5=document.getElementById("useraddress").value;
	 var pass6=document.getElementById("phone").value;
	 
	 if(pass==""||pass1==""||pass2==""||pass3==""||pass4==""||pass5=="")
	 {
	 alert("EVERY FIELD IS MANDATORY!!!");
	 }
	 if(isNaN(pass6)){
		 alert("Phone should b an integer value..");
		 
	 }}
	
	 function CheckPasswordStrength() {
	        var password_strength = document.getElementById("demo");
			var password = document.getElementById("pass").value;
	       
	        if (password.length == 0) {
	            password_strength.innerHTML = "Password Empty";
	            return;
	        }
	 
	        
	        var regex = new Array();
	        regex.push("[A-Z]"); 
	        regex.push("[a-z]"); 
	        regex.push("[0-9]"); 
	        regex.push("[$@$!%*#?&]"); 
	 
	        var passed = 0;
	 
	        
	        for (var i = 0; i < regex.length; i++) {
	            if (new RegExp(regex[i]).test(password)) {
	                passed++;
	            }
	        }
	 
	        
	        if (passed > 2 && password.length > 8) {
	            passed++;
	        }
	 
	        
	        var color = "";
	        var strength = "";
	        switch (passed) {
	            case 0:
	            case 1:
	                strength = "Weak";
	                color = "red";
	                break;
	            case 2:
	                strength = "Good";
	                color = "darkorange";
	                break;
	            case 3:
	            case 4:
	                strength = "Strong";
	                color = "green";
	                break;
	            case 5:
	                strength = "Very Strong";
	                color = "darkgreen";
	                break;
	        }
	        password_strength.innerHTML = strength;
	        password_strength.style.color = color;
	    }
	 
	 function Validate()
     {
         var x = document.form1.txtPhone.value;
         var y = document.form1.txtMobile.value;
        if(isNaN(x)||x.indexOf(" ")!=-1)
        {
           alert("Enter numeric value")
           return false; 
        }
        if (x.length>8)
        {
             alert("enter 8 characters");
             return false;
        }
        if (x.charAt(0)!="2")
        {
             alert("it should start with 2 ");
             return false
        }

        if(isNaN(y)||y.indexOf(" ")!=-1)
        {
           alert("Enter numeric value")
           return false; 
        }
        if (y.length>10)
        {
             alert("enter 10 characters");
             return false;
        }
        if (y.charAt(0)!="9")
        {
             alert("it should start with 9 ");
             return false
        }
     }
	
 
 </script>



<title>Insert title here</title>
</head>
<body class="gray withAnimation">
	<%@include file="html/header.html"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-6 visible-md visible-lg">
						<div class="title style2" style="margin-top: 35px;">Register</div>
					</div>
				</div>
				<div class="row">

					<div class="col-md-2"></div>
					<div class="col-md-6">
						<div class="title style2 visible-xs visible-sm">Register</div>

						<div class="authentication style2">
							<h3>Not a member yet?</h3>
							<p>To get all the features, please register your own user
								account. It will worth it.</p>
							<form:form commandName="command" action="register" method="POST">
								
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">User Name<b>*</b></label>
									<form:input path="username" class=" col-md-6" required="required" />
								</div>
								<div class="form-group col-md-12">
									<label  class=" col-md-6" for="username_register">Password<b>*</b></label>
									<form:password path="userpassword" id="pass" class=" col-md-6" onkeyup="CheckPasswordStrength()" required="required"/>
									<div id="demo"></div>								</div>
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">Gender<b>*</b></label>
									<form:radiobutton  path="gender" value="male" />
									Male
									<form:radiobutton path="gender" value="female" />
									Female
								</div>
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">Date Of Birth<b>*</b></label>
									<form:input path="userdob"  class=" col-md-6" type="date" 
										 required="required"/>
								</div>
								<br>
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">E-mail<b>*</b></label>
									<form:input path="useremail" type="email" class=" col-md-6" required="required"/>
								</div>
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">Address<b>*</b></label>
									<form:input path="useraddress" class=" col-md-6" required="required"/>
								</div>
								<div class="form-group col-md-12">
									<label class=" col-md-6" for="username_register">Contact No.<b>*</b></label>
									<form:input path="userphone" type="number" class=" col-md-6" />
								</div>
								<div class="form-group col-md-12">
								<label class=" col-md-6">Security Question : <b>*</b></label>
								<form:select path="ques" class=" col-md-6" required="required">
									<form:option value="Mother name" ></form:option>
									<form:option value="Nick name" ></form:option>
									<form:option value="Birth Place" ></form:option>
								</form:select>
								</div>
								<div class="form-group col-md-12">
									<label class=" col-md-6" >Enter Answer :<b>*</b></label>
									<form:input path="ans" class=" col-md-6" required="required"/>
								</div>
								
								<button type="submit" class="btn btn-grey flat btn-lg" Style="margin-left:160px">Register</button>
								
							</form:form>
							<br> <br>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<%@include file="html/footer.html"%>
	<%@include file="html/Files.html"%>

	
</body>
</html>