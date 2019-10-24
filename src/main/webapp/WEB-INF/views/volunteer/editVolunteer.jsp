<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12">
		<div class="p-3 mb-2 bg-success text-white"
						style="text-align: center;">
						<h2>
							<b>Edit Volunteer</b>
						</h2>
					</div>
			<form action="/updateVolunteer" method="post">
				<div class="row">					
					<div class="col">
						<label for="name">Full Name</label> <input type="text"
							class="form-control" placeholder="Full Name" id="name"
							name="fullName" value="${allVolunteer.fullName}">
					</div>
					<input type="hidden" name="id" value="${allVolunteer.id}" />
					<div class="col">
						<label for="email">Email</label> <input type="email"
							class="form-control" placeholder="Enter Email" id="email"
							name="email" value="${allVolunteer.email}">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<label for="contactNumber">Mobile Number</label> <input
							type="text" class="form-control" placeholder="Mobile Number"
							id="contactNumber" name="mob" value="${allVolunteer.mob}">
					</div>
					<div class="col">
						<label for="country">Country</label> <select id="country"
							name="country" class="form-control"
							value="${allVolunteer.country}">
							<option selected="selected">## Select Country ##</option>
							<option>Bangladesh</option>
							<option>Napal</option>
							<option>Vutan</option>
							<option>India</option>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<label for="geder">Gender</label> <select id="gender"
							name="gender" class="form-control" value="${allVolunteer.gender}">
							<option selected="selected">## Select Gender ##</option>
							<option>Male</option>
							<option>Female</option>
							<option>Others</option>
						</select>
					</div>

					<div class="col">
						<label for="occupation">Occupation</label> <input type="text"
							class="form-control" placeholder="Enter Occupation"
							id="occupation" name="occupation"
							value="${allVolunteer.occupation}">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							placeholder="Enter Address" value="${allVolunteer.address}">						
						</textarea>
					</div>
					<div class="col">
						<label for="dob">Date Of Birth</label> <input type="date"
							class="form-control" placeholder="Date Of Birth" name="dob"
							id="dob" value="${allVolunteer.dob}">
					</div>
				</div>
				<div class="row" style="margin-top: 15px">
					<div class="col">
						<button type="submit" class="btn btn-block btn-warning"
							class="form-control">Update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<div style="margin-bottom: 200px;"></div>