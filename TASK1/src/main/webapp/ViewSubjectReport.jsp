
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<style>


body{
  	background-image: linear-gradient(to bottom,#ceebfd,#b1dae7,#87cefa);
  	margin-bottom: 290px;
}
div[class="logo"]{
	img{
	 	vertical-align: middle;
	}
	span{
		font-family: sans-serif;
	}
	padding: 0px 15px;
	margin-left:-10px;
	margin-right:-8px;
	background-color: #002a7c;
 	
		
}


.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;


}

.dropdown-content a {

  background-color: #87CEFA;
  color: black;
  padding: 14px 25px;
  font-size: 15px;
  text-decoration: blink;
  display: block;
  border: 1px solid black;
  border-radius: 5px;

}


.dropdown-content a:hover {background-color: #ADD8E6}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {font-size: 15px;
							color: #00BFFF;
							}


.a1,.a2,.a3,.a4,.a5{
	position: relative;
  	display: inline-block;

}
 .ab,.dropbtn {
  background-color: #002a7c;
  color: white;
  padding: 12px;
  font-size: 13px;
  border-color: #002a7c;
  border-radius: 5px;
}
pre[class="info"]{
	background-color: #0077A5;
	color: white;
	text-align: center;
	font-family: calibri(body);
	font-size: 14px;
	padding:10px;
	margin-left:-10px;
	margin-right:-8px;
	margin-top:-10px;
	margin-bottom:0px;
	
	
}
div[class="a1"]:hover .ab {font-size: 15px;
							color: #00BFFF;
							}
div[class="a2"]:hover .ab {font-size: 15px;
							color: #00BFFF;
							}
div[class="a3"]:hover .ab {font-size: 15px;
							color: #00BFFF;
							}
div[class="a4"]:hover .ab {font-size: 15px;
							color: #00BFFF;
							}
div[class="a5"]:hover .ab {font-size: 15px;
							color: #00BFFF;
							}


.infostnd{
	width: 80%;
	border: 2px solid black;
	margin: auto;
	margin-top: 20px;
	padding: 40px;
}
.info1{
	width: 50%;
	margin: auto;
}
.idname{
	background-color: #bebebe;
	border-radius: 6px;
	padding: 9px;
	padding-bottom: 0px;
}
.ageg{
	background-color: #bebebe;
	border-radius: 6px;
	padding: 9px;
	padding-bottom: 0px;
}
.abcd{
	color: #000099;
	font-size: 15px;
	font-family: arial;
	text-align: center;
}
table, th, td {
	font-family: calibri(body);
  	border:1px solid black;
}
th{
	color: white;
	font-size: 14.5px;
	background-color: #0000cc;
}
</style>
</head>
<body>
	<pre class="info">&#128383; 022 - 59621XX    &#128386;info@abcIntenational.com     SENIOR SECONDARY CBSE SCHOOL AFFILIATION NO.11390XX | NAVI MUMBAI - 400 703</pre> 

<div class="logo">
	<h2 style="display: inline-block">
		<img src="https://img.pikbest.com/png-images/20241014/modern-school-logo-vector-design-artwork_10962285.png!w700wp" height="80px" width="80px">
		<span>ABC International School</span>
	
		
		
		<div class="a1" style="margin-left:140px;">
			<a href="index.html"><button class="ab" onclick="<a href='index.html'> </a>">Home</button></a>
		</div>
		<div class="a2" style="margin-left:40px;">
			<button class="ab">News & Events</button>
		</div>
		<div class="a3" style="margin-left:40px;">
			<button class="ab">Co-Curricular Activities</button>
		</div>
		<div class="a4" style="margin-left:40px;">
			<button class="ab">Academics</button>
		</div>
		
		<div class="dropdown" style="margin-left:40px;">
  			<button class="dropbtn" >Student Grade</button>
  				<div class="dropdown-content">
    				<a href="Add.html" >Insert Data</a>
    				
    				<a href="Read.html" >Read Data</a>
    				
    				<a href="Admin.html" >Admin</a>
  				</div>
		</div>
		<div class="a5" style="margin-left:40px;">
			<button class="ab">Contact Us</button>
		</div>
		
		
	</h2>
</div>


<%ArrayList<ArrayList> A = (ArrayList<ArrayList>) request.getAttribute("A"); 
 ArrayList<ArrayList> English=A.get(4);
 ArrayList<ArrayList> Maths=A.get(0);
 ArrayList<ArrayList> Physics=A.get(1);
 ArrayList<ArrayList> Chemistry=A.get(2);
 ArrayList<ArrayList> CS=A.get(3);




%>
<br><br><br><br>
<br>
<table style="width:90%; margin: auto;">
  <tr>
    <th>Subject Code</th>
    <th>Subject Name</th>
    <th>Maximum Marks Obtained</th>
    <th>Student ID</th>
    <th>Minimum Marks Obtained</th>
    <th>Student ID</th>
    <th>Average Marks</th>
  </tr>
  <tr>
    <td>041</td>
    <td>English</td>
    <td><%=(English.get(0).get(0))%></td>
    <td><%=English.get(1) %></td>
    
    <td><%=(English.get(2).get(0))%></td>
    <td><%=English.get(3) %></td>
    <td><%=(English.get(4).get(0))%></td>
  </tr>
  <tr>
    <td>102</td>
    <td>Mathematics</td>
    <td><%=(Maths.get(0).get(0))%></td>
    <td><%=Maths.get(1) %></td>
    <td><%=(Maths.get(2).get(0))%></td>
    <td><%=Maths.get(3) %></td>
    <td><%=(Maths.get(4).get(0))%></td>
  </tr>
  <tr>
    <td>201</td>
    <td>Physics</td>
 	<td><%=(Physics.get(0).get(0))%></td>
    <td><%=Physics.get(1) %></td>
    <td><%=(Physics.get(2).get(0))%></td>
    <td><%=Physics.get(3) %></td>
    <td><%=(Physics.get(4).get(0))%></td>
  </tr>
  <tr>
    <td>203</td>
    <td>Chemistry</td>
    <td><%=(Chemistry.get(0).get(0))%></td>
    <td><%=Chemistry.get(1) %></td>
    <td><%=(Chemistry.get(2).get(0))%></td>
    <td><%=Chemistry.get(3) %></td>
    <td><%=(Chemistry.get(4).get(0))%></td>
  </tr>
  
  <tr>
    <td>068</td>
    <td>Computer Science</td>
    <td><%=(CS.get(0).get(0))%></td>
    <td><%=CS.get(1) %></td>
    <td><%=(CS.get(2).get(0))%></td>
    <td><%=CS.get(3) %></td>
    <td><%=(CS.get(4).get(0))%></td>
  </tr>
  <tr>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;color: #0000cc">.</td>

  
</table>
</body>
</html>