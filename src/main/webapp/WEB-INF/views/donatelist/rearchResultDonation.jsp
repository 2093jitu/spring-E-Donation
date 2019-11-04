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
			<c:if test="${! empty donationList}">
				<a href="#" class="btn btn-secondary" data-toggle="modal"
					data-target="#exampleModal">Click Here</a>
				<table class="table table-bordered">
					<tr>
						<th>Full Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>contact Number</th>
						<th>Donation Create Date</th>
						<th>Description</th>
						<th>Need Amount</th>
						<th>bKash Number</th>
						<td>Status</td>
					</tr>
					<c:forEach var="donationlist" items="${donationList}">
						<tr>
							<td>${donationlist.fullName}</td>
							<td>${donationlist.email}</td>
							<td>${donationlist.address}</td>
							<td>${donationlist.contact}</td>
							<td>${donationlist.createdate}</td>
							<td>${donationlist.description}</td>
							<td>${donationlist.needammount}</td>
							<td>${donationlist.bKashAcc}</td>
							<td><c:if test="${! donationlist.status}">
									<P style="color: red;">PENDING</P>
								</c:if> <c:if test="${donationlist.status}">
									<P style="color: green;">ACCEPTED BY ADMIN</P>
								</c:if></td>
							<td><c:if test="${! donationlist.status}">
									<td><a
										href="/deletedonationbyuser/${donationlist.id}/${donationlist.email}"
										class="btn btn-danger">Cancel</a></td>
								</c:if></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<c:if test="${ empty donationList}">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-10">
						<h1>
							You Have No Donation Current <a href="#"
								class="btn btn-secondary" data-toggle="modal"
								data-target="#exampleModal">Click Here</a> TO Create A New
							Donation
						</h1>
					</div>

					<!-- Button trigger modal -->


					<!-- Modal -->

				</div>
			</c:if>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Create A
						Donation</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form method="post" action="/createdonation"
						enctype="multipart/form-data">
						
						<div class="form-group">
							<label for="pic">Picture</label> <input type="file" id="pic"
								class="form-control" name="imageFile">
						</div>
						
						<div class="form-group">
							<label for="pic2">Documentation</label> <input type="file" id="pic2"
								class="form-control" name="imageFile2">
						</div>
						
						<div class="form-group">
							<label for="fname">Full Name</label> <input type="text"
								class="form-control" id="fname" placeholder="Enter First Name"
								name="fullName" />
						</div>

						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" placeholder="Enter Your Email"
								name="email" value="${email}" />
						</div>

						<div class="form-group">
							<label for="address">Address</label> <input type="text"
								class="form-control" id="address"
								placeholder="Enter Your Address" name="address" />
						</div>

						<div class="form-group">
							<label for="contact">Contact Number</label> <input type="text"
								class="form-control" id="contact"
								placeholder="Enter Your Contact Number" name="contact" />
						</div>

						<div class="form-group">
							<label for="createdate">Create Date</label> <input type="date"
								class="form-control" id="createdate" name="createdate"
								value="yyyy-MM-dd" min="1900-01-01" max="2100-12-31">
						</div>

						<div class="form-group">
							<label for="description">Problem Description</label>
							<textarea rows="3" cols="6" class="form-control" id="description"
								name="description">                               
                        </textarea>
						</div>
						<div class="form-group">
							<label for="needammount">Need Amount</label> <input type="number"
								class="form-control" id="needammount"
								placeholder="Enter Need Ammount" name="needammount" />
						</div>
						<div class="form-group col-md-12">
							<label for="bankname">''</label> <select name="bankname"
								class="form-control">
								<option selected>#### Select Bank Name ###</option>
								<option>IFIC BANK</option>
								<option>UCB BANK</option>
							</select>
						</div>
						<div class="form-group">
							<label for="acno">Account No</label> <input type="text"
								class="form-control" id="acno" name="accountno" />
						</div>

						<div class="form-group">
							<label for="bKashAcc">bKash Account</label> <input type="text"
								class="form-control" id="bKashAcc" placeholder="Enter bKash No"
								name="bKashAcc" />
						</div>

						<div class="col-md-12">
							<button type="submit" class="btn btn-primary">Create A
								Donation</button>
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>					
				</div>
			</div>
		</div>
	</div>
</section>

<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>
