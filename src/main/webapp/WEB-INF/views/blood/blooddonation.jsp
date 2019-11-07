<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../header.jsp"></jsp:include>
<!--================ Banner Area =================-->
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Causes</h2>
				<div class="page_link">
					<a href="/">Home</a> <a href="/causes">Create Donation</a>
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
			<div class="col-md-12">
				<h1 style="text-align: center;">
					<b>Create Donation Here</b>
				</h1>
				<hr style="border-top: 5px solid;"></hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form method="post" action="<c:url value='/blooddonation'/>">
					<div class="form-group">
						<label for="fname">Full Name</label> <input type="text"
							class="form-control" id="fname" placeholder="Enter First Name"
							name="fullName" />
					</div>

					<div class="form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" placeholder="Enter Your Email"
							name="email" />
					</div>

					<div class="form-group">
						<label for="contact">Contact Number</label> <input type="text"
							class="form-control" id="contact"
							placeholder="Enter Your Contact Number" name="contactNumber" />
					</div>

					<div class="form-group">
						<label for="createdate">last Blood Donate Date</label> <input
							type="date" class="form-control" id="createdate"
							name="lastBloodDonateDate" value="yyyy-MM-dd" min="1900-01-01"
							max="2100-12-31">
					</div>

					<div class="form-group">
						<select class="form-control" name="bloodGroup">
							<option selected="selected">#### Select Your Blood Group
								####</option>
							<option>A Positive</option>
							<option>A Negative</option>
							<option>B Positive</option>
							<option>B Negative</option>
							<option>O Positive</option>
							<option>O Negative</option>
							<option>AB Positive</option>
							<option>AB Negative</option>
						</select>
					</div>

					<input type="hidden" name="status" value="Avableable"></input>

					<div class="col-md-3">
						<button type="submit" class="btn btn-primary"
							style="margin-top: 15px">Donate Blood</button>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div style="margin-top: 50px"></div>
		<form class="form-inline my-2 my-lg-0" action="/bloodsearch"
			method="post">
			<select class="form-control mr-sm-2" name="searchbloodGroup">
				<option selected="selected">#### Select Blood Group For
					Search ####</option>
				<option>A Positive</option>
				<option>A Negative</option>
				<option>B Positive</option>
				<option>B Negative</option>
				<option>O Positive</option>
				<option>O Negative</option>
				<option>AB Positive</option>
				<option>AB Negative</option>
			</select>
			<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>

		</form>
		<div class="row">
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
					<c:if
						test="${(blood.status=='Avableable')  || (blood.status=='All Raddy Booked')}">
						<tr>
							<td>${blood.fullName}</td>
							<td>${blood.email}</td>
							<td>${blood.contactNumber}</td>
							<td>${blood.lastBloodDonateDate}</td>
							<td>${blood.bloodGroup}</td>
							
							<c:if test="${blood.status =='Avableable'}">
							<td>
							<b style="color: green;">${blood.status}</b>
							</td>
							</c:if>
							
							<c:if test="${blood.status =='All Raddy Booked'}">
							<td>
							<b style="color: red;">${blood.status}</b>
							</td>
							</c:if>
							
							
							<td>
							<c:if test="${blood.status=='Avableable'}">
									<a href="<c:url value='/sendemailform/${blood.email}'/>" class="btn btn-link">Send Email</a>
							</c:if>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<div class="row">
			<div class="col-md-12">
				<hr style="border-top: 5px solid;"></hr>
			</div>
		</div>

		<%-- 
		<form action="/sendEmail" method="post">
							<div class="row">
								<div class="col-md-12">
									<label for="email">Email :</label> <input type="text"
										class="form-control" placeholder="Enter Email..." name="email"
										id="email">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label for="sub">Subject :</label> <input type="text"
										class="form-control" placeholder="Write Email Subject...."
										name="sub" id="sub">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label for="body">Body :</label>
									<textarea class="form-control"
										placeholder="Write Email Body..." name="body" id="body"></textarea>
								</div>
							</div>
							<button type="submit" class="btn btn-primary" 
							>Send Email</button>
						</form> --%>
	</div>
</section>
<!--================ Ens Our Major Cause section =================-->
<jsp:include page="../footer.jsp"></jsp:include>