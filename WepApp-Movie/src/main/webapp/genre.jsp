<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
/* ! Reset */
body, html {
	font-family: 'Intro', Arial, Helvetica, sans-serif;
	font-size: 16px;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

*, *:before, *:after {
	box-sizing: border-box;
}

h1, h2, h3, h4, h5, h6, p, ol, ul {
	margin: 0;
	padding: 0;
}

ol, ul {
	list-style-type: none;
}

img {
	height: auto;
}

h1 {
	font-size: 4rem;
}

h2 {
	font-size: 3rem;
}

h3 {
	font-size: 2rem;
}

h4 {
	font-size: 1rem;
}

h5 {
	font-size: 0.8rem;
}

h6 {
	font-size: 0.6rem;
}

a {
	text-decoration: none
}

body {
	background-color: #eeeeea;
}

.wrapper {
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.container {
	height: 400px;
	display: flex;
	flex-wrap: nowrap;
	justify-content: start;
}

.card {
	width: 80px;
	border-radius: .75rem;
	background-size: cover;
	cursor: pointer;
	overflow: hidden;
	border-radius: 2rem;
	margin: 0 10px;
	display: flex;
	align-items: flex-end;
	transition: .6s cubic-bezier(.28, -0.03, 0, .99);
	box-shadow: 0px 10px 30px -5px rgba(0, 0, 0, 0.8);
}

.card>.row {
	color: white;
	display: flex;
	flex-wrap: nowrap;
}

.card>.row>.icon {
	background: #223;
	color: white;
	border-radius: 50%;
	width: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 15px;
}

.card>.row>.description {
	display: flex;
	justify-content: center;
	flex-direction: column;
	overflow: hidden;
	height: 80px;
	width: 520px;
	opacity: 0;
	transform: translateY(30px);
	transition-delay: .3s;
	transition: all .3s ease;
}

.description p {
	color: #b0b0ba;
	padding-top: 5px;
}

.description h4 {
	text-transform: uppercase;
}

input {
	display: none;
}

input:checked+label {
	width: 600px;
}

input:checked+label .description {
	opacity: 1 !important;
	transform: translateY(0) !important;
}

.card[for="c1"] {
	background-image:
		url('https://images.unsplash.com/photo-1453306458620-5bbef13a5bca?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
}

.card[for="c2"] {
	background-image:
		url('https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
}

.card[for="c3"] {
	background-image:
		url('https://plus.unsplash.com/premium_photo-1661421687248-7bb863c60723?q=80&w=2138&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
}

.card[for="c4"] {
	background-image:
		url('https://images.unsplash.com/photo-1485827404703-89b55fcc595e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">

			<!-- card 1 -->
			<input type="radio" name="slide" id="c1" checked> <label
				for="c1" class="card">
				<div class="row">
					<div class="icon">1</div>
					<div class="description">
						<h4>Winter</h4>
						<p>Winter has so much to offer - creative activities</p>
					</div>
				</div>
			</label>

			<!-- card 2 -->
			<input type="radio" name="slide" id="c2"> <label for="c2"
				class="card">
				<div class="row">
					<div class="icon">2</div>
					<div class="description">
						<h4>Digital Technology</h4>
						<p>Gets better every day - stay tuned</p>
					</div>
				</div>
			</label>

			<!-- card 3 -->
			<input type="radio" name="slide" id="c3"> <label for="c3"
				class="card">
				<div class="row">
					<div class="icon">3</div>
					<div class="description">
						<h4>Globalization</h4>
						<p>Help people all over the world</p>
					</div>
				</div>
			</label>

			<!-- card 4 -->
			<input type="radio" name="slide" id="c4"> <label for="c4"
				class="card">
				<div class="row">
					<div class="icon">4</div>
					<div class="description">
						<h4>New technologies</h4>
						<p>Space engineering becomes more and more advanced</p>
					</div>
				</div>
			</label>

		</div>
	</div>
</body>
</html>