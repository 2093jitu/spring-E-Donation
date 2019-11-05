<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<div class="col-md-2"></div>
			
			<div class="col-md-6">

				<form class="form-inline my-2 my-lg-0" action="/bloodreport"
					method="post">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Enter Blood Group" aria-label="Search" name="bloodGroup">
					<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Show Report</button>

				</form>

			</div>
			
			<div class="col-md-2"></div>

		</div>
	</div>
</div>
<div style="margin-top: 100px"></div>