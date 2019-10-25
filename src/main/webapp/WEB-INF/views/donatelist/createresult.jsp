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
<section class="recent_event section_gap_custom">
	<div class="container">
		<div class="row">
			<c:if test="${! empty donationList}">
				<a href="/createdonationlogin" class="btn btn-secondary" 
					>Back To Profile</a>
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
						<td>Status</td>
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
							<td><c:if test="${! donationlist.status}">
									<P style="color: red;">PENDING</P>
								</c:if> <c:if test="${donationlist.status}">
									<P style="color: green;">ACCEPTED BY ADMIN</P>
								</c:if>
							</td>							
						</tr>
					</c:forEach>
				</table>
			</c:if>
			
		</div>
	</div>	
</section>
<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>