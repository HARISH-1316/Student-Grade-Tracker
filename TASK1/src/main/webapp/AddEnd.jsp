<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-16">
<style>

body{
  	background-image: linear-gradient(to right,#b3e6c9,#eafaea,#b3e6c9);
  	
  	
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

.a11{
	text-align: center;
}
 .ab1{
  background-color: #00c261;
  color: white;
  padding: 12px;
  font-size: 13px;
  border-color: #008f47;
  border-radius: 5px;
  }
.ab1:hover {
	font-size: 15px;
	color: #00fa9a;
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
<h3 style="text-align: center; padding:	 220px;">
	&#9989;Data Inserted Successfully...
</h3>

<div class="a11">
		<a href="Add.html"><button class="ab1" onclick="<a href='index.html'> </a>">Add Student Data</button></a>
</div>	

</body>
</html>


