<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Recent Events</h2>
				<div class="page_link">
					<a href="/">Home</a> <a href="contact.html">Events</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->


<!--================ Start Recent Event Area =================-->
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="row">
		<div class="p-3 mb-2 bg-primary text-white col-md-12"
			style="text-align: center; margin-bottom: 100px">
			<h2>
				<b>Join Our Teem</b>
			</h2>
		</div>
		<div class="col-md-12" style="margin-top: 100px">
			<form action="fileUploadAir.htm" method="POST"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="pic">Picture</label> <input type="file" id="pic"
						class="form-control" name="imageFile">
				</div>
				<input type="submit" value="CONFIRM"
					class="btn btn-block btn-primary">
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form action="/join" method="post">
				<div class="row">
					<div class="col-md-6">
						<label for="name">Full Name</label> <input type="text"
							class="form-control" placeholder="Full Name..........."
							name="fullName" id="name">
					</div>
					<div class="col-md-6">
						<label for="email">Email</label> <input type="email"
							class="form-control" placeholder="Enter Email..." name="email">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<br> <select class="form-control" name="countryName"
							id="country">
							<option>## Select Country Name ##</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="India">India</option>
							<option value="Napal">Napal</option>
							<option value="Japan">Japan</option>
							<option value="UAE">UAE</option>
						</select>
					</div>
					<div class="col-md-6">
						<label for="dob">Date Of Birth</label> <input type="date"
							class="form-control" placeholder="Date Of Birth" name="birthDate"
							id="dob">
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<label for="address">Address</label>
						<textarea rows="2" id="address" cols="3" name="address"
							class="form-control">						
						</textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<label for="address">Why Are You Interested</label>
						<textarea rows="2" id="qus" cols="3" name="qus"
							class="form-control">
						
						</textarea>
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
				<input value="${img}" name="profilepic" />
				<div class="row">
					<div class="col-md-12">
						<label for="occopatin">Occupation</label> <input type="text"
							class="form-control" placeholder="Enter Occupation...."
							name="occupation">
					</div>
				</div>
				<input value="Request Pending" name="status" type="hidden"/>
				<div class="row" style="margin-top: 15px">
					<div class="col-md-12">
						<button type="submit" class="btn btn-block btn-primary"
							class="form-control">Join Our Team</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<div style="margin-bottom: 100px"></div>


<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>