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

			<c:forEach var="donationlist" items="${donationList}">
			<c:if test="${ donationlist.status}">
				<div class="card" style="width: 18rem; margin: 2px;">
					<figure>
						<img class="img-fluid w-100"
							src="../img/donation/${donationlist.img}" class="card-img-top "
							alt="...">						
					</figure>
					<div class="card-body jitu">
						<h5 class="card-title">${donationlist.fullName}</h5>
						<p class="card-text">${donationlist.description}</p>
						<a href="/details/${donationlist.id}/" class="btn btn-primary">Show
							Details</a>
					</div>
				</div>
				</c:if>
			</c:forEach>

		</div>
	</div>
</section>
<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>