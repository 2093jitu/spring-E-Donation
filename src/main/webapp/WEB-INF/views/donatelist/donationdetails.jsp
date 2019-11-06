<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp"></jsp:include>
<section class="recent_event section_gap_custom">
	<div class="container">
	<div style="margin-top: 100px"></div>
	<div class="row">
		<div class="col-md-6">
			<img  src="/img/donation/${donationdetails.img}" alt="" style="width: 100%;">
		</div>
		<div class="col-md-6">
			<img  src="/img/donation/${donationdetails.document}" alt="" style="width: 100%;">
		</div>
	</div>
	<div class="row" style="margin-top: 50px" >
			<div class="col-md-12">
				<h1 style="text-align: center;">
					<b>Please Donate For Man Kind</b>
				</h1>
				<hr style="border-top: 5px solid;"></hr>
			</div>
		</div>
		<div class="row" style="margin-top: 50px">		
			<table class="table table-bordered">				
				<tr>
					<th><h2>Full Name :</h2></th>
					<td><h2>${donationdetails.fullName}</h2></td>
				</tr>
				<tr>
					<th><h2>Email :</h2></th>
					<td><h2>${donationdetails.email}</h2></td>
				</tr>
				<tr>
					<th><h2>Address :</h2></th>
					<td><h2>${donationdetails.contact}</h2></td>
				</tr>
				<tr>
					<th><h2>Update Date :</h2></th>
					<td><h2>${donationdetails.createdate}</h2></td>
				</tr>
				<tr>
					<th><h2>Problem Description :</h2></th>
					<td><h2>${donationdetails.description}</h2></td>
				</tr>
				<tr>
					<th><h2>Need Amount :</h2></th>
					<td><h2>${donationdetails.needammount}</h2></td>
				</tr>
				<tr>
					<th><h2>Bank Name :</h2></th>
					<td><h2>${donationdetails.bankname}</h2></td>
				</tr>
				<tr>
					<th><h2>Bank Account Number :</h2></th>
					<td><h2>${donationdetails.accountno}</h2></td>
				</tr>
				<tr>
					<th><h2>bKash Number :</h2></th>
					<td><h2>${donationdetails.bKashAcc}</h2></td>
				</tr>
				<tr>
					<th></th>
					<td><a class="btn btn-success" href="/paymentPage">Donate Now</a></td>
				</tr>
			</table>

		</div>
	</div>
</section>
<jsp:include page="../footer.jsp"></jsp:include>