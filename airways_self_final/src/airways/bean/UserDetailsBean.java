package airways.bean;


public class UserDetailsBean {
private String userid;
private String username;
private String userpassword;
private String gender;
private String userdob; 
private String useremail;
private String useraddress;
private int userphone;
private String ques;
private String ans;
public String getAns() {
	return ans;
}
public void setAns(String ans) {
	this.ans = ans;
}
private String role;
public String getUserid() {
	return userid;
}
public String getQues() {
	return ques;
}
public void setQues(String ques) {
	this.ques = ques;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getUserpassword() {
	return userpassword;
}
public void setUserpassword(String userpassword) {
	this.userpassword = userpassword;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getUserdob() {
	return userdob;
}
public void setUserdob(String userdob) {
	this.userdob = userdob;
}
public String getUseremail() {
	return useremail;
}
public void setUseremail(String useremail) {
	this.useremail = useremail;
}
public String getUseraddress() {
	return useraddress;
}
public void setUseraddress(String useraddress) {
	this.useraddress = useraddress;
}
public int getUserphone() {
	return userphone;
}
public void setUserphone(int userphone) {
	this.userphone = userphone;
}
@Override
public String toString() {
	return "UserDetailsBean [userid=" + userid + ", username=" + username
			+ ", userpassword=" + userpassword + ", gender=" + gender
			+ ", userdob=" + userdob + ", useremail=" + useremail
			+ ", useraddress=" + useraddress + ", userphone=" + userphone
			+ ", role=" + role + "]";
}
}
