<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>

<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Make Donation</h2>
				<div class="page_link">
					<a href="index.html">Home</a> <a href="donation.html">Donation</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->


<!--================ Start Recent Event Area =================-->

<div style="margin-top: 50px"></div>

<div class="row">
	<div class="col-md-12">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<form class="form-inline my-2 my-lg-0" action="/createdonationlogin"
					style="margin-left: 700px">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Enter Email" aria-label="Search" name="email">
					<input class="form-control mr-sm-2" type="password"
						placeholder="Enter Password" aria-label="Search" name="password">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">LogIn</button>
				</form>
			</div>
		</nav>

	</div>
</div>

<div style="margin-top: 100px"></div>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="p-3 mb-2 bg-primary text-white"
				style="text-align: center; margin-bottom: 100px">
				<h2>
					<b>Sin Up For Create A Donation</b>
				</h2>
			</div>
			<form action="/createdonationsinup" method="post"
				style="margin-top: 30px">
				<div class="row">
					<div class="col-md-6">
						<label for="name">Fast Name</label> <input type="text"
							class="form-control" placeholder="Full Name" id="name"
							name="fastName">
					</div>

					<div class="col-md-6">
						<label for="email">Last Name</label> <input type="text"
							class="form-control" placeholder="Last Name" id="email"
							name="lastName">
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<label for="contactNumber">Email</label> <input type="text"
							class="form-control" placeholder="Enter Email" id="contactNumber"
							name="email">
					</div>
				</div>
				<c:if test="${massage}">
					<div class="row">
						<div class="col-md-12">
							<h1 style="color: red;">Email Is AllRaddy Use</h1>
						</div>
					</div>
				</c:if>

				<div class="row">
					<div class="col-md-12">
						<label for="password">Password</label> <input type="password"
							class="form-control" placeholder="Enter Password" id="password"
							name="password">
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<label for="dob">Date Of Birth</label> <input type="date"
							class="form-control" placeholder="Date Of Birth" name="date"
							id="date">
					</div>
				</div>
				<label for="gender">Gender</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="exampleRadios1" value="male" checked> <label
						class="form-check-label" for="exampleRadios1"> Male</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="gender" value="female"> <label
						class="form-check-label" for="exampleRadios2"> FeMale </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="exampleRadios3" value="oters" disabled> <label
						class="form-check-label" for="exampleRadios3"> Others </label>
				</div>
				<div class="row" style="margin-top: 15px">
					<div class="col-md-12">
						<button type="submit" class="btn btn-block btn-primary"
							class="form-control">Sin Up</button>
					</div>
				</div>
			</form>


		</div>
	</div>
</div>


<div style="margin-bottom: 100px"></div>


<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>