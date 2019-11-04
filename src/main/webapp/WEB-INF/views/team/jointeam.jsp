<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp"></jsp:include>
<section class="recent_event section_gap_custom"> 
	<div class="container">
		<div class="row">
			<div class="col-md-">
				<form action="fileUploadAir.htm" method="POST"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="pic">Picture</label> <input type="file" id="pic"
							class="form-control" name="imageFile">
					</div>
					<input type="submit" value="CONFIRM"
						class="btn btn-block btn-primary">
				</form>
			</div>
		</div>
		<div class="row" style="margin-top: 10px; margin-left: -4px">
			<form action="/join" method="post">
				<div class="row wls-contact-mid">
					<div class="col-md-12 col-sm-12 form-group contact-forms">
						<input type="text" class="form-control"
							placeholder="Enter Your Full Name" name="fullName">
					</div>
					
				</div>
				
				<div class="row wls-contact-mid">
					<div class="col-md-6 col-sm-6 ">
						<span>Gender:</span> <input type="radio" value="Male"
							name="gender">Male <input type="radio" value="Female"
							name="gender">Female <input type="radio" value="Other"
							name="gender">Other
					</div>
					<div class="col-md-6 col-sm-6 form-group contact-forms">
						<select class="form-control" name="countryName">
							<option>## Select Country Name ##</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="India">India</option>
							<option value="Napal">Napal</option>
							<option value="Japan">Japan</option>
							<option value="UAE">UAE</option>
						</select>
					</div>
				</div>
				<div class="row agile-wls-contact-mid">
					<div class="col-md-6 col-sm-6 form-group contact-forms">
						<span>Date Of Birth</span> <input type="date" class="form-control"
							placeholder="Date Of Birth" required="" name="birthDate">
					</div>
					<div class="col-md-6 col-sm-6 form-group contact-forms">
						<span>Occupation</span> <select class="form-control"
							name="occupation">
							<option>## Select your Occupation ##</option>
							<option value="Student">"Student"</option>
							<option value="Job holder">ob holder</option>
						</select>
					</div>
				</div>
				<div class="form-group ">
					<textarea class="form-control" placeholder="Address..." required=""
						name="address"></textarea>
				</div>
				<div class="form-group ">
					<textarea class="form-control"
						placeholder="Why Are You Intersted To Join Our Team..."
						required="" name="qus"></textarea>
				</div>
				<div class="form-group ">
					<input type="text" name="profilepic" value="${img}"
						class="form-control" placeholder="Profile Picture"></input>
				</div>
				<button type="submit" class="btn btn-block btn-danger">Save</button>
			</form>
		</div>

		<div class="row">
			<c:forEach var="mamber" items="${teammamber}">
				<div class="card mb-3" style="max-width: 540px; margin: 10px;">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="../img/teammemberpic/${mamber.profilepic}" class="card-img" alt="..." width="100%">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">${mamber.id}</h5>
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<p class="card-text">
									<small class="text-muted">Last updated 3 mins ago</small>
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<!--================ End Recent Event Area =================-->
<jsp:include page="../footer.jsp"></jsp:include>