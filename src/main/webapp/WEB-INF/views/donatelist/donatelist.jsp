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
					<a href="<c:url value='/'/>">Home</a> <a href="contact.html">Events</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->


<!--================ Start Recent Event Area =================-->
<section class="recent_event section_gap_custom">
	<div class="container">
		<div class="row">			
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
					<th>IMG</th>
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
						<td><img  src="<c:url value='img/donation/${donationlist.img}'/>" alt="" style="width: 100%;"></td>
						<td><a href="<c:url value='/details/${donationlist.id}'/>" class="btn btn-danger">Show Details</a></a></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>						
						<td></td>
						<td></td>
					</tr>						
				</c:forEach>				
			</table>
		</div>
	</div>
</section>
<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>