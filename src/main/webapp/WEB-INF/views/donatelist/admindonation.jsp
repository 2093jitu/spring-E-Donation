<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="row">
		<div class="col-md-10">
			<form class="form-inline my-2 my-lg-0" action="/donationbyname"
				method="post">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Enter Full name" aria-label="Search" name="fullName">
				<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Show
					Report</button>
			</form>
		</div>
		<div class="col-md-2">
			<a href="/alldonationreport"
				class="btn btn-outline-success my-2 my-sm-0">Show All Report</a>
		</div>
	</div>

	<div class="row" style="margin-top: 10px">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>Full Name</th>
					<th>Email</th>
					<th>Address</th>
					<th>contact Number</th>
					<th>Donation Create Date</th>
					<th>Description</th>
					<th>Need Amount</th>
					<th>bKash Number</th>
					<th>Status</th>
				</tr>
				<c:forEach var="donationlist" items="${donationList}">
					<tr>
						<td>${donationlist.fullName}</td>
						<td>${donationlist.email}</td>
						<td>${donationlist.address}</td>
						<td>${donationlist.contact}</td>
						<td>${donationlist.createdate}</td>
						<td>${donationlist.description}</td>
						<td>${donationlist.needammount}</td>
						<td>${donationlist.bKashAcc}</td>
						<td>${donationlist.status}</td>
						<td><c:if test="${donationlist.status}">
								<a href="/statuschange/${donationlist.id}/false"
									class="btn btn-danger">Hide</a>
							</c:if> <c:if test="${! donationlist.status}">
								<a href="/statuschange/${donationlist.id}/true"
									class="btn btn-success">Show</a>
							</c:if></td>
						<td><a href="/deletedonation/${donationlist.id}"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<div style="margin-top: 100px"></div>