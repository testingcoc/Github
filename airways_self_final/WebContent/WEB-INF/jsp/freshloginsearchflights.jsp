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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script
	src="/resources/demos/external/jquery-mousewheel/jquery.mousewheel.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="html/userheader.html"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-6 visible-md visible-lg">
						<div class="title style2" style="margin-top: 35px;">Book A Flight</div>
					</div>
				</div>
				<div class="row">

					<div class="col-md-2"></div>
					<div class="col-md-6">
						<div class="title style2 visible-xs visible-sm">Book A Flight</div>
	<form:form commandName="checkfreshflight" action="freshflight">
		<div class="form-group col-md-12">
			<label class=" col-md-6" for="username_register">From<b>*</b></label>
			<form:input path="startingcity"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12">
			<label class=" col-md-6" for="username_register">To<b>*</b></label>
			<form:input path="endingcity"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12">
			<label class=" col-md-6" for="username_register">Departure<b>*</b></label>
			<form:input path="departuretime" type="date"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12"> 
			<label class=" col-md-6" for="username_register">Class<b>*</b></label>
			ECONOMY
			<form:radiobutton path="type" value="economy" class=" col-md-3" required="required"/>
			BUSINESS
			<form:radiobutton path="type" value="business"  class=" col-md-3" required="required"/>
		</div>
		<div class="form-group col-md-12">
		<label class=" col-md-6" for="username_register">Adults<b>*</b></label>
			<form:input path="adultseats" id="" type="number" min="1"
					max="5"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12">
			<label class=" col-md-6" for="username_register">Child<b>*</b></label>
			<form:input path="childseats" id="" type="number" min="0"
					max="5"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12">
			<label class=" col-md-6" for="username_register">Infant<b>*</b></label>
			<form:input path="infantseats" id="" type="number" min="0"
					max="5"  class=" col-md-6" required="required"/>
		</div>
		<div class="form-group col-md-12">
			<input type="submit" id="btn1" value="CHECK" class="btn btn-grey flat btn-lg" Style="margin-left:200px">
		</div>
	</form:form>
</div>
</div>
</div>
</div>
</div>
<%@include file="html/footer.html"%>
</body>
</html>