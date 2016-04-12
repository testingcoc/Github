<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<title>login - Airways</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">


</head>
<body class="gray withAnimation">
<%@include file="html/header.html"%>
	<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<div class="title" style="margin-top: 35px;">Forgot Password Page</div>
				</div>

			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					
					<form:form commandName="command" action="getpass">
					<div class="row">
					<div class="col-md-2"></div>
						<div class="form-group">
							<label class="col-md-4" for="username">Enter Username <b>*</b></label>
							<form:input path="userid"  class="col-md-4" required="required"/>
							
						</div>
						</div><br/>
						<div class="row">
					<div class="col-md-2"></div>
						<label class="col-md-4">Security Question : <b>*</b></label>
								<form:select path="ques" class=" col-md-4" required="required">
									<form:option value="Mother name" ></form:option>
									<form:option value="Nick name" ></form:option>
									<form:option value="Birth Place" ></form:option>
								</form:select>
								</div> <br/>
								<div class="row">
					<div class="col-md-2 "></div>
						<div class="form-group">
							<label class="col-md-4"for="password">Answer <b>*</b></label>
							<form:input path="ans"  class=" col-md-4" required="required"/>
						</div>
						</div><br/>
						<br>
						<button type="submit" class="btn btn-brick flat btn-lg" style="margin-left:210px">Login</button>
					</form:form>
				</div>
			</div>
</div>


		</div>
	
<BR/><br>
<%@include file="html/footer.html"%>
</body>
</html>