<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" src="<c:url value="resource/js/jquery-1.11.3.min.js"/>"></script>

<style type="text/css">
.hidden{
display: none;
}

</style></head>
<body class="gray withAnimation">
<%@include file="html/userheader.html"%>

 <div class="container">
        <div class="row">
       
                <div class="row">
                 
                    <div class="col-md-12">
                        <div class="title" style="margin-top: 35px;">Enter Details</div>
                    </div>
                 
                </div>
                
                 <div class="row ">
                <div class="col-sm-12">
                   
     
<ul class="breadcrumb">
    <li>Search</li>
    <li>Available Flights</li>
    <li >Log in</li>
    <li style="color:orange;">Enter Details</li>
    <li>Confirm Tickets & Pay</li>
</ul>

</div>

 
                </div>
                <div class="row">
               
                    <div class="col-md-12">
<input type="hidden" id="adultseats" value="${adultseats }">
<input type="hidden" id="childseats" value="${childseats }">
<input type="hidden" id="infantseats" value="${infantseats }">
<form:form commandName="passenger" action="addpassenger" >
<div id="1" class="hidden">
NAME : <form:input path="passengername1"/>
AGE : <form:input path="passengerage1" type="number"/>
PASSENGER TYPE : <form:input path="passengertype1" value="adult"/>
GENDER : MALE<form:radiobutton path="passengergender1"/>FEMALE<form:radiobutton path="passengergender1"/>
</div>
<div id="2" class="hidden">
NAME : <form:input path="passengername2"/>
AGE : <form:input path="passengerage2" type="number"/>
PASSENGER TYPE : <form:input path="passengertype2" value="adult"/>
GENDER : MALE<form:radiobutton path="passengergender2"/>FEMALE<form:radiobutton path="passengergender2"/>
</div>
<div id="3" class="hidden">
NAME : <form:input path="passengername3"/>
AGE : <form:input path="passengerage3" type="number"/>
PASSENGER TYPE : <form:input path="passengertype3" value="adult"/>
GENDER : MALE<form:radiobutton path="passengergender3"/>FEMALE<form:radiobutton path="passengergender3"/>
</div>
<div id="4" class="hidden">
NAME : <form:input path="passengername4"/>
AGE : <form:input path="passengerage4" type="number"/>
PASSENGER TYPE : <form:input path="passengertype4" value="adult"/>
GENDER : MALE<form:radiobutton path="passengergender4"/>FEMALE<form:radiobutton path="passengergender4"/>
</div>
<div id="5" class="hidden">
NAME : <form:input path="passengername5"/>
AGE : <form:input path="passengerage5" type="number"/>
PASSENGER TYPE : <form:input path="passengertype5" value="adult"/>
GENDER : MALE<form:radiobutton path="passengergender5"/>FEMALE<form:radiobutton path="passengergender5"/>
</div>
<hr><hr>
<div id="6" class="hidden">
NAME : <form:input path="passengername6"/>
AGE : <form:input path="passengerage6" type="number"/>
PASSENGER TYPE : <form:input path="passengertype6" value="child"/>
GENDER : MALE<form:radiobutton path="passengergender6"/>FEMALE<form:radiobutton path="passengergender6"/>
</div>
<div id="7" class="hidden">
NAME : <form:input path="passengername7"/>
AGE : <form:input path="passengerage7" type="number"/>
PASSENGER TYPE : <form:input path="passengertype7" value="child"/>
GENDER : MALE<form:radiobutton path="passengergender7"/>FEMALE<form:radiobutton path="passengergender7"/>
</div>
<div id="8" class="hidden">
NAME : <form:input path="passengername8"/>
AGE : <form:input path="passengerage8" type="number"/>
PASSENGER TYPE : <form:input path="passengertype8" value="child"/>
GENDER : MALE<form:radiobutton path="passengergender8"/>FEMALE<form:radiobutton path="passengergender8"/>
</div>
<div id="9" class="hidden">
NAME : <form:input path="passengername9"/>
AGE : <form:input path="passengerage9" type="number"/>
PASSENGER TYPE : <form:input path="passengertype9" value="child"/>
GENDER : MALE<form:radiobutton path="passengergender9"/>FEMALE<form:radiobutton path="passengergender9"/>
</div>
<div id="10" class="hidden">
NAME : <form:input path="passengername10"/>
AGE : <form:input path="passengerage10" type="number"/>
PASSENGER TYPE : <form:input path="passengertype10" value="child"/>
GENDER : MALE<form:radiobutton path="passengergender10"/>FEMALE<form:radiobutton path="passengergender10"/>
</div>
<hr><hr>
<div id="11" class="hidden">
NAME : <form:input path="passengername11"/>
AGE : <form:input path="passengerage11" type="number" min="0" max="3"/>
PASSENGER TYPE : <form:input path="passengertype11" value="infant"/>
GENDER : MALE<form:radiobutton path="passengergender11"/>FEMALE<form:radiobutton path="passengergender11"/>
</div>
<div id="12" class="hidden">
NAME : <form:input path="passengername12"/>
AGE : <form:input path="passengerage12" type="number" min="0" max="3"/>
PASSENGER TYPE : <form:input path="passengertype12" value="infant"/>
GENDER : MALE<form:radiobutton path="passengergender12"/>FEMALE<form:radiobutton path="passengergender12"/>
</div>
<div id="13" class="hidden">
NAME : <form:input path="passengername13"/>
AGE : <form:input path="passengerage13" type="number" min="0" max="3"/>
PASSENGER TYPE : <form:input path="passengertype13" value="infant"/>
GENDER : MALE<form:radiobutton path="passengergender13"/>FEMALE<form:radiobutton path="passengergender13"/>
</div>
<div id="14" class="hidden">
NAME : <form:input path="passengername14"/>
AGE : <form:input path="passengerage14" type="number" min="0" max="3"/>
PASSENGER TYPE : <form:input path="passengertype14" value="infant"/>
GENDER : MALE<form:radiobutton path="passengergender14"/>FEMALE<form:radiobutton path="passengergender14"/>
</div>
<div id="15" class="hidden">
NAME : <form:input path="passengername15"/>
AGE : <form:input path="passengerage15" min="0" max="3" type="number"/>
PASSENGER TYPE : <form:input path="passengertype15" value="infant"/>
GENDER : MALE<form:radiobutton path="passengergender15"/>FEMALE<form:radiobutton path="passengergender15"/>
</div>
<hr><hr>
<input type="submit" value="ADD" class="btn btn-grey flat btn-lg" style="width: 200px;margin-left: 431px;"/>
</form:form>
<br/><br/>
      </div>

                 

                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
$(document).ready(function(){
	if($("#adultseats").val()==1){
	$("#1").removeClass("hidden");
	}
	if($("#childseats").val()==1){
	$("#6").removeClass("hidden");
	}
	if($("#infantseats").val()==1){
	$("#11").removeClass("hidden");
	}
	
	if($("#adultseats").val()==2){
		$("#1").removeClass("hidden");
		$("#2").removeClass("hidden");
		}
		if($("#childseats").val()==2){
		$("#6").removeClass("hidden");
		$("#7").removeClass("hidden");
		}
		if($("#infantseats").val()==2){
		$("#11").removeClass("hidden");
		$("#12").removeClass("hidden");
		}
		
		if($("#adultseats").val()==3){
			$("#1").removeClass("hidden");
			$("#2").removeClass("hidden");
			$("#3").removeClass("hidden");
			}
			if($("#childseats").val()==3){
			$("#6").removeClass("hidden");
			$("#7").removeClass("hidden");
			$("#8").removeClass("hidden");
			}
			if($("#infantseats").val()==3){
			$("#11").removeClass("hidden");
			$("#12").removeClass("hidden");
			$("#13").removeClass("hidden");
			}
			
			if($("#adultseats").val()==4){
				$("#1").removeClass("hidden");
				$("#2").removeClass("hidden");
				$("#3").removeClass("hidden");
				$("#4").removeClass("hidden");
				}
				if($("#childseats").val()==4){
				$("#6").removeClass("hidden");
				$("#7").removeClass("hidden");
				$("#8").removeClass("hidden");
				$("#9").removeClass("hidden");
				}
				if($("#infantseats").val()==4){
				$("#11").removeClass("hidden");
				$("#12").removeClass("hidden");
				$("#13").removeClass("hidden");
				$("#14").removeClass("hidden");
				}
				
				if($("#adultseats").val()==5){
					$("#1").removeClass("hidden");
					$("#2").removeClass("hidden");
					$("#3").removeClass("hidden");
					$("#4").removeClass("hidden");
					$("#5").removeClass("hidden");
					}
					if($("#childseats").val()==5){
					$("#6").removeClass("hidden");
					$("#7").removeClass("hidden");
					$("#8").removeClass("hidden");
					$("#9").removeClass("hidden");
					$("#10").removeClass("hidden");
					}
					if($("#infantseats").val()==5){
					$("#11").removeClass("hidden");
					$("#12").removeClass("hidden");
					$("#13").removeClass("hidden");
					$("#14").removeClass("hidden");
					$("#15").removeClass("hidden");
					}
})
</script>
<%@include file="html/footer.html"%>
	
</body>
</html>