<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<div style="margin-top: 100px"></div>
<div class="container">
	<div class="p-3 mb-2 bg-success text-white" style="text-align: center;">
		<h2>
			<b>Reply Message</b>
		</h2>
	</div>
	<h1 style="text-align: center">${massage}</h1>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<form action="/replymassage" method="post" style="margin-top: 50px">
						<div class="row">
							<div class="col-md-12">
								<label for="email">Email :</label> <input type="text"
									class="form-control" name="email" value="${email}" id="email">
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
								<textarea class="form-control" placeholder="Write Email Body..."
									name="body" id="body"></textarea>
							</div>
						</div>
						<div class="row" style="margin-top: 15px">
							<div class="col-md-12">
								<button type="submit" class="btn btn-block btn-primary"
									class="form-control">Send Email</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>