<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/Patient.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


</head>
<body>
	<h2 style="color: #0D3660;">
		<center>Patient Management</center>
	</h2>
	<hr>
	<div class="container">
		<table class="table table-striped">
			<tbody>
				<tr>
					<td colspan="1">
						<form id="formPatient" name="formPatient" class="well form-horizontal">
							<fieldset>
								<div class="form-group">
									<label class="col-md-4 control-label">NIC</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-user"></i></span><input id="PatientNIC"
												name="PatientNIC" placeholder="NIC" class="form-control"
												required="true" value="" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">First Name</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-user"></i></span><input
												id="PatientFName" name="PatientFName"
												placeholder="First Name" class="form-control"
												required="true" value="" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">Last Name</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-user"></i></span><input
												id="PatientLName" name="PatientLName"
												placeholder="Last Name" class="form-control" required="true"
												value="" type="text">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">Gender</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-user"></i></span> <select
												id='PatientGender' name="PatientGender">
												<option selected value=''>Gender</option>
												<option value='Male'>Male</option>
												<option value='Female'>Female</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">Phone Number</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-earphone"></i></span><input
												id="PatientPhone" name="PatientPhone"
												placeholder="Phone Number" class="form-control"
												required="true" value="" type="text">
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label">Blood Group</label>
									<div class="col-md-8 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-tint"></i></span> <select
												id='PatientBloodGroup' name="PatientBloodGroup">
												<option selected value=''>Blood Group</option>
												<option value='AP'>A+</option>
												<option value='OP'>O+</option>
												<option value='BP'>B+</option>
												<option value='ABP'>AB+</option>
												<option value='AN'>A-</option>
												<option value='ON'>O-</option>
												<option value='BN'>B-</option>
												<option value='ABN'>AB-</option>
											</select>
										</div>
									</div>
								</div>
								
								
								<div class="form-group">
										<label class="col-md-4 control-label">Marital Status</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span> <select
													id='PatientMaritalStatus' name="PatientMaritalStatus">
													<option selected value=''>Marital Status</option>
													<option value='Single'>Single</option>
													<option value='Married'>Married</option>
												</select>
											</div>
										</div>
									</div>

								

								<div class="form-group">
										<label class="col-md-4 control-label">Address Line 1</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="Patient_Add_Line1" name="Patient_Add_Line1"
													placeholder="Address Line 1" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 2</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="Patient_Add_Line2" name="Patient_Add_Line2"
													placeholder="Address Line 2" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 3</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="Patient_Add_Line3" name="Patient_Add_Line3"
													placeholder="Address Line 3" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">City</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="Patient_Add_City" name="Patient_Add_City"
													placeholder="City" class="form-control" required="true"
													value="" type="text">
											</div>
										</div>
									</div>



									<div class="form-group">
									<label class="col-md-4 control-label">Date of Birth</label><br>
									<div class="col-md-8 inputGroupContainer">
										Year
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span>
												<input
												id="PatientDOB_year" name="PatientDOB_year"
												placeholder="Year" class="form-control" required="true"
												value="" type="number">
												
										</div>
										Month
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span> <select
												id='PatientDOB_month' name="PatientDOB_month">
												<option selected value=''>Month</option>
												<option value='January'>January</option>
												<option value='February'>February</option>
												<option value='March'>March</option>
												<option value='April'>April</option>
												<option value='May'>May</option>
												<option value='June'>June</option>
												<option value='July'>July</option>
												<option value='August'>August</option>
												<option value='September'>September</option>
												<option value='October'>October</option>
												<option value='November'>November</option>
												<option value='December'>December</option>
											</select>
										</div>
										Date
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span><input
												id="PatientDOB_day" name="PatientDOB_day" placeholder="Date"
												class="form-control" required="true" value="" type="number">
										</div>

									</div>

								</div>


							</fieldset>
						</form>
					<td colspan="1">
						<form class="well form-horizontal">
							<fieldset>
								<div class="form-group">


									
									
									


									<div class="form-group">
										<label class="col-md-4 control-label">Email</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-envelope"></i></span><input
													id="PatientEmail" name="PatientEmail" placeholder="Email"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Username</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span><input
													id="PatientUsername" name="PatientUsername"
													placeholder="Username" class="form-control" required="true"
													value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Password</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-lock"></i></span><input
													id="PatientPassword" name="PatientPassword"
													placeholder="Password" class="form-control" required="true"
													value="" type="password">
											</div>
										</div>
									</div>
									<br> <br>

									<center>
										<input id="btnSave" name="btnSave" type="button" value="Save"
											class="btn btn-primary"> <input type="hidden"
											id="hidItemIDSave" name="hidItemIDSave" value="">
									</center>
							</fieldset>


						</form>
					</td>

				</tr>

			</tbody>
		</table>

		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		<br>
		
		
	

		<div class="col-md-8">

			<div class="container">

				<h3 style="color: #0D3660;">
					Patient Table
				</h3>
				<table class="table table-striped" id="patientTable">
					<thead>
						<tr>
							<th>PID</th>
							<th>NIC</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Gender</th>
							<th>Phone</th>
							<th>Blood Group</th>
							<th>Marital Status</th>
							<th>Address Line 1</th>
							<th>Address Line 2</th>
							<th>Address Line 3</th>
							<th>City</th>
							<th>DOB_Year</th>
							<th>DOB_Month</th>
							<th>DOB_Date</th>
							<th>Email</th>
							<th>Username</th>
							<th>Password</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>


	</div>
</body>
</html>