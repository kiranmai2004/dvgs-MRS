<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
<style>
/* CSS styles go here */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

:root {
	--primary-color: #c6c3c3;
	--second-color: #ffffff;
	--black-color: #000000;
}

body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIq-wslFicnE00qCFVFRSgi5phoqOO_f5kYw&s");
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

a {
	text-decoration: none;
	color: var(--second-color);
}

a:hover {
	text-decoration: underline;
}

.wrapper {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background-color: rgba(0, 0, 0, 0.2);
}

.login_box {
	position: relative;
	width: 450px;
	backdrop-filter: blur(25px);
	border: 2px solid var(--primary-color);
	border-radius: 15px;
	padding: 7.5em 2.5em 4em 2.5em;
	color: var(--second-color);
	box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.2);
}

.login-header {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: var(--primary-color);
	width: 140px;
	height: 70px;
	border-radius: 0 0 20px 20px;
}

.login-header span {
	font-size: 30px;
	color: var(--black-color);
}

.login-header::before {
	content: "";
	position: absolute;
	top: 0;
	left: -30px;
	width: 30px;
	height: 30px;
	border-top-right-radius: 50%;
	background: transparent;
	box-shadow: 15px 0 0 0 var(--primary-color);
}

.login-header::after {
	content: "";
	position: absolute;
	top: 0;
	right: -30px;
	width: 30px;
	height: 30px;
	border-top-left-radius: 50%;
	background: transparent;
	box-shadow: -15px 0 0 0 var(--primary-color);
}

.input_box {
	position: relative;
	display: flex;
	flex-direction: column;
	margin: 20px 0;
}

.input-field {
	width: 100%;
	height: 55px;
	font-size: 16px;
	background: transparent;
	color: var(--second-color);
	padding-inline: 20px 50px;
	border: 2px solid var(--primary-color);
	border-radius: 30px;
	outline: none;
}

#user {
	margin-bottom: 10px;
}

.label {
	position: absolute;
	top: 15px;
	left: 20px;
	transition: 0.2s;
}

.input-field:focus ~ .label, .input-field:valid .label {
	position: absolute;
	top: -10px;
	left: 20px;
	font-size: 14px;
	background-color: var(--primary-color);
	border-radius: 30px;
	color: var(--black-color);
	padding: 0 10px;
}

.icon {
	position: absolute;
	top: 18px;
	right: 25px;
	font-size: 20px;
}

.remember-forgot {
	display: flex;
	justify-content: space-between;
	font-size: 15px;
}

.input-submit {
	width: 100%;
	height: 50px;
	background: #ececec;
	font-size: 16px;
	font-weight: 500;
	border: none;
	border-radius: 30px;
	cursor: pointer;
	transition: 0.3s;
}

.input-submit:hover {
	background: var(--second-color);
}

.register {
	text-align: center;
}

.register a {
	font-weight: 500;
}

@media only screen and (max-width: 564px) {
	.wrapper {
		padding: 20px;
	}
	.login_box {
		padding: 7.5em 1.5em 4em 1.5em;
	}
}
</style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="wrapper">
		<div class="login_box">
			<div class="login-header">
				<span>Login</span>
			</div>
			<form method="post" action="login">
				<div class="input_box">
					<input type="text" name="username" id="username" class="input-field" placeholder="Your Email">
					<label for="username" class="label"></label> <i
						class="bx bx-user icon"></i>
				</div>

				<div class="input_box">
					<input type="password" name="password" id="password" class="input-field" placeholder="Password">
					<label for="password" class="label"></label> <i
						class="bx bx-lock-alt icon"></i>
				</div>

				<div class="input_box">
					<input type="submit" name="signin" id="signin" class="input-submit" value="Login">
				</div>

				<div class="register">
					<span>Don't have an account? <a href="registration.jsp">Register</a></span>
				</div>
			</form>
		</div>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Sorry", "Wrong Username or Password", "error");
		} else if (status == "invalidemail") {
			swal("Sorry", "Please enter Username", "error");
		} else if (status == "invalidpassword") {
			swal("Sorry", "Please enter Password", "error");
		}
	</script>

</body>
</html>