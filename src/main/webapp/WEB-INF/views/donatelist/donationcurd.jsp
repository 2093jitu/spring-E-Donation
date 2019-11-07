<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<jsp:include page="../footer.jsp"></jsp:include> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>
<!--================Header Menu Area =================-->

<!--================ Banner Area =================-->
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Causes</h2>
				<div class="page_link">
					<a href="index.html">Home</a> <a href="causes.html">Causes</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->

<!--================ Start Our Major Cause section =================-->
<section class="our_major_cause section_gap_custom">
	<div class="container">
		<div class="row">
			<c:forEach var="donationlist" items="${donationList}">
				<c:if test="${ donationlist.status}">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-body">
								<figure>
									<img class="card-img-top img-fluid" src="<c:url value='img/donation/${donationlist.img}'/>"
										alt="Card image cap">
								</figure>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="76"
										aria-valuemin="0" aria-valuemax="100" style="width: 76%;">
										<span>Funded 76%</span>
									</div>
								</div>
								<div class="card_inner_body">
									<div class="card-body-top">
										<span>Raised: Tk.7,689</span> / <b>Tk.${donationlist.needammount}</b>
									</div>
									<h4 class="card-title"><b>Full Name : </b>${donationlist.fullName}</h4>
									<p class="card-text"><b style="color: black;">Problem  Description :  </b>${donationlist.description}</p>
									<a href="<c:url value='/details/${donationlist.id}/'/>" class="main_btn2">donate
										here</a>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</section>
<!--================ Ens Our Major Cause section =================-->
<!--================ Start Footer Area  =================-->
<jsp:include page="../footer.jsp"></jsp:include>