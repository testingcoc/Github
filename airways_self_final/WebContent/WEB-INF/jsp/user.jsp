<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="assets/css/slider.css" />
		<script src="assets/js/modernizr.custom.63321.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Airways</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

</head>
<body class="gray withAnimation">
	<%@include file="html/userheader.html"%>
	<section class="flexslider std-slider" data-height="480"
		data-direction="horizontal" data-animation="fade" data-loop="true"
		data-smooth="false" data-slideshow="true" data-speed="25000"
		data-animspeed="550" data-controls="false" data-dircontrols="true">
		<ul class="slides">
			<li data-bg="assets/images/content/slider.jpg">
				<div class="inner">
					<img class="object animated absolute hidden-xs" data-top="0"
						data-right="0" data-fx="fadeInRightBig"
						src="assets/images/content/slider.png" alt="">

				</div>
			</li>
			<li data-bg="assets/images/content/slider1.jpg">
				<div class="inner">
					<img class="object animated absolute hidden-xs" data-top="0"
						data-right="0" data-fx="fadeInRightBig"
						src="assets/images/content/slider1.png" alt="">
					<div class="container">
						<div class="row">
							<div class="col-xs-7 col-md-7 col-md-offset-4">
								<div class="object animated big" data-top="200px"
									data-fx="fadeInUp">
									Fly <br> to your dreams!
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li data-bg="assets/images/content/slider2.jpg">
				<div class="inner">
					<img class="object animated absolute hidden-xs" data-top="0"
						data-right="0" data-fx="fadeInRightBig"
						src="assets/images/content/slider2.png" alt="">
					<div class="row">
						<div class="col-xs-7 col-md-7 col-md-offset-4">
							<div class="object animated big" data-top="200px"
								data-fx="fadeInUp">
								Enjoy<br> the flying experience
							</div>
						</div>
					</div>
				</div>
			</li>
			<li data-bg="assets/images/content/slider3.jpg">
				<div class="inner">
					<img class="object animated absolute hidden-xs" data-top="0"
						data-right="0" data-fx="fadeInRightBig"
						src="assets/images/content/slider3.png" alt="">
					<div class="row">
						<div class="col-xs-7 col-md-7 col-md-offset-4">
							<div class="object animated big" data-top="200px"
								data-fx="fadeInUp">
								Non-stop comfort <br> Non-stop luxury
							</div>
						</div>
					</div>
				</div>
			</li>
			<li data-bg="assets/images/content/slider4.jpg">
				<div class="inner">
					<img class="object animated absolute hidden-xs" data-top="0"
						data-right="0" data-fx="fadeInRightBig"
						src="assets/images/content/slider4.png" alt="">
					<div class="row">
						<div class="col-xs-7 col-md-7 col-md-offset-4">
							<div class="object animated big" data-top="200px"
								data-fx="fadeInUp">Discover World</div>
						</div>
					</div>
				</div>
			</li>

		</ul>
	</section>
	
	<%@include file="html/content.html"%>
	<%@include file="html/footer.html"%>
	<%@include file="html/Files.html"%>


</body>
</html>

