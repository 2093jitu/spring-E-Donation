<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<form:errors path="createdonation.*" />
				<form method="post" action="/createdonation">
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

					<div class="form-group">
						<label for="bankname">Bank Name</label> <input type="text"
							class="form-control" id="bankname" name="bankname"
							placeholder="Enter Bank Name" />
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
					
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary" >Create A Donation</button>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<hr style="border-top: 5px solid;"></hr>
			</div>
		</div>
	</div>
</section>
<!--================ Ens Our Major Cause section =================-->
<jsp:include page="../footer.jsp"></jsp:include>