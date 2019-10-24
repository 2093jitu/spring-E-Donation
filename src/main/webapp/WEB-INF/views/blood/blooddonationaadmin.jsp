<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<table class="table table-bordered" style="margin-top: 15px">
				<tr>
					<th>Full Name</th>
					<td>Email Address</td>
					<th>ContactNumber</th>
					<th>Last date Of Blood Donate</th>
					<th>Blood Group</th>
					<th>Status</th>
				</tr>
				<c:forEach var="blood" items="${blooddetaile}">

					<tr>
						<td>${blood.fullName}</td>
						<td>${blood.email}</td>
						<td>${blood.contactNumber}</td>
						<td>${blood.lastBloodDonateDate}</td>
						<td>${blood.bloodGroup}</td>
						<td>${blood.status}</td>
						<td><c:if test="${blood.status == 'Avableable'}">
								<a href="/bloodstatuschange/${blood.id}/NotAvableable"
									class="btn btn-danger">NotAvableable</a>
							</c:if> <c:if test="${blood.status == 'NotAvableable'}">
								<a href="/bloodstatuschange/${blood.id}/Avableable"
									class="btn btn-success">Avableable</a>
							</c:if></td>
						<td><c:if test="${(blood.status=='NotAvableable')  || (blood.status=='All Raddy Booked')}">
								<a href="/deleteBloodDonation/${blood.id}"
									class="btn btn-danger">Delete</a>
							</c:if>							
						</td>
					</tr>


				</c:forEach>
			</table>

		</div>
	</div>
</div>

