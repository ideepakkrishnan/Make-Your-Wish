<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.List" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="com.entities.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.mail.search.*" %>
<%@ page import="javax.activation.*" %>
<%@page import="com.services.CalendarUtility"%>
<%@page import="com.services.wbservice"%>
<%@page import="com.entities.user_info"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success</title>
<link rel="stylesheet" href="css/slider-style.css" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mocha.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<style type="text/css">
#topLinks{position:relative;}
#topLinks li{margin:0;padding:0;list-style:none;position:absolute;top:0;}
#topLinks li, #topLinks a{height:25px;display:block;}

#twitterLink{left:0px;width:25px;}
#twitterLink{background:url('images/home/social_main.png') 0 0;}

#facebookLink{left:30px;width:25px;}
#facebookLink{background:url('images/home/social_main.png') -30px 0;}

#webLink{left:60px;width:25px;}
#webLink{background:url('images/home/social_main.png') -60px 0;}

#logoutLink{left:87px;width:25px;}
#logoutLink{background:url('images/home/social_main.png') -87px 0;}

#userLinks{position:relative;}
#userLinks li{margin:0;padding:0;list-style:none;position:absolute;top:0;}
#userLinks li, #userLinks a{height:25px;display:block;}

#userLinkedin{left:0px;width:25px;}
#userLinkedin{background:url('images/home/social_author.png') 0 0;}

#userTwitter{left:30px;width:25px;}
#userTwitter{background:url('images/home/social_author.png') -30px 0;}

#userFacebook{left:60px;width:25px;}
#userFacebook{background:url('images/home/social_author.png') -60px 0;}

#userEmail{left:87px;width:24px;}
#userEmail{background:url('images/home/social_author.png') -87px 0;}

#menuList{position:relative;}
#menuList li{margin:0;padding:0;list-style:none;position:absolute;top:0;}
#menuList li, #menuList a{height:36px;display:block;}

#leftOfMenu{left:0px;width:5px;}
#leftOfMenu{background:url('images/home/menu.png') 0 0;}

#home{left:5px;width:57px;}
#home{background:url('images/home/menu.png') -5px 0;}
#home a:hover{background: url('images/home/menu.png') -5px -36px;}

#inbox{left:62px;width:53px;}
#inbox{background:url('images/home/menu.png') -62px 0;}
#inbox a:hover{background: url('images/home/menu.png') -62px -36px;}

#wishbook{left:115px;width:55px;}
#wishbook{background:url('images/home/menu.png') -115px 0;}
#wishbook a:hover{background: url('images/home/menu.png') -115px -36px;}

#about{left:170px;width:66px;}
#about{background:url('images/home/menu.png') -176px 0;}
#about a:hover{background: url('images/home/menu.png') -176px -36px;}

#rightOfMenu{left:236px;width:364px;}
#rightOfMenu{background:url('images/home/menu.png') -236px 0;}

#menuLinks li{list-style:none;}
#menuLinks li, #menuLinks a{height:22px;display:block;margin-top: 10px;}

#addFriendsLink{left:0px;width:126px;}
#addFriendsLink{background:url('images/home/topics_right.png') 0 -5px;}

#wishlistLink{left:0px;width:126px;}
#wishlistLink{background:url('images/home/topics_right.png') 0 -35px;}

#seasonsLink{left:0px;width:126px;}
#seasonsLink{background:url('images/home/topics_right.png') 0 -65px;}

#customLink{left:0px;width:126px;}
#customLink{background:url('images/home/topics_right.png') 0 -95px;}

#faqLink{left:0px;width:126px;}
#faqLink{background:url('images/home/topics_right.png') 0 -125px;}

#faqPane {
	background: url('images/home/bg_featured.png');
	background-repeat: no-repeat;
	height: 220px;
	width: 600px;
	position: relative; 
	left: 7px;		
}

#top {
	margin-top: 5px;
	height: 52px;
	margin-left: 27px;
}

#mainHeadLogo {
	display: inline; 
	float: left;
}

#topLinks {
	width: 113px;
	display: inline;
	float: right;
	margin-top: 23px;
	padding-right: 18px;
}

#left {
	width: 650px;
	display: inline-block;
}

#menu {
	background-color: silver;
	margin-top: 5px;
	position: relative;
	left: 32px
}

#search {
	margin-top: 4px;
	height: 52px;
}

#searchText {
	width: 296px;
	margin-top: 15px;
	margin-left: 0px;
	background: url('images/home/searchtext.png');
	background-color: #ebebeb;
	background-repeat: no-repeat;
	float: left;
	display: inline-block;
}

#sideMenu {
	width: 350px;
	height: 638px;
	background: url('images/home/bg_right.png');
	background-repeat: no-repeat;
}

#searchInput {
	width: 296px; 
	height: 32px;  
	padding-top: 5px; 
	padding-left: 10px;
	background-image: url('images/home/searchtext.png');
	background-repeat: no-repeat;
	background-color: #ebebeb;
	font-size: 17px;
	color: gray;
	text-align: left;
}

#searchButton {
	height: 33px;
	width: 25px;
	float: right;
	display: inline-block;
	margin-right: 20px;
	margin-top: 18px;
}

#sideMenu {
	margin-top: 4px;
}

#addFriendPane {
	position: relative;
	left: 7px;
	font-size: 12px;
	margin-top: 15px;
	
}

#addFriendPaneTop {
	width: 600px;
	height: 20px;
	background-image: url('images/home/content_back_front.png');
	background-repeat: no-repeat;
	margin-top: 15px;
}

#addFriendPaneMain {
	width: 600px;
	background-image: url('images/home/content_back.png');
	background-repeat: repeat-y;
	margin-top: 0px;
	padding-top: 0px;
	font-family: sans-serif;
	text-align: left;
	padding-left: 15px;
	margin-left: 15px;
}

#addFriendPaneBottom {
	width: 600px;
	height: 20px;
	background-image: url('images/home/content_back_down.png');
	background-repeat: no-repeat;
}

#menuBottom {
	position: relative;
	left: 7px;
	margin-top: 41px;
	height: 67px;
	width: 600px;
	background-image: url('images/home/topMenuBottom.png');
	background-repeat: no-repeat;
	font-family: sans-serif;
	font-size: 11px;
	text-align: left;
	padding-left: 15px;
	margin-left: 15px;
	padding-top: 5px;
	color: white;
}

#menuBottomFAQLinkImage {
	float: left; 
	padding-top: 2px;
}

#menuBottomFAQLink {
	text-decoration: none; 
	color: white; 
	float: left; 
	padding-left: 5px;
}

#newFriendEntryList {
	
}

#addFriendBullet {
	float: left;
}

#addFriendName {
	float: left;
	text-decoration: none;
	color: gray;
}

#newUserBullet {
	float: left;
}

#newUserName {
	float: left;
	text-decoration: none;
	color: gray;
}

</style>
</head>
<body background="images/home/bg_gradient.png" style="background-repeat: repeat-x; background-color: #fafafa">

	<center>
	<div id="main" style="width: 1024px;">
		<div id="left">
			<div id="top">
				<img id="mainHeadLogo" alt="Make Your Wish" src="images/home/logo_sitehead.png" height="52px" width="179px" align="left">
				<ul id="topLinks">
					<li id="twitterLink"><a href="http://www.twitter.com"></a></li>
					<li id="facebookLink"><a href="http://www.facebook.com"></a></li>
					<li id="webLink"><a href="http://sparsh"></a></li>
					<li id="logoutLink"><a href="login.jsp"></a></li>
				</ul>
			</div>			
			<div id="addFriendPane">
				<div id="addFriendPaneTop">
				</div>
				<div id="addFriendPaneMain">					
					<table width="550px">
						<tr height="75px">
							<td colspan="2" style="font-size: 25px;float: none;color: #0b92d6;">
								<img alt="Wishbook" src="images/Users.png" width="50px" height="50px" style="float: left;">
								<div style="float: left; margin-top: 10px;">User approval</div>
							</td>
						</tr>
						
<%

String fname=request.getParameter("Field15");
//out.println(fname);
String uname=request.getParameter("uname");
String password=request.getParameter("password");
String lname=request.getParameter("Field16");
String add1=request.getParameter("Field3");
String add2=request.getParameter("Field4");
String city=request.getParameter("Field5");
String state=request.getParameter("Field6");
Integer pin=Integer.parseInt(request.getParameter("Field7"));
String country=request.getParameter("Field8");
Long phone=Long.parseLong(request.getParameter("Field10"));
String email=request.getParameter("Field9");
String fb=request.getParameter("fb");
String li=request.getParameter("li");
String tw=request.getParameter("tw");
String pe=request.getParameter("pe");
String holi=request.getParameter("Holi");
String ann=request.getParameter("anniversary");
String dob=request.getParameter("dob");
Date anniversary=new Date();
Date dateofbirth=new Date();
user_info_temp info = new user_info_temp();
if(ann!=null && ann.length()>0)
{
Calendar c = CalendarUtilityDefault.getCalendarFromString(ann);
anniversary = c.getTime();
info.setAnniversary(anniversary);
}
Calendar c1 = CalendarUtilityDefault.getCalendarFromString(dob);
dateofbirth = c1.getTime();

info.setAddressLine2(add2);

info.setCity(city);
info.setCountry(country);
info.setDob(dateofbirth);
info.setEmail(email);
info.setFirstName(fname);
info.setLastName(lname);
info.setPhoneNo(phone);
info.setPin(pin);
info.setState(state);
info.setStreetAddress(add1);
info.setUname(uname);
info.setPassword(password);
info.setFb(fb);
info.setLi(li);
info.setTw(tw);
info.setPe(pe);
info.setPropic(holi);
wbservice wb=new wbservice();
int i=wb.checkusername(uname,email);
if(i==1)
{
%>
	<tr><td colspan="2">
	<img alt="Wishbook" src="images/error.png" width="35px" height="35px" style="float: left; margin-left: 100px">
	<div style="font-size: 15px; color: #0b92d6; float: left; margin-top: 8px">There is an already existing account with the username/email you entered</div>
	</td></tr>
<%
}
else
{
int j=wb.adduser(info);
%>
							<tr><td colspan="2">
							<img alt="Wishbook" src="images/check.png" width="35px" height="35px" style="float: left; margin-left: 50px">
							<div style="font-size: 15px; color: #0b92d6; float: left; margin-top: 8px">Your details have been submitted to the administrator for approval</div>
							</td></tr>

<%
//out.println(i);
//out.println("Successfully entried for Approval");
}
%>

							
							
					</table>
				</div>
				<div id="addFriendPaneBottom">
				</div>
			</div>
		</div>		
	</div>
	</center>

</body>
</html>
