<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-16">
<style>



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
 .ab1{
  background-color: #0000cc;
  color: white;
  padding: 12px;
  font-size: 13px;
  border-color: black;
  border-radius: 5px;
  }
.ab1:hover{
	background-color: blue;
}
</style>
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
<br>

<div class="infostnd">
<h4 class="abcd">Examination Results</h4>
<h4 class="abcd">ABC International School Examination Results 2025</h4>
<div class="snag">
<hr style="border:1px solid #696969;">
<img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" style="height: 120px; width: 120px; padding-top: 5px;"></img>
<h6 style="font-size:15px; margin-top:-10px; margin-bottom: 0px;">
<pre>Student ID			:${sid}
Student Name			:${sname}
Student Gender			:${sgender }
Student Date of Birth	        :${sdob }
Student Age			:${sage }
</div>
<hr style="border:1px solid #696969;">
<br><br><br><br><br>
<table style="width:100%">
  <tr>
    <th>Subject Code</th>
    <th>Subject Name</th>
    <th>Marks Obtained</th>
    <th>Grade</th>
  </tr>
  <tr>
    <td>041</td>
    <td>English</td>
    <td>${seng}</td>
    <td>${sgeng}</td>
  </tr>
  <tr>
    <td>102</td>
    <td>Mathematics</td>
    <td>${smaths}</td>
    <td>${sgmaths}</td>
  </tr>
  <tr>
    <td>201</td>
    <td>Physics</td>
    <td>${sphy}</td>
    <td>${sgphy}</td>
  </tr>
  <tr>
    <td>203</td>
    <td>Chemistry</td>
    <td>${schem}</td>
    <td>${sgchem}</td>
  </tr>
  
  <tr>
    <td>068</td>
    <td>Computer Science</td>
    <td>${scs}</td>
    <td>${sgcs}</td>
  </tr>
  <tr>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc; color: white;">Result: ${sresult}</td>
    <td style="background-color: #0000cc;"></td>
    <td style="background-color: #0000cc;"></td>
  
</table>
<br><br><br><br>




<div >
<p style="font-size:18px;">Grades :</p>
<p style="font-size:15px; margin-top:-10px; margin-bottom: 0px;">
<pre>Marks : > 95 --------- A1
Marks : 90-95 -------- A2
Marks : 85-90 -------- B1
Marks : 80-85 -------- B2
Marks : 75-80 -------- C1
Marks : 65-75 -------- C2
Marks : 55-65 -------- D1
Marks : 40-55 -------- D2
Marks : < 40 --------- F

</pre>
</div>
<br><br>
<form action="MyServlet" method="post">
<input type="hidden" name="action" value="report">
<input type="hidden" name="report" value="StRep">
<div class="a11" >
	<button class="ab1" name="actionreport1" value=${i-1 } style="position: relative; left: 560px;"> << Previous</button>
</div>

</form>
</body>
</html>