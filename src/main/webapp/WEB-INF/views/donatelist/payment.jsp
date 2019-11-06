<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>

<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Make Donation</h2>
				<div class="page_link">
					<a href="index.html">Home</a> <a href="donation.html">Donation</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->


<!--================ Start Recent Event Area =================-->

<div style="margin-top: 100px"></div>
<!-- start -->
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="p-3 mb-2 bg-primary text-white"
				style="text-align: center; margin-bottom: 100px">
				<h2>
					<b>*** Payment Here ***</b>
				</h2>
			</div>
			<form action="paymentsubmit" class="form-group">
				<label for="cust_name">Customer Name</label><input type="text"
					name="cus_name" class="form-control" id="cust_name" /> <label
					for="cust_mobile">Mobile Number</label> <input type="number"
					name="cus_mobile" class="form-control" id="cust_mobile" /> <label
					for="cust_email">Email Address</label> <input type="email"
					name="cus_email" class="form-control" id="cust_email" /> <label
					for="cust_address">Customer Address</label>
				<textarea name="cus_address" class="form-control" id="cust_address"></textarea>
				<label for="country">Country</label> <input type="text"
					name="cus_country" class="form-control" id="country" /> <label
					for="city">City</label> <input type="text" name="city"
					class="form-control" id="city" /> <label for="state">State</label>
				<input type="text" name="cus_state" class="form-control" id="state" />
				<label for="currency">Currency Type</label><br /> <select
					class="form-control" id="currency" name="currency">
					<option value="bdt">BDT</option>
					<option value="usd">USD</option>
				</select> <br /> <br /> <label for="amount">Total Amount</label> <input
					type="number" name="total_amount" class="form-control" id="amount" /> <br />
				<h3>For Payment Through Card</h3>
				<label for="Card_Number">Card Number</label> <input type="number"
					name="Card_Number" class="form-control" id="Card_Number" /> <label
					for="Card_Name">Card Holder's Name</label> <input type="text"
					name="Card_Name" class="form-control" id="Card_Name" /> <label
					for="expiryDate">Expiry Date</label> <input type="date"
					name="expiryDate" class="form-control" id="expiryDate" /><br />
				<button type="submit" value="Pay" class="btn btn-block btn-primary">Pay Now</button>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<div style="margin-bottom: 100px"></div>

<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>