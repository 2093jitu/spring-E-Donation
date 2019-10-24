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
					<b>Volunteer Search Result</b>
				</h2>
			</div>
			<c:if test="${! empty allVolunteer}">
				<table class="table table-bordered" style="margin-top: 150px">
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
			</c:if>

			<c:if test="${ empty allVolunteer}">
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
<div style="margin-bottom: 200px;"></div>
<script>
	function deleteVolunteer(id) {
		if (confirm('Do you realy want to delete this Volunteer?')) {
			var url = 'delete/' + id;
			window.location.href = url;
		}
	}
	</script>