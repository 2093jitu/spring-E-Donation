<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" />
<script src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
</head>
<body>
	<div style="margin-top: 50px"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<div class="collapse navbar-collapse" id="navbarSupportedContent"
						style="padding: 0px 0px 0px 100px;">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="navbar-brand"
								href="<c:url value='/adminHome'/>">HOME</a></li>
							<li class="nav-item active"><a class="navbar-brand"
								href="<c:url value='/admindonation'/>">Donation</a></li>
							<li class="nav-item active"><a class="navbar-brand"
								href="<c:url value='/adminbloodDonation'/>">Blood Donation</a></li>
							<li class="nav-item active"><a class="navbar-brand"
								href="<c:url value='/volunteer'/>">Volunteer</a></li>
							<li class="nav-item"><a class="navbar-brand"
								href="<c:url value='/teammemberadmin'/>">Team-Member</a></li>
								<li class="nav-item"><a class="navbar-brand"
								href="<c:url value='/contactAdmin'/>">Massage</a></li>								
								<li class="nav-item"><a class="navbar-brand"
								href="<c:url value='/donationUser'/>">Donation User</a></li>								
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Dropdown </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="<c:url value='/bloodreport'/>">Action</a> <a
										class="dropdown-item" href="<c:url value='/'/>">Front End</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="<c:url value='/logout'/>">Log Out</a>
								</div>
								</li>
								<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Faoundation </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Create Fand</a> <a
										class="dropdown-item" href="<c:url value='/'/>">Collection Fand</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="<c:url value='/logout'/>">Log Out</a>
								</div>
								</li>
							<li class="nav-item"><a class="nav-link disabled" href="#"
								tabindex="-1" aria-disabled="true">Disabled</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>