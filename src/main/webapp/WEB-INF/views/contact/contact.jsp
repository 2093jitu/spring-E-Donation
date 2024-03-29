
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--================Header Menu Area =================-->
<jsp:include page="../header.jsp"></jsp:include>
<!--================ Banner Area =================-->
<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>Contact Us</h2>
				<div class="page_link">
					<a href="index.html">Home</a> <a href="contact.html">Contact</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Banner Area =================-->

<!--================Contact Area =================-->
<section class="contact_area p_120">
	<div class="container">
		<div id="mapBox" class="mapBox"></div>
		<div class="row">
			<div class="col-lg-3">
				<div class="contact_info">
					<div class="info_item">
						<i class="lnr lnr-home"></i>
						<h6>California, United States</h6>
						<p>Santa monica bullevard</p>
					</div>
					<div class="info_item">
						<i class="lnr lnr-phone-handset"></i>
						<h6>
							<a href="#">00 (440) 9865 562</a>
						</h6>
						<p>Mon to Fri 9am to 6 pm</p>
					</div>
					<div class="info_item">
						<i class="lnr lnr-envelope"></i>
						<h6>
							<a href="#">support@colorlib.com</a>
						</h6>
						<p>Send us your query anytime!</p>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<form class="row contact_form" action="<c:url value='massageSend'/>"
					method="post" id="contactForm" novalidate="novalidate">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Enter your name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Enter email address">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="subject"
								name="subject" placeholder="Enter Subject">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<textarea class="form-control" name="message" id="message"
								rows="1" placeholder="Enter Message"></textarea>
						</div>
					</div>
					<div class="col-md-12 text-right">
						<button type="submit" value="submit" class="btn submit_btn">Send
							Message</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================Contact Area =================-->

<!--================ Start Footer Area  =================-->
<jsp:include page="../footer.jsp"></jsp:include>
<!--================ End Footer Area  =================-->

<!--================Contact Success and Error message Area =================-->
<div id="success" class="modal modal-message fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<i class="fa fa-close"></i>
				</button>
				<h2>Thank you</h2>
				<p>Your message is successfully sent...</p>
			</div>
		</div>
	</div>
</div>

<!-- Modals error -->

<div id="error" class="modal modal-message fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<i class="fa fa-close"></i>
				</button>
				<h2>Sorry !</h2>
				<p>Something went wrong</p>
			</div>
		</div>
	</div>
</div>
<!--================End Contact Success and Error message Area =================-->

