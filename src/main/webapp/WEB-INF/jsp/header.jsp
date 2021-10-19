<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous" />

<link
	href="https://fonts.googleapis.com/css2?family=Catamaran:wght@500&family=Old+Standard+TT:wght@700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	font-size: 16px;
}

.header {
	height: 65vh;
	width: 100%;
	top: 100px;
	color: white;
	background: linear-gradient(to right, rgba(34, 57, 187, 0.9),
		rgba(170, 97, 97, 0.5)),
		url(https://media.istockphoto.com/vectors/online-map-navigation-for-car-at-large-tablet-vector-illustration-vector-id1253841604?b=1&k=20&m=1253841604&s=612x612&w=0&h=FZKLuDJViKAKeia77WF1ZaEAOFtIRyFf3tXiNNl9AFA=);
}

.login-sidebar {
	height: 50vh;
	width: 100%;
	top: 100px;
	color: white;
	background:
		url(https://media.istockphoto.com/vectors/illustration-happy-company-people-in-car-carpool-vector-id1094713106?b=1&k=20&m=1094713106&s=170667a&w=0&h=vQt_PzDuiu1de1zjcMqZ-IUwMi6jlpkBXi0iNNpjo28=);
}

.signup-sidebar {
	height: 50vh;
	width: 100%;
	top: 100px;
	color: white;
	background:
		url(https://media.istockphoto.com/vectors/front-view-of-a-taxi-cab-a-driver-and-a-passenger-on-a-front-seat-a-vector-id1297272898?b=1&k=20&m=1297272898&s=170667a&w=0&h=aSbJ5paKnVgeDV3EyJt0t13xPPggWImBwKcCZWpVCr4=);
}

.cabs_header {
	height: 35vh;
	width: 100%;
	top: 100px;
	color: white;
	background: linear-gradient(to right, rgba(34, 57, 187, 0.9),
		rgba(170, 97, 97, 0.5)),
		url(https://media.istockphoto.com/vectors/online-map-navigation-for-car-at-large-tablet-vector-illustration-vector-id1253841604?b=1&k=20&m=1253841604&s=612x612&w=0&h=FZKLuDJViKAKeia77WF1ZaEAOFtIRyFf3tXiNNl9AFA=);
}
.publishpage{
	height: 74vh;
	width: 100%;
	top: 100px;
	color: white;
	background: linear-gradient(to right, rgba(34, 57, 187, 0.9),
		rgba(170, 97, 97, 0.5)),
		url(https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/09/17/868494-carpooling-service-istock-091719.jpg);
}
.ridespage{
	height: 40vh;
	width: 100%;
	top: 100px;
	color: white;
	background: linear-gradient(to right, rgba(34, 57, 187, 0.9),
		rgba(170, 97, 97, 0.5)),
		url(https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/friends-in-a-car-1555269228.jpg?crop=0.625xw:0.469xh;0.223xw,0.303xh&resize=1200:*);
}
</style>
</head>
<body>
	<c:set var="LoginStatus" value="${LoggedIn}" />
	<input type="hidden" id="loginStatus" value="">
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light position-fixed w-100"
		style="z-index: 9;">
		<div class="container-fluid">
			<a class="nav-link navbar-brand ml-5 home_pg" href="/"> <img
				style="width: 235px; height: 70px;"
				src="https://e7.pngegg.com/pngimages/292/5/png-clipart-carpool-chandigarh-driving-car-rider-s-compact-car-child.png"></a>
			<button class="navbar-toggler mr-1" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto header_links px-5">
					<c:choose>
						<c:when test="${LoginStatus eq 'NotLoggedIn'}">
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/">Home</a></li>
							<li class="nav-item active" style="font-weight: bold;">
					                <a class="nav-link" href="/aboutus">About Us</a>
					        </li> 
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/login">Log In</a>
							</li>
							<li class="nav-item active mr-2"><a class="nav-link"
								style="font-weight: bold;" href="/signup">Sign Up</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/allrides">My Rides</a>
							</li>
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/dashboard">Search</a>
							</li>
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/publishride">Publish Ride</a>
							</li>
							<li class="nav-item active"><a class="nav-link mr-2"
								style="font-weight: bold;" href="/">Logout</a>
							</li>
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
		</div>
	</nav>


	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous">
    </script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/register.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script type="text/javascript" src="js/searchcabs.js"></script>
</body>