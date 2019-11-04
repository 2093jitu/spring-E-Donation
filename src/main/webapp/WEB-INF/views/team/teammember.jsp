<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
				<c:forEach var="mamber" items="${teammamber}">
					<c:if test="${mamber.status=='Team Member'}">
						<div class="col-lg-4">
							<div class="card">
								<div class="card-body">
									<figure>
										<img class="card-img-top img-fluid" src="img/donation/d1.jpg"
											alt="Card image cap">
									</figure>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="76" aria-valuemin="0" aria-valuemax="100"
											style="width: 76%;">
											<span>Funded 76%</span>
										</div>
									</div>
									<div class="card_inner_body">
										<div class="card-body-top">
											<span>Raised: $7,689</span> / $10,000
										</div>
										<h4 class="card-title">Did not find your Package</h4>
										<p class="card-text">inappropriate behavior is often
											laughed off as “boys will be boys,” women face higher conduct
											standards especially in the workplace that’s why it’s
											crucial.</p>
										<a href="#" class="main_btn2">donate here</a>
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
<!--================Header Menu Area =================-->
<!--================ Start About Us Section =================-->
<section class="about_us section_gap">
	<div class="container">
		<c:forEach var="mamber" items="${teammamber}">
			<c:if test="${mamber.status=='Team Member'}">
				<div class="row">
				<div class="col-lg-5">
					<div class="about_img">
						<img class="img-fluid" src="../img/teammemberpic/${mamber.profilepic}" alt="" style="box-shadow: 0px 13px 35px #c9c9c91f;">
					</div>
				</div>

				<div class="offset-lg-1 col-lg-6">
					<div class="content_wrapper">
						<h1>Name : ${mamber.fullName}</h1>
						<hr style="border-top: 2px solid;"></hr>
						<h2>Address : ${mamber.fullName}</h2>
						<h2>Gender : ${mamber.gender}</h2>
						<h2>Occupation : ${mamber.occupation}</h2>						
						<h2>Email Address : ${mamber.email}</h2>
						<!-- <p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially
							in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate
							behavior is often laughed.</p>
						<p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially
							in the workplace.</p> -->
						<a href="#" class="main_btn">view more details</a>
					</div>
				</div>
			</div>
			</c:if>
		</c:forEach>
	</div>
</section>
<!--================ End About Us Area =================-->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<hr>
		</div>
	</div>
</div>
<!--================ Start Clients Logo Area =================-->
<section class="clients_logo_area section_gap">
	<div class="container">
		<div class="clients_slider owl-carousel">
			<div class="item">
				<img src="img/clients-logo/c-logo-1.png" alt="">
			</div>
			<div class="item">
				<img src="img/clients-logo/c-logo-2.png" alt="">
			</div>
			<div class="item">
				<img src="img/clients-logo/c-logo-3.png" alt="">
			</div>
			<div class="item">
				<img src="img/clients-logo/c-logo-4.png" alt="">
			</div>
			<div class="item">
				<img src="img/clients-logo/c-logo-5.png" alt="">
			</div>
		</div>
	</div>
</section>
<!--================ End Clients Logo Area =================-->

<!--================ Start Footer Area  =================-->
<jsp:include page="../footer.jsp"></jsp:include>