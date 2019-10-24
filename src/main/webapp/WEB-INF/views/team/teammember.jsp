<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>
<section class="recent_event section_gap_custom">

	<div class="container">
		<div class="row">		
			<c:forEach var="mamber" items="${teammamber}">
				<div class="card mb-3" style="max-width: 540px; margin: 10px;">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="../img/teammemberpic/${mamber.profilepic}"
								class="card-img" alt="..." width="80%">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Full name : ${mamber.fullName}</h5>
								<p class="card-text">Email : ${mamber.email}</p>
								<p class="card-text">
									Country Name : ${mamber.countryName}
								</p>
								<p class="card-text">Occupation : ${mamber.occupation}</p>
								<p class="card-text">Address : ${mamber.address}</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<script>
  
</script>
<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>