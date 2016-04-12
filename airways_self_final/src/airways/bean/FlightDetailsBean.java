package airways.bean;

import java.util.Date;

public class FlightDetailsBean {
private String flightno;
private String flightname;
private String startingcity;
private String endingcity;
private String departuretime;
private String arrivaltime;
private float fareeconomy;
private float farebusiness;
private int seats;
private int adultseats;
private int childseats;
private int infantseats;
private String type;
public String getFlightno() {
	return flightno;
}
public void setFlightno(String flightno) {
	this.flightno = flightno;
}
public String getFlightname() {
	return flightname;
}
public void setFlightname(String flightname) {
	this.flightname = flightname;
}
public String getStartingcity() {
	return startingcity;
}
public void setStartingcity(String startingcity) {
	this.startingcity = startingcity;
}
public String getEndingcity() {
	return endingcity;
}
public void setEndingcity(String endingcity) {
	this.endingcity = endingcity;
}
public String getDeparturetime() {
	return departuretime;
}
public void setDeparturetime(String departuretime) {
	this.departuretime = departuretime;
}
public String getArrivaltime() {
	return arrivaltime;
}
public void setArrivaltime(String arrivaltime) {
	this.arrivaltime = arrivaltime;
}
public float getFareeconomy() {
	return fareeconomy;
}
public void setFareeconomy(float fareeconomy) {
	this.fareeconomy = fareeconomy;
}
public float getFarebusiness() {
	return farebusiness;
}
public void setFarebusiness(float farebusiness) {
	this.farebusiness = farebusiness;
}
public int getSeats() {
	return seats;
}
public void setSeats(int seats) {
	this.seats = seats;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}

public int getAdultseats() {
	return adultseats;
}
public void setAdultseats(int adultseats) {
	this.adultseats = adultseats;
}
public int getChildseats() {
	return childseats;
}
public void setChildseats(int childseats) {
	this.childseats = childseats;
}
public int getInfantseats() {
	return infantseats;
}
public void setInfantseats(int infantseats) {
	this.infantseats = infantseats;
}
@Override
public String toString() {
	return "FlightDetailsBean [flightno=" + flightno + ", flightname="
			+ flightname + ", startingcity=" + startingcity + ", endingcity="
			+ endingcity + ", departuretime=" + departuretime
			+ ", arrivaltime=" + arrivaltime + ", fareeconomy=" + fareeconomy
			+ ", farebusiness=" + farebusiness + ", seats=" + seats
			+ ", adultseats=" + adultseats + ", childseats=" + childseats
			+ ", infantseats=" + infantseats + ", type=" + type + "]";
}

}
