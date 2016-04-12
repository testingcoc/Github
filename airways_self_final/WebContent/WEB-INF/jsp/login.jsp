<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=" ">
    <meta name="author" content="CreateIT">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />
	

    <title>login - Airways</title>
     <link rel="stylesheet" type="text/css" href="assets/css/style.css">

   
</head>
<body class="gray withAnimation">
<%@include file="html/header.html"%>
<%-- <%@include file="html/slider.html"%> --%>

   <div class="container">
        <div class="row">
       
                <div class="row">
                 <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <div class="title" style="margin-top: 35px;">Log in</div>
                    </div>
                 
                </div>
                <div class="row ">
                <div class="col-sm-12">
                      <div class="col-md-2"></div>
                    <div class="col-md-6">  
     
<ul class="breadcrumb">
    <li>Search</li>
    <li >Available Flights</li>
    <li style="color:orange;">Log in</li>
    <li >Enter Details</li>
    <li>Confirm Tickets & Pay</li>
</ul>
</div>

                </div>
                </div>
                <div class="row">
                  <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <div class="authentication">
                            <h3>Are you already a member?</h3>
                            <p>
                                If you're already a member, please use the form bellow to login.
                            </p>
                             <p>
                                If you're not a member, Click <a href="register">Register</a>
                            </p>
                           <form:form commandName="command" action="loginverify">

                                <div class="form-group">
                                    <label for="username" required>Username <b>*</b></label>
                                    <form:input  path="userid" />
                                </div>
                                <div class="form-group">
                                    <label for="password" required>Password <b>*</b></label>
                                    <form:password path="userpassword" />
                                </div>
                                <br>
                                <button type="submit" id="loginbtn" class="btn btn-brick flat btn-lg">Login</button>
                           </form:form>
                            <br>
                            <br>
                            <a class="h4 motive" href="forgot">Can't remember your password?</a>
                        </div>
                    </div>

                 

                </div>
            </div>
        </div>
    </div>
   

<%-- <form:form commandName="command" action="login"> --%>
<%-- Enter Username : <form:input path="userid"/> --%>
<%-- Enter Password : <form:password path="userpassword"/> --%>
<!-- <input type="submit" value="Submit"> -->
<%-- </form:form> --%>


<%@include file="html/footer.html"%>
<%@include file="html/Files.html"%>
</body>
</html>