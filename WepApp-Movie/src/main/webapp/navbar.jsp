<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Home Page</title>
<!-- Importing Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700">
<!-- jQuery needed -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Custom CSS -->
<style>
html, body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Quicksand", sans-serif;
	font-size: 62.5%;
	font-size: 10px;
}

/* Navbar section */
.nav {
	width: 100%;
	height: 65px;
	position: fixed;
	line-height: 65px;
	text-align: center;
}

.nav div.logo {
	float: left;
	width: auto;
	height: auto;
	padding-left: 3rem;
}

.nav div.logo a {
	text-decoration: none;
	color: #fff;
	font-size: 2.5rem;
}

.nav div.logo a:hover {
	color: #00E676;
}

.nav div.main_list {
	height: 65px;
	float: right;
}

.nav div.main_list ul {
	width: 100%;
	height: 65px;
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

.nav div.main_list ul li {
	width: auto;
	height: 65px;
	padding: 0;
	padding-right: 3rem;
}

.nav div.main_list ul li a {
	text-decoration: none;
	color: #fff;
	line-height: 65px;
	font-size: 2.4rem;
}

.nav div.main_list ul li a:hover {
	color: #00E676;
}

/* Home section */
.home {
	width: 100%;
	height: 60vh;
	background-image:
		url(https://repository-images.githubusercontent.com/275336521/20d38e00-6634-11eb-9d1f-6a5232d0f84f);
	background-position: center top;
	background-size: cover;
}

.navTrigger {
	display: none;
}

.nav {
	padding-top: 20px;
	padding-bottom: 20px;
	transition: all 0.4s ease;
}

/* Media query section */
@media screen and (min-width: 768px) and (max-width: 1024px) {
	.container {
		margin: 0;
	}
}

@media screen and (max-width: 768px) {
	.navTrigger {
		display: block;
	}
	.nav div.logo {
		margin-left: 15px;
	}
	.nav div.main_list {
		width: 100%;
		height: 0;
		overflow: hidden;
	}
	.nav div.show_list {
		height: auto;
		display: none;
	}
	.nav div.main_list ul {
		flex-direction: column;
		width: 100%;
		height: 100vh;
		right: 0;
		left: 0;
		bottom: 0;
		background-color: #111;
		background-position: center top;
	}
	.nav div.main_list ul li {
		width: 100%;
		text-align: right;
	}
	.nav div.main_list ul li a {
		text-align: center;
		width: 100%;
		font-size: 3rem;
		padding: 20px;
	}
	.nav div.media_button {
		display: block;
	}
}

/* Animation */
.navTrigger {
	cursor: pointer;
	width: 30px;
	height: 25px;
	margin: auto;
	position: absolute;
	right: 30px;
	top: 0;
	bottom: 0;
}

.navTrigger i {
	background-color: #fff;
	border-radius: 2px;
	content: '';
	display: block;
	width: 100%;
	height: 4px;
}

.navTrigger i:nth-child(1) {
	animation: outT 0.8s backwards reverse;
}

.navTrigger i:nth-child(2) {
	margin: 5px 0;
	animation: outM 0.8s backwards reverse;
}

.navTrigger i:nth-child(3) {
	animation: outBtm 0.8s backwards reverse;
}

.navTrigger.active i:nth-child(1) {
	animation: inT 0.8s forwards;
}

.navTrigger.active i:nth-child(2) {
	animation: inM 0.8s forwards;
}

.navTrigger.active i:nth-child(3) {
	animation: inBtm 0.8s forwards;
}

@
keyframes inM { 50% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
45deg
);
}
}
@
keyframes outM { 50% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
45deg
);
}
}
@
keyframes inT { 0% {
	transform: translateY(0px) rotate(0deg);
}

50
%
{
transform
:
translateY(
9px
)
rotate(
0deg
);
}
100
%
{
transform
:
translateY(
9px
)
rotate(
135deg
);
}
}
@
keyframes outT { 0% {
	transform: translateY(0px) rotate(0deg);
}

50
%
{
transform
:
translateY(
9px
)
rotate(
0deg
);
}
100
%
{
transform
:
translateY(
9px
)
rotate(
135deg
);
}
}
@
keyframes inBtm { 0% {
	transform: translateY(0px) rotate(0deg);
}

50
%
{
transform
:
translateY(
-9px
)
rotate(
0deg
);
}
100
%
{
transform
:
translateY(
-9px
)
rotate(
135deg
);
}
}
@
keyframes outBtm { 0% {
	transform: translateY(0px) rotate(0deg);
}

50
%
{
transform
:
translateY(
-9px
)
rotate(
0deg
);
}
100
%
{
transform
:
translateY(
-9px
)
rotate(
135deg
);
}
}
.affix {
	padding: 0;
	background-color: #111;
}

.myH2 {
	text-align: center;
	font-size: 4rem;
}

.myP {
	text-align: justify;
	padding-left: 15%;
	padding-right: 15%;
	font-size: 20px;
}

@media all and (max-width: 700px) {
	.myP {
		padding: 2%;
	}
}
</style>
</head>
<body>
	<nav class="nav">
		<div class="container">
			<div class="logo">
				<a href="index.jsp">CineMatic</a>
			</div>
			<div id="mainListDiv" class="main_list">
				<ul class="navlinks">
					<li><a href="search.html">Search</a></li>
					<li><a href="logout">Logout</a></li>
					<li><a href=""><%=session.getAttribute("name")%></a></li>
				</ul>
			</div>
			<span class="navTrigger"> <i></i> <i></i> <i></i>
			</span>
		</div>
	</nav>

	<section class="home"></section>

	<!-- Function used to shrink nav bar removing paddings and adding black background -->
	<script>
		$(window).scroll(function() {
			if ($(document).scrollTop() > 50) {
				$('.nav').addClass('affix');
				console.log("OK");
			} else {
				$('.nav').removeClass('affix');
			}
		});

		$('.navTrigger').click(function() {
			$(this).toggleClass('active');
			console.log("Clicked menu");
			$("#mainListDiv").toggleClass("show_list");
			$("#mainListDiv").fadeIn();
		});
	</script>
</body>
</html>
