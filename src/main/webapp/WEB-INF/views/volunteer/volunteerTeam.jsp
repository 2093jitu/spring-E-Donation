<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 100px"></div>

<div class="container">
	<div class="row" style="margin-bottom: 10px">
		<div class="col-md-12">
			<div class="col-md-6">
				<form class="form-inline my-2 my-lg-0" action="/bloodreport"
					method="post">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Enter Blood Group" aria-label="Search"
						name="bloodGroup">
					<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Show
						Report</button>

				</form>

			</div>
			<div class="col-md-4">
				<a href="allVolenter" class="btn btn-primary">All Volunteer
					Report</a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="p-3 mb-2 bg-success text-white"
				style="text-align: center;">
				<h2>
					<b>Add Volunteer</b>
				</h2>
			</div>
			<form action="/saveVolunteer" method="post">
				<div class="row">
					<div class="col">
						<label for="name">Full Name</label> <input type="text"
							class="form-control" placeholder="Full Name" id="name"
							name="fullName">
					</div>

					<div class="col">
						<label for="email">Email</label> <input type="email"
							class="form-control" placeholder="Enter Email" id="email"
							name="email">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<label for="contactNumber">Mobile Number</label> <input
							type="text" class="form-control" placeholder="Mobile Number"
							id="contactNumber" name="mob">
					</div>
					<div class="col">
						<label for="country">Country</label> <select id="country"
							name="country" class="form-control">
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
							name="gender" class="form-control">
							<option selected="selected">## Select Gender ##</option>
							<option>Male</option>
							<option>Female</option>
							<option>Others</option>
						</select>
					</div>

					<div class="col">
						<label for="occupation">Occupation</label> <input type="text"
							class="form-control" placeholder="Enter Occupation"
							id="occupation" name="occupation">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							placeholder="Enter Address">						
						</textarea>
					</div>
					<div class="col">
						<label for="dob">Date Of Birth</label> <input type="date"
							class="form-control" placeholder="Date Of Birth" name="dob"
							id="dob">
					</div>
				</div>
				<div class="row" style="margin-top: 15px">
					<div class="col">
						<button type="submit" class="btn btn-block btn-primary"
							class="form-control">Add Volunteer</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div style="margin-top: 100px"></div>

	<form class="form-inline my-2 my-lg-0" action="/search" method="post">
		<input class="form-control mr-sm-2" type="search" placeholder="Search"
			aria-label="Search" name="search">
		<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>

	</form>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>#</th>
					<th>Full Name</th>
					<th>Email</th>
					<th>Mobile Number</th>
					<th>Country</th>
					<th>Gender</th>
					<th>occupation</th>
					<th>Address</th>
					<th>Date Of Birth</th>
					<th>Action</th>

				</tr>
				<c:forEach var="allVolunteer" items="${allVolunteer}">
					<tr>
						<td>${allVolunteer.id}</td>
						<td>${allVolunteer.fullName}</td>
						<td>${allVolunteer.email}</td>
						<td>${allVolunteer.mob}</td>
						<td>${allVolunteer.country}</td>
						<td>${allVolunteer.gender}</td>
						<td>${allVolunteer.occupation}</td>
						<td>${allVolunteer.address}</td>
						<td>${allVolunteer.dob}</td>
						<td><a href="/edit/${allVolunteer.id}"
							class="btn btn-warning">Edit<i class="fa fa-trash"></i></a> <a
							href="#" class="btn btn-danger"
							onclick="javascript:deleteVolunteer(${allVolunteer.id})">Delete<i
								class="fa fa-trash"></i></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<div style="margin-bottom: 200px;"></div>
<script>
	function deleteVolunteer(id) {
		if (confirm('Do you realy want to delete this Volunteer?')) {
			var url = 'delete/' + id;
			window.location.href = url;
		}
	}
</script>