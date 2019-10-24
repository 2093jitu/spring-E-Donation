<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp"></jsp:include>
<!--================ Banner Area =================-->
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Join Us</h2>
				<div class="page_link">
					<a href="/">Home</a> <a href="/user/create">JOIN US</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->
<div class="container" style="margin-top: 50px">
	<div class="row">
		<div class="col-lg-3">
			<img class="img-fluid" src="/img/donation/d6.jpg" alt="" style="width: 100%;height: 900px">
		</div>

		<div class="col-lg-9" style="border: 2px solid;">
			<div class="row">
				<div class="col-lg-12">
					<h3 style="text-align: center; margin-top: 23px;">
						<b>GOIN OUR DONATION GROUP</b>
					</h3>
				</div>
			</div>

			<div class="row" style="margin-top: 15px">
				<div class="col-lg-12" style="background-color: #848484">
					<form ng-app="myApp" ng-controller="myCtrl">
						<div class="form-group">
							<label for="fullName"><b>Full Name</b></label> <input type="text"
								class="form-control" id="fullName" placeholder="Enter Full Name"
								ng-model="user.fullName" />
						</div>
						<div class="form-group">
							<label for="phNumber"><b>Phon Number</b></label> <input
								type="text" class="form-control" id="phNumber"
								placeholder="Enter Phon Number" ng-model="user.phon" />
						</div>

						<div class="form-group">
							<label for="email"><b>Email</b></label> <input type="text"
								class="form-control" id="email" placeholder="Enter Email"
								ng-model="user.email" />
						</div>

						<div class="form-group">
							<label for="address"><b>Address</b></label>
							<textarea calss="form-control" id="address" style="width: 100%"
								ng-model="user.address"></textarea>
						</div>

						<div class="form-group">
							<label for="gender"><b>Gender</b></label> <input type="text"
								class="form-control" id="gender" placeholder="Enter Gender"
								ng-model="user.gender" />
						</div>

						<div class="form-group">
							<label for="occupation"><b>Occupation</b></label> <input
								type="text" class="form-control" id="occupation"
								placeholder="Enter Occupation" ng-model="user.occupation" />
						</div>
						<div class="form-group">
							<label for="nationlity"><b>Nationlity</b></label><input
								type="text" class="form-control" id="nationlity"
								placeholder="Enter Nationlity" ng-model="user.nationlity" />
						</div>
						<div class="form-group">
							<label for="qus"><b>Why Are You Interested</b></label>
							<textarea calss="form-control" id="qus" style="width: 100%"
								ng-model="user.qus">
							</textarea>
						</div>

						<button type="submit" class="btn btn-primary"
							ng-click="createUser()">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div style="margin-bottom: 15px"></div>
<!--================Contact Area =================-->

<jsp:include page="../footer.jsp"></jsp:include>