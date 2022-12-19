<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="bootstrap_css_js.jsp"%>
<title>Student Form</title>
</head>
<body>
	<section class="h-100 bg-dark">
		<form id="myForm" action="SaveDetailsServlet" method="post">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-12">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Student registration form
										</h3>
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="fName" name="fName"
														class="form-control form-control-lg" /> <label
														class="form-label" for="fName"> First name </label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="lName" name="lName"
														class="form-control form-control-lg" /> <label
														class="form-label" for="lName"> Last name </label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="mName" name="mName"
														class="form-control form-control-lg" /> <label
														class="form-label" for="mName"> Mother's name </label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="faName" name="faName"
														class="form-control form-control-lg" /> <label
														class="form-label" for="faName"> Father's name </label>
												</div>
											</div>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="address" name="address"
												class="form-control form-control-lg" /> <label
												class="form-label" for="address"> Address </label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="phNumber" name="phNumber"
												class="form-control form-control-lg" /> <label
												class="form-label" for="phNumber"> Phone Number </label>
										</div>


										<div class="custom-file mb-4">
											<input type="file" class="custom-file-input" id="customFile">
											<label class="custom-file-label" for="customFile">Choose
												file</label> <label
												class="form-label" for="phNumber"> Upload Photograph </label>
										</div>






										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-4">
											<h6 class="mb-0 me-4">Gender:</h6>
											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="gender" value="female" /> <label
													class="form-check-label" for="femaleGender"> Female
												</label>
											</div>
											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="gender" value="male" /> <label
													class="form-check-label" for="maleGender"> Male </label>
											</div>
											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="gender"
													id="gender" value="other" /> <label
													class="form-check-label" for="otherGender"> Other </label>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 mb-4">
												<select class="select" name="state">
													<option value="State">District</option>
													<option value="Srinagar">Srinagar</option>
													<option value="Budgam">Budgam</option>
													<option value="Pulwama">Pulwama</option>
												</select>
											</div>
											<div class="col-md-6 mb-4">
												<select class="select" name="city">
													<option value="City">City</option>
													<option value="Srinagar">Srinagar</option>
													<option value="Islamabad">Islamabad</option>
													<option value="Sopore">Sopore</option>
												</select>
											</div>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="dob" name="dob"
												class="form-control form-control-lg" /> <label
												class="form-label" for="dob"> Date of Birth </label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="pincode" name="pincode"
												class="form-control form-control-lg" /> <label
												class="form-label" for="pincode"> Pincode </label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="course" name="course"
												class="form-control form-control-lg" /> <label
												class="form-label" for="course"> Course </label>
										</div>
										<div class="form-outline mb-4">
											<input type="text" id="email" name="email"
												class="form-control form-control-lg" /> <label
												class="form-label" for="email"> Email ID </label>
										</div>
										<div class="d-flex justify-content-end pt-3">
											<button type="button" value="Reset data" onClick="fun()"
												class="btn btn-outline-info btn-lg mr-3">Reset all</button>
											<button type="submit"
												class="btn btn-outline-primary btn-lg ms-2">Submit
												form</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>

	<script type="text/javascript">
		function fun() {
			document.getElementById("myForm").reset();
		}
	</script>

</body>
</html>