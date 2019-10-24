<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e1.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e2.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e1.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e2.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e1.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="single_event">
					<div class="row">
						<div class="col-lg-6 col-md-5">
							<figure>
								<img class="img-fluid w-100" src="../img/donation/e2.jpg" alt="">
								<div class="img-overlay"></div>
							</figure>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="content_wrapper">
								<p class="date_time">25th February, 2017</p>
								<h4 class="title">
									<a href="event-details.html">The Universe Through A Child S
										Eyes</a>
								</h4>
								<p>For most of us, the idea of astronomy is something we
									directly connect to “stargazing”, telescopes and seeing</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h1 align="center" style="margin-top: 130px;">Register Now For
			Join Our Events</h1>
		<hr></hr>
		<div class="row">

			<div class="col-lg-12 style="margin-top: 50px;">
				<form ng-app="eventApp" ng-controller="myEventCtrl">
					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputFN">First Name</label> <input
							type="text" class="form-control" id="formGroupExampleInputFN"
							placeholder="Write Yout First Name" ng-model="joinEvent.fastName" />
					</div>
					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputSN">SurName</label> <input
							type="text" class="form-control" id="formGroupExampleInputSN"
							placeholder="Write Your SurName" ng-model="joinEvent.surName" />
					</div>
					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputDOB">Date of Birth</label> <input
							type="date" class="form-control" id="formGroupExampleInputDOB"
							name="dob-start" value="yyyy-MM-dd" min="1900-01-01"
							max="2100-12-31" ng-model="joinEvent.dob">
					</div>

					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputEM">Email</label> <input
							type="email" class="form-control" id="formGroupExampleInputEM"
							placeholder="Write Your E-mail Address"
							ng-model="joinEvent.email">
					</div>
					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputCN">Contact Number</label> <input
							type="text" class="form-control" id="formGroupExampleInputCN"
							placeholder="Write Your number"
							ng-model="joinEvent.contactNumber">
					</div>
					<div class="form-group" style="width: 80%">

						<label for="formGroupExampleInputAdd">Address</label>
						<textarea rows="3" cols="6" class="form-control"
							id="formGroupExampleInputAdd" placeholder="Write Your Address"
							ng-model="joinEvent.address">
                        </textarea>
					</div>
					<div class="form-group" style="width: 80%">

						<label for="formGroupExampleInputDep">Occapation</label> <input
							type="text" class="form-control" id="formGroupExampleInputDep"
							placeholder="Write Your Occopation"
							ng-model="joinEvent.occapation">
					</div>
					<div class="form-group" style="width: 80%">
						<label for="formGroupExampleInputDes">Nationlity</label> <input
							type="text" class="form-control" id="formGroupExampleInputDes"
							placeholder="Write Your Nationlity"
							ng-model="joinEvent.nationlity">
					</div>
					<div class="form-group" style="width: 80%">

						<label for="formGroupExampleInputST">Event Name</label> <input
							type="text" class="form-control" id="formGroupExampleInputST"
							placeholder="Write Liked Event Name"
							ng-model="joinEvent.eventName">
					</div>
					
				</form>
			</div>

			<div class="col-lg-2"></div>
		</div>

	</div>
</section>
<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>