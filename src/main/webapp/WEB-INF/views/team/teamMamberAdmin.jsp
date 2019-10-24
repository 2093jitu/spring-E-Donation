<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div style="margin-top: 100px"></div>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>Id</th>
					<th>FullName</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Country Name</th>
					<th>BirthDate</th>
					<th>Occupation</th>
					<th>Address</th>
					<th>Answer</th>
					<th>Status</th>
				</tr>
				<c:forEach var="mamber" items="${teammamber}">
					<tr>
						<td>${mamber.id}</td>
						<td>${mamber.fullName}</td>
						<td>${mamber.email}</td>
						<td>${mamber.gender}</td>
						<td>${mamber.countryName}</td>
						<td>${mamber.birthDate}</td>
						<td>${mamber.occupation}</td>
						<td>${mamber.address}</td>
						<td>${mamber.qus}</td>
						<td>${mamber.status}</td>						
						<td>
							<c:if test="${mamber.status=='Request Pending'}">
								<a href="/removeorcancalteammember/${mamber.id}" class="btn btn-danger">Cancel Request</a>
								<a href="/addteammember/Team Member/${mamber.id}" class="btn btn-success">Add As Team Member</a>
							</c:if>
							<c:if test="${mamber.status=='Team Member'}">
								<a href="/removeorcancalteammember/${mamber.id}" class="btn btn-warning">Remove From Team</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>