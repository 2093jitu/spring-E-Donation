<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="our_major_cause section_gap_custom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="p-3 mb-2 bg-success text-white"
					style="text-align: center;">
					<h2>
						<b>Blood Search Result</b>
					</h2>
				</div>
				<c:if test="${! empty blooddetaile}">
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
							</tr>
						</c:forEach>
					</table>
				</c:if>

				<c:if test="${ empty blooddetaile}">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<img src="../img/teammemberpic/noresultfaound.png" />
						</div>
					</div>
				</c:if>

			</div>
		</div>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>