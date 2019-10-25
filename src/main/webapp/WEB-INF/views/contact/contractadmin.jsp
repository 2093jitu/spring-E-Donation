<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<div style="margin-top: 100px"></div>
<div class="container">	
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>ID</th>					
					<th>Name</th>
					<th>Email</th>
					<th>Subject</th>
					<th>Massage</th>
				</tr>
				<c:forEach var="massage" items="${allMassage}">
					<tr>
						<td>${massage.id}</td>
						<td>${massage.name}</td>
						<td>${massage.email}</td>
						<td>${massage.subject}</td>
						<td>${massage.message}</td>
						<td><a href="/replymessage/${massage.email}" class="btn btn-link">Reply Message</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>