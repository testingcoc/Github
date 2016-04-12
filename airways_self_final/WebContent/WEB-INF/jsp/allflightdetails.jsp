<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=" ">
    <meta name="author" content="CreateIT">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

    <title>Admin panel</title>
    <script type="text/javascript">
function f1(flightno){
	var url='deleteflights?flightno='+flightno;
	window.location.href=url;
}
function f2(flightno){
	var url='updateflights?flightno='+flightno;
	window.location.href=url;
}
</script>

   
</head>
<body>
<%@include file="html/admin.html"%>


<div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li >
                        <a href="adminhome"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="addnewflights"><i class="fa fa-fw fa-bar-chart-o"></i> Add Flights</a>
                    </li>
                    <li class="active">
                        <a href="viewallflights"><i class="fa fa-fw fa-desktop"></i> View/Update Flights</a>
                    </li>
                    
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Admin Panel Dashboard 
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard 
                            </li>
                            <li> Updates flights </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    
                        <div class="col-lg-12" >
                            <div class="panel-heading">
                            
                            
  <table>
<tr><th class="col-lg-2">FLIGHT NUMBER</th>
<th class="col-lg-2" >AIRLINES NAMES</th>
<th class="col-lg-2">FROM</th>
<th class="col-lg-2">TO</th>
<th class="col-lg-2">DEPARTURE TIME</th>
<th class="col-lg-3">ARRIVAL DATE</th>
<th class="col-lg-3">ECONOMY DATE</th>
<th class="col-lg-2">BUSINESS  FARE</th>
<th >SEATS</th></tr>
<c:forEach  var="f" items="${allflightdetails}">
<tr>
<td class="col-lg-2">${f.flightno}</td>
<td class="col-lg-2" >${f.flightname}</td>
<td class="col-lg-2">${f.startingcity}</td>
<td class="col-lg-2">${f.endingcity}</td>
<td class="col-lg-2">${f.departuretime}</td>
<td class="col-lg-2">${f.arrivaltime}</td>
<td class="col-lg-2">${f.fareeconomy}</td>
<td class="col-lg-2">${f.farebusiness}</td>
<td >${f.seats }</td>
<td><input type="button" onclick="f1('${f.flightno}')" value="DELETE" style="width: 75px; height: 32px; margin-left: 30px; background-color: #f5f5f5;"/></td>
<td><input type="button" onclick="f2('${f.flightno}')" value="UPDATE" style="width: 75px; height: 32px; margin-left: 30px; background-color: #f5f5f5;"/></td></tr>
</c:forEach>
</div></div></div>
</body>
</html>

</table>
</body>
</html>